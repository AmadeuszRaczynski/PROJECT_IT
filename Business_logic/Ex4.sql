/*A mechanism for generating a list of subscribers whose subscription expires earlier than the defined 
limits.*/


CREATE OR REPLACE PACKAGE subscriber_pkg IS
  TYPE subscriber_list IS TABLE OF subscriptions.applicant_id%TYPE;
  FUNCTION get_subscriber_list (max_days NUMBER) RETURN subscriber_list PIPELINED;
END subscriber_pkg;
/

CREATE OR REPLACE PACKAGE BODY subscriber_pkg IS
  FUNCTION get_subscriber_list (max_days NUMBER) RETURN subscriber_list PIPELINED IS
    l_sub_list subscriber_list := subscriber_list(); -- initialization of a nested table collection with a constructor
  BEGIN
    FOR i IN (SELECT applicant_id FROM subscriptions WHERE expiration_date - SYSDATE <= max_days) LOOP
      l_sub_list.EXTEND; -- extension of the collection
      l_sub_list(l_sub_list.COUNT) := i.applicant_id; -- assigning successive id values to the collection
    END LOOP;
    FOR j IN 1..l_sub_list.COUNT LOOP -- PIPE ROW instruction, puts the next result element into the stream
      PIPE ROW(l_sub_list(j));
    END LOOP;
    RETURN;
  END get_subscriber_list;
END subscriber_pkg;
/

SELECT * FROM TABLE(subscriber_pkg.get_subscriber_list(max_days)); -- Program call


-- Program call with first_name and last_name of the applicant for max_days is 10
SELECT a.first_name, a.last_name, applicant_id
FROM applicants a
WHERE applicant_id IN (
SELECT * FROM TABLE(subscriber_pkg.get_subscriber_list(10)));

/*Funkcja pipelined to specjalny rodzaj funkcji w PL/SQL, która pozwala na zwrócenie wyników w postaci
strumienia (ang. stream) zamiast tradycyjnego zbioru (ang. set).
Funkcja pipelined składa się z dwóch części - deklaracji i ciała. 
W deklaracji określa się typ zwracanych danych, a w ciele definiuje się logikę przetwarzania tych danych.
W ciele funkcji zamiast użyć polecenia RETURN, używa się instrukcji PIPE ROW, która umieszcza w strumieniu 
kolejny element wynikowy.
Dzięki temu mechanizmowi funkcja pipelined może działać w czasie rzeczywistym, zwracając wyniki na bieżąco 
w momencie, gdy są one gotowe. Jest to szczególnie przydatne w przypadku dużych zbiorów danych, g
dy tradycyjne zwracanie wyników w postaci zbioru może być czasochłonne i wymagać znacznych zasobów 
systemowych.*/
