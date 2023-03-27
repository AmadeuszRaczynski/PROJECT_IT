--------------------------------------------------------
--  File created - Thursday-March-23-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table APPLICANTS
--------------------------------------------------------

  CREATE TABLE "APPLICANTS" 
   (	"APPLICANT_ID" NUMBER(*,0), 
	"FIRST_NAME" VARCHAR2(20 BYTE), 
	"LAST_NAME" VARCHAR2(25 BYTE), 
	"EMAIL" VARCHAR2(25 BYTE), 
	"PHONE_NUMBER" VARCHAR2(20 BYTE), 
	"LOCATION_ID" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table APPLICANTS_EXPERIENCES
--------------------------------------------------------

  CREATE TABLE "APPLICANTS_EXPERIENCES" 
   (	"APPLICANT_ID" NUMBER(*,0), 
	"EXPERIENCE_ID" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table APPLICANTS_INTERESTS
--------------------------------------------------------

  CREATE TABLE "APPLICANTS_INTERESTS" 
   (	"APPLICANT_ID" NUMBER(*,0), 
	"INTERESTS_ID" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table APPLICANTS_SKILLS
--------------------------------------------------------

  CREATE TABLE "APPLICANTS_SKILLS" 
   (	"APPLICANT_ID" NUMBER(*,0), 
	"SKILL_ID" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table COUNTRIES
--------------------------------------------------------

  CREATE TABLE "COUNTRIES" 
   (	"COUNTRY_ID" CHAR(2 BYTE), 
	"COUNTRY_NAME" VARCHAR2(40 BYTE), 
	"REGION_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table EXPERIENCES
--------------------------------------------------------

  CREATE TABLE "EXPERIENCES" 
   (	"EXPERIENCE_ID" NUMBER(*,0), 
	"JOB_TITLE" VARCHAR2(40 BYTE), 
	"LOCATION_ID" NUMBER(*,0), 
	"START_DATE" DATE, 
	"END_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table INTERESTS
--------------------------------------------------------

  CREATE TABLE "INTERESTS" 
   (	"INTEREST_ID" NUMBER(*,0), 
	"INTEREST_NAME" VARCHAR2(40 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table LOCATIONS
--------------------------------------------------------

  CREATE TABLE "LOCATIONS" 
   (	"LOCATION_ID" NUMBER(4,0), 
	"STREET_ADDRESS" VARCHAR2(40 BYTE), 
	"POSTAL_CODE" VARCHAR2(12 BYTE), 
	"CITY" VARCHAR2(30 BYTE), 
	"STATE_PROVINCE" VARCHAR2(25 BYTE), 
	"COUNTRY_ID" CHAR(2 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table ORDER_PAYMENTS
--------------------------------------------------------

  CREATE TABLE "ORDER_PAYMENTS" 
   (	"PAYMENT_ID" NUMBER(*,0), 
	"PAYMENT_DATE" DATE, 
	"SUBSCRIPTION_ID" NUMBER(*,0), 
	"STATUS" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table PRODUCTS
--------------------------------------------------------

  CREATE TABLE "PRODUCTS" 
   (	"PRODUCT_ID" NUMBER(*,0), 
	"PRODUCT_NAME" VARCHAR2(20 BYTE), 
	"LASTING" NUMBER, 
	"PRICE" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table REGIONS
--------------------------------------------------------

  CREATE TABLE "REGIONS" 
   (	"REGION_ID" NUMBER, 
	"REGION_NAME" VARCHAR2(25 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table SKILLS
--------------------------------------------------------

  CREATE TABLE "SKILLS" 
   (	"SKILL_ID" NUMBER(*,0), 
	"SKILL_NAME" VARCHAR2(30 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table SUBSCRIPTIONS
--------------------------------------------------------

  CREATE TABLE "SUBSCRIPTIONS" 
   (	"SUBSCRIPTION_ID" NUMBER(*,0), 
	"ORDER_DATE" DATE, 
	"APPLICANT_ID" NUMBER(*,0), 
	"PRODUCT_ID" NUMBER(*,0), 
	"STATUS" VARCHAR2(20 BYTE) DEFAULT 'new'
   ) ;
REM INSERTING into APPLICANTS
SET DEFINE OFF;
Insert into APPLICANTS (APPLICANT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,LOCATION_ID) values (100,'Steven','King','SKING','515.123.4567',1100);
Insert into APPLICANTS (APPLICANT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,LOCATION_ID) values (101,'Neena','Kochhar','NKOCHHAR','515.123.4568',1300);
Insert into APPLICANTS (APPLICANT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,LOCATION_ID) values (102,'Lex','De Haan','LDEHAAN','515.123.4569',1500);
Insert into APPLICANTS (APPLICANT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,LOCATION_ID) values (103,'Alexander','Hunold','AHUNOLD','590.423.4567',2000);
Insert into APPLICANTS (APPLICANT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,LOCATION_ID) values (104,'Bruce','Ernst','BERNST','590.423.4568',3000);
Insert into APPLICANTS (APPLICANT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,LOCATION_ID) values (105,'David','Austin','DAUSTIN','590.423.4569',3200);
Insert into APPLICANTS (APPLICANT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,LOCATION_ID) values (106,'Valli','Pataballa','VPATABAL','590.423.4560',1500);
Insert into APPLICANTS (APPLICANT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,LOCATION_ID) values (107,'Diana','Lorentz','DLORENTZ','590.423.5567',1700);
Insert into APPLICANTS (APPLICANT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,LOCATION_ID) values (108,'Nancy','Greenberg','NGREENBE','515.124.4569',2100);
Insert into APPLICANTS (APPLICANT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,LOCATION_ID) values (109,'Daniel','Faviet','DFAVIET','515.124.4169',1100);
Insert into APPLICANTS (APPLICANT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,LOCATION_ID) values (110,'John','Chen','JCHEN','515.124.4269',1900);
Insert into APPLICANTS (APPLICANT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,LOCATION_ID) values (111,'Ismael','Sciarra','ISCIARRA','515.124.4369',2300);
Insert into APPLICANTS (APPLICANT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,LOCATION_ID) values (112,'Jose Manuel','Urman','JMURMAN','515.124.4469',3200);
Insert into APPLICANTS (APPLICANT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,LOCATION_ID) values (113,'Luis','Popp','LPOPP','515.124.4567',1600);
Insert into APPLICANTS (APPLICANT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,LOCATION_ID) values (114,'Den','Raphaely','DRAPHEAL','515.127.4561',3000);
Insert into APPLICANTS (APPLICANT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,LOCATION_ID) values (115,'Alexander','Khoo','AKHOO','515.127.4562',2300);
Insert into APPLICANTS (APPLICANT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,LOCATION_ID) values (116,'Shelli','Baida','SBAIDA','515.127.4563',1800);
Insert into APPLICANTS (APPLICANT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,LOCATION_ID) values (117,'Sigal','Tobias','STOBIAS','515.127.4564',2400);
Insert into APPLICANTS (APPLICANT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,LOCATION_ID) values (118,'Guy','Himuro','GHIMURO','515.127.4565',1700);
Insert into APPLICANTS (APPLICANT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,LOCATION_ID) values (119,'Karen','Colmenares','KCOLMENA','515.127.4566',2200);
Insert into APPLICANTS (APPLICANT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,LOCATION_ID) values (120,'Matthew','Weiss','MWEISS','650.123.1234',2900);
REM INSERTING into APPLICANTS_EXPERIENCES
SET DEFINE OFF;
Insert into APPLICANTS_EXPERIENCES (APPLICANT_ID,EXPERIENCE_ID) values (100,1);
Insert into APPLICANTS_EXPERIENCES (APPLICANT_ID,EXPERIENCE_ID) values (103,3);
Insert into APPLICANTS_EXPERIENCES (APPLICANT_ID,EXPERIENCE_ID) values (104,6);
Insert into APPLICANTS_EXPERIENCES (APPLICANT_ID,EXPERIENCE_ID) values (105,4);
Insert into APPLICANTS_EXPERIENCES (APPLICANT_ID,EXPERIENCE_ID) values (110,2);
Insert into APPLICANTS_EXPERIENCES (APPLICANT_ID,EXPERIENCE_ID) values (110,5);
Insert into APPLICANTS_EXPERIENCES (APPLICANT_ID,EXPERIENCE_ID) values (111,9);
Insert into APPLICANTS_EXPERIENCES (APPLICANT_ID,EXPERIENCE_ID) values (112,7);
Insert into APPLICANTS_EXPERIENCES (APPLICANT_ID,EXPERIENCE_ID) values (118,8);
REM INSERTING into APPLICANTS_INTERESTS
SET DEFINE OFF;
Insert into APPLICANTS_INTERESTS (APPLICANT_ID,INTERESTS_ID) values (100,2);
Insert into APPLICANTS_INTERESTS (APPLICANT_ID,INTERESTS_ID) values (100,4);
Insert into APPLICANTS_INTERESTS (APPLICANT_ID,INTERESTS_ID) values (101,1);
Insert into APPLICANTS_INTERESTS (APPLICANT_ID,INTERESTS_ID) values (101,4);
Insert into APPLICANTS_INTERESTS (APPLICANT_ID,INTERESTS_ID) values (102,9);
Insert into APPLICANTS_INTERESTS (APPLICANT_ID,INTERESTS_ID) values (103,18);
Insert into APPLICANTS_INTERESTS (APPLICANT_ID,INTERESTS_ID) values (104,5);
Insert into APPLICANTS_INTERESTS (APPLICANT_ID,INTERESTS_ID) values (110,4);
Insert into APPLICANTS_INTERESTS (APPLICANT_ID,INTERESTS_ID) values (110,5);
Insert into APPLICANTS_INTERESTS (APPLICANT_ID,INTERESTS_ID) values (110,8);
Insert into APPLICANTS_INTERESTS (APPLICANT_ID,INTERESTS_ID) values (110,9);
Insert into APPLICANTS_INTERESTS (APPLICANT_ID,INTERESTS_ID) values (110,20);
Insert into APPLICANTS_INTERESTS (APPLICANT_ID,INTERESTS_ID) values (111,8);
Insert into APPLICANTS_INTERESTS (APPLICANT_ID,INTERESTS_ID) values (111,18);
Insert into APPLICANTS_INTERESTS (APPLICANT_ID,INTERESTS_ID) values (111,21);
Insert into APPLICANTS_INTERESTS (APPLICANT_ID,INTERESTS_ID) values (112,4);
Insert into APPLICANTS_INTERESTS (APPLICANT_ID,INTERESTS_ID) values (112,7);
Insert into APPLICANTS_INTERESTS (APPLICANT_ID,INTERESTS_ID) values (118,8);
Insert into APPLICANTS_INTERESTS (APPLICANT_ID,INTERESTS_ID) values (118,10);
Insert into APPLICANTS_INTERESTS (APPLICANT_ID,INTERESTS_ID) values (120,4);
Insert into APPLICANTS_INTERESTS (APPLICANT_ID,INTERESTS_ID) values (120,8);
REM INSERTING into APPLICANTS_SKILLS
SET DEFINE OFF;
Insert into APPLICANTS_SKILLS (APPLICANT_ID,SKILL_ID) values (100,1);
Insert into APPLICANTS_SKILLS (APPLICANT_ID,SKILL_ID) values (100,2);
Insert into APPLICANTS_SKILLS (APPLICANT_ID,SKILL_ID) values (104,5);
Insert into APPLICANTS_SKILLS (APPLICANT_ID,SKILL_ID) values (110,4);
Insert into APPLICANTS_SKILLS (APPLICANT_ID,SKILL_ID) values (110,5);
Insert into APPLICANTS_SKILLS (APPLICANT_ID,SKILL_ID) values (110,8);
Insert into APPLICANTS_SKILLS (APPLICANT_ID,SKILL_ID) values (110,9);
Insert into APPLICANTS_SKILLS (APPLICANT_ID,SKILL_ID) values (111,8);
Insert into APPLICANTS_SKILLS (APPLICANT_ID,SKILL_ID) values (111,18);
Insert into APPLICANTS_SKILLS (APPLICANT_ID,SKILL_ID) values (112,4);
Insert into APPLICANTS_SKILLS (APPLICANT_ID,SKILL_ID) values (112,7);
Insert into APPLICANTS_SKILLS (APPLICANT_ID,SKILL_ID) values (118,8);
Insert into APPLICANTS_SKILLS (APPLICANT_ID,SKILL_ID) values (118,10);
Insert into APPLICANTS_SKILLS (APPLICANT_ID,SKILL_ID) values (120,4);
REM INSERTING into COUNTRIES
SET DEFINE OFF;
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('IT','Italy',1);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('JP','Japan',3);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('US','United States of America',2);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('CA','Canada',2);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('CN','China',3);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('IN','India',3);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('AU','Australia',3);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('ZW','Zimbabwe',4);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('SG','Singapore',3);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('UK','United Kingdom',1);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('FR','France',1);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('DE','Germany',1);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('ZM','Zambia',4);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('EG','Egypt',4);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('BR','Brazil',2);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('CH','Switzerland',1);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('NL','Netherlands',1);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('MX','Mexico',2);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('KW','Kuwait',4);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('IL','Israel',4);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('DK','Denmark',1);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('ML','Malaysia',3);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('NG','Nigeria',4);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('AR','Argentina',2);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('BE','Belgium',1);
REM INSERTING into EXPERIENCES
SET DEFINE OFF;
Insert into EXPERIENCES (EXPERIENCE_ID,JOB_TITLE,LOCATION_ID,START_DATE,END_DATE) values (1,'Officer in the Army',1000,to_date('16-AUG-21','DD-MON-RR'),to_date('16-AUG-22','DD-MON-RR'));
Insert into EXPERIENCES (EXPERIENCE_ID,JOB_TITLE,LOCATION_ID,START_DATE,END_DATE) values (2,'Officer in the Army',1000,to_date('16-AUG-21','DD-MON-RR'),to_date('16-AUG-22','DD-MON-RR'));
Insert into EXPERIENCES (EXPERIENCE_ID,JOB_TITLE,LOCATION_ID,START_DATE,END_DATE) values (3,'Clerk in Pitney Bowes',1100,to_date('16-JUN-20','DD-MON-RR'),null);
Insert into EXPERIENCES (EXPERIENCE_ID,JOB_TITLE,LOCATION_ID,START_DATE,END_DATE) values (4,'NCOS in the Army',1200,to_date('10-MAY-18','DD-MON-RR'),to_date('09-MAY-21','DD-MON-RR'));
Insert into EXPERIENCES (EXPERIENCE_ID,JOB_TITLE,LOCATION_ID,START_DATE,END_DATE) values (5,'Menager in Amazon',1300,to_date('16-AUG-98','DD-MON-RR'),to_date('10-APR-20','DD-MON-RR'));
Insert into EXPERIENCES (EXPERIENCE_ID,JOB_TITLE,LOCATION_ID,START_DATE,END_DATE) values (6,'Programmer in JustJoinIT',1400,to_date('16-OCT-22','DD-MON-RR'),null);
Insert into EXPERIENCES (EXPERIENCE_ID,JOB_TITLE,LOCATION_ID,START_DATE,END_DATE) values (7,'Marketing Representative in Allegro',1500,to_date('16-FEB-05','DD-MON-RR'),to_date('10-JAN-23','DD-MON-RR'));
Insert into EXPERIENCES (EXPERIENCE_ID,JOB_TITLE,LOCATION_ID,START_DATE,END_DATE) values (8,'Shipping Clerk in DHL',1600,to_date('01-FEB-01','DD-MON-RR'),to_date('01-FEB-20','DD-MON-RR'));
Insert into EXPERIENCES (EXPERIENCE_ID,JOB_TITLE,LOCATION_ID,START_DATE,END_DATE) values (9,'Accountant',1700,to_date('01-JAN-01','DD-MON-RR'),null);
REM INSERTING into INTERESTS
SET DEFINE OFF;
Insert into INTERESTS (INTEREST_ID,INTEREST_NAME) values (1,'FOOTBALL');
Insert into INTERESTS (INTEREST_ID,INTEREST_NAME) values (2,'TENIS');
Insert into INTERESTS (INTEREST_ID,INTEREST_NAME) values (3,'COMPUTER GAMES');
Insert into INTERESTS (INTEREST_ID,INTEREST_NAME) values (4,'JOGING');
Insert into INTERESTS (INTEREST_ID,INTEREST_NAME) values (5,'HISTORY');
Insert into INTERESTS (INTEREST_ID,INTEREST_NAME) values (6,'GEOPOLITCS');
Insert into INTERESTS (INTEREST_ID,INTEREST_NAME) values (7,'NEW TECHNOLOGY');
Insert into INTERESTS (INTEREST_ID,INTEREST_NAME) values (8,'POLITICS');
Insert into INTERESTS (INTEREST_ID,INTEREST_NAME) values (9,'MILITARY');
Insert into INTERESTS (INTEREST_ID,INTEREST_NAME) values (10,'NULL');
Insert into INTERESTS (INTEREST_ID,INTEREST_NAME) values (11,'TRAVELING');
Insert into INTERESTS (INTEREST_ID,INTEREST_NAME) values (12,'READING');
Insert into INTERESTS (INTEREST_ID,INTEREST_NAME) values (13,'PLAYING GAMES');
Insert into INTERESTS (INTEREST_ID,INTEREST_NAME) values (14,'LITERATURE');
Insert into INTERESTS (INTEREST_ID,INTEREST_NAME) values (15,'Photography');
Insert into INTERESTS (INTEREST_ID,INTEREST_NAME) values (16,'FISHING');
Insert into INTERESTS (INTEREST_ID,INTEREST_NAME) values (17,'SAILING');
Insert into INTERESTS (INTEREST_ID,INTEREST_NAME) values (18,'SPORT');
Insert into INTERESTS (INTEREST_ID,INTEREST_NAME) values (19,'BLOGGING');
Insert into INTERESTS (INTEREST_ID,INTEREST_NAME) values (20,'CERAMICS');
Insert into INTERESTS (INTEREST_ID,INTEREST_NAME) values (21,'COOKING');
REM INSERTING into LOCATIONS
SET DEFINE OFF;
Insert into LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (1000,'1297 Via Cola di Rie','00989','Roma',null,'IT');
Insert into LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (1100,'93091 Calle della Testa','10934','Venice',null,'IT');
Insert into LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (1200,'2017 Shinjuku-ku','1689','Tokyo','Tokyo Prefecture','JP');
Insert into LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (1300,'9450 Kamiya-cho','6823','Hiroshima',null,'JP');
Insert into LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US');
Insert into LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (1500,'2011 Interiors Blvd','99236','South San Francisco','California','US');
Insert into LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (1600,'2007 Zagora St','50090','South Brunswick','New Jersey','US');
Insert into LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (1700,'2004 Charade Rd','98199','Seattle','Washington','US');
Insert into LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA');
Insert into LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (1900,'6092 Boxwood St','YSW 9T2','Whitehorse','Yukon','CA');
Insert into LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (2000,'40-5-12 Laogianggen','190518','Beijing',null,'CN');
Insert into LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (2100,'1298 Vileparle (E)','490231','Bombay','Maharashtra','IN');
Insert into LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (2200,'12-98 Victoria Street','2901','Sydney','New South Wales','AU');
Insert into LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (2300,'198 Clementi North','540198','Singapore',null,'SG');
Insert into LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (2400,'8204 Arthur St',null,'London',null,'UK');
Insert into LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (2500,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK');
Insert into LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (2600,'9702 Chester Road','09629850293','Stretford','Manchester','UK');
Insert into LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (2700,'Schwanthalerstr. 7031','80925','Munich','Bavaria','DE');
Insert into LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (2800,'Rua Frei Caneca 1360 ','01307-002','Sao Paulo','Sao Paulo','BR');
Insert into LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (2900,'20 Rue des Corps-Saints','1730','Geneva','Geneve','CH');
Insert into LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (3000,'Murtenstrasse 921','3095','Bern','BE','CH');
Insert into LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (3100,'Pieter Breughelstraat 837','3029SK','Utrecht','Utrecht','NL');
Insert into LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (3200,'Mariano Escobedo 9991','11932','Mexico City','Distrito Federal,','MX');
REM INSERTING into ORDER_PAYMENTS
SET DEFINE OFF;
REM INSERTING into PRODUCTS
SET DEFINE OFF;
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,LASTING,PRICE) values (1,'1_month_subcsription',30,100);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,LASTING,PRICE) values (2,'3_month_subcsription',90,250);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,LASTING,PRICE) values (3,'6_month_subcsription',180,500);
REM INSERTING into REGIONS
SET DEFINE OFF;
Insert into REGIONS (REGION_ID,REGION_NAME) values (1,'Europe');
Insert into REGIONS (REGION_ID,REGION_NAME) values (2,'Americas');
Insert into REGIONS (REGION_ID,REGION_NAME) values (3,'Asia');
Insert into REGIONS (REGION_ID,REGION_NAME) values (4,'Middle East and Africa');
REM INSERTING into SKILLS
SET DEFINE OFF;
Insert into SKILLS (SKILL_ID,SKILL_NAME) values (1,'MATLAB');
Insert into SKILLS (SKILL_ID,SKILL_NAME) values (2,'SQL');
Insert into SKILLS (SKILL_ID,SKILL_NAME) values (3,'PL/SQL');
Insert into SKILLS (SKILL_ID,SKILL_NAME) values (4,'JAVA');
Insert into SKILLS (SKILL_ID,SKILL_NAME) values (5,'EXCEL');
Insert into SKILLS (SKILL_ID,SKILL_NAME) values (6,'MICROSOFT OFFICE');
Insert into SKILLS (SKILL_ID,SKILL_NAME) values (7,'C++');
Insert into SKILLS (SKILL_ID,SKILL_NAME) values (8,'C');
Insert into SKILLS (SKILL_ID,SKILL_NAME) values (9,'WORD');
Insert into SKILLS (SKILL_ID,SKILL_NAME) values (10,'POWER BI');
Insert into SKILLS (SKILL_ID,SKILL_NAME) values (11,'PENTAHO');
Insert into SKILLS (SKILL_ID,SKILL_NAME) values (12,'ETL');
Insert into SKILLS (SKILL_ID,SKILL_NAME) values (13,' DATA WAREHOUSE');
Insert into SKILLS (SKILL_ID,SKILL_NAME) values (14,'PHP');
Insert into SKILLS (SKILL_ID,SKILL_NAME) values (15,'WEB DEVELOPING');
Insert into SKILLS (SKILL_ID,SKILL_NAME) values (16,'PERL');
Insert into SKILLS (SKILL_ID,SKILL_NAME) values (17,'BASH');
Insert into SKILLS (SKILL_ID,SKILL_NAME) values (18,'GIT');
REM INSERTING into SUBSCRIPTIONS
SET DEFINE OFF;
Insert into SUBSCRIPTIONS (SUBSCRIPTION_ID,ORDER_DATE,APPLICANT_ID,PRODUCT_ID,STATUS) values (1,to_date('16-AUG-21','DD-MON-RR'),100,1,'new');
Insert into SUBSCRIPTIONS (SUBSCRIPTION_ID,ORDER_DATE,APPLICANT_ID,PRODUCT_ID,STATUS) values (2,to_date('16-AUG-21','DD-MON-RR'),101,3,'new');
Insert into SUBSCRIPTIONS (SUBSCRIPTION_ID,ORDER_DATE,APPLICANT_ID,PRODUCT_ID,STATUS) values (3,to_date('10-JAN-22','DD-MON-RR'),102,1,'new');
Insert into SUBSCRIPTIONS (SUBSCRIPTION_ID,ORDER_DATE,APPLICANT_ID,PRODUCT_ID,STATUS) values (4,to_date('01-JAN-23','DD-MON-RR'),103,2,'new');
Insert into SUBSCRIPTIONS (SUBSCRIPTION_ID,ORDER_DATE,APPLICANT_ID,PRODUCT_ID,STATUS) values (5,to_date('02-FEB-21','DD-MON-RR'),104,1,'new');
Insert into SUBSCRIPTIONS (SUBSCRIPTION_ID,ORDER_DATE,APPLICANT_ID,PRODUCT_ID,STATUS) values (6,to_date('12-DEC-22','DD-MON-RR'),105,2,'new');
Insert into SUBSCRIPTIONS (SUBSCRIPTION_ID,ORDER_DATE,APPLICANT_ID,PRODUCT_ID,STATUS) values (7,to_date('02-FEB-23','DD-MON-RR'),106,3,'new');
Insert into SUBSCRIPTIONS (SUBSCRIPTION_ID,ORDER_DATE,APPLICANT_ID,PRODUCT_ID,STATUS) values (8,to_date('23-NOV-22','DD-MON-RR'),107,3,'new');
Insert into SUBSCRIPTIONS (SUBSCRIPTION_ID,ORDER_DATE,APPLICANT_ID,PRODUCT_ID,STATUS) values (9,to_date('25-NOV-22','DD-MON-RR'),108,2,'new');
Insert into SUBSCRIPTIONS (SUBSCRIPTION_ID,ORDER_DATE,APPLICANT_ID,PRODUCT_ID,STATUS) values (10,to_date('05-MAR-23','DD-MON-RR'),109,1,'new');
Insert into SUBSCRIPTIONS (SUBSCRIPTION_ID,ORDER_DATE,APPLICANT_ID,PRODUCT_ID,STATUS) values (11,to_date('16-APR-22','DD-MON-RR'),110,2,'new');
Insert into SUBSCRIPTIONS (SUBSCRIPTION_ID,ORDER_DATE,APPLICANT_ID,PRODUCT_ID,STATUS) values (12,to_date('16-NOV-23','DD-MON-RR'),111,1,'new');
Insert into SUBSCRIPTIONS (SUBSCRIPTION_ID,ORDER_DATE,APPLICANT_ID,PRODUCT_ID,STATUS) values (13,to_date('16-AUG-21','DD-MON-RR'),112,3,'new');
Insert into SUBSCRIPTIONS (SUBSCRIPTION_ID,ORDER_DATE,APPLICANT_ID,PRODUCT_ID,STATUS) values (14,to_date('25-FEB-23','DD-MON-RR'),113,1,'new');
Insert into SUBSCRIPTIONS (SUBSCRIPTION_ID,ORDER_DATE,APPLICANT_ID,PRODUCT_ID,STATUS) values (15,to_date('16-MAR-23','DD-MON-RR'),114,2,'new');
Insert into SUBSCRIPTIONS (SUBSCRIPTION_ID,ORDER_DATE,APPLICANT_ID,PRODUCT_ID,STATUS) values (16,to_date('30-DEC-22','DD-MON-RR'),115,1,'new');
--------------------------------------------------------
--  DDL for Index APPL_EXPER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APPL_EXPER_PK" ON "APPLICANTS_EXPERIENCES" ("APPLICANT_ID", "EXPERIENCE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index APPL_SKILL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APPL_SKILL_PK" ON "APPLICANTS_SKILLS" ("APPLICANT_ID", "SKILL_ID") 
  ;
--------------------------------------------------------
--  DDL for Index APP_SKILL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP_SKILL_PK" ON "APPLICANTS_INTERESTS" ("APPLICANT_ID", "INTERESTS_ID") 
  ;
--------------------------------------------------------
--  DDL for Index COUNTRY_C_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "COUNTRY_C_ID_PK" ON "COUNTRIES" ("COUNTRY_ID") 
  ;
--------------------------------------------------------
--  DDL for Index EXPERIENCES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EXPERIENCES_PK" ON "EXPERIENCES" ("EXPERIENCE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index INTERESTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "INTERESTS_PK" ON "INTERESTS" ("INTEREST_ID") 
  ;
--------------------------------------------------------
--  DDL for Index LOC_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOC_ID_PK" ON "LOCATIONS" ("LOCATION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index ORDER_PAYMENTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORDER_PAYMENTS_PK" ON "ORDER_PAYMENTS" ("PAYMENT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PRODUCTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRODUCTS_PK" ON "PRODUCTS" ("PRODUCT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index REG_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REG_ID_PK" ON "REGIONS" ("REGION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SEEKERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SEEKERS_PK" ON "APPLICANTS" ("APPLICANT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SKILLS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SKILLS_PK" ON "SKILLS" ("SKILL_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SUBSCRIPTIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SUBSCRIPTIONS_PK" ON "SUBSCRIPTIONS" ("SUBSCRIPTION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SEEKERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SEEKERS_PK" ON "APPLICANTS" ("APPLICANT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index APPL_EXPER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APPL_EXPER_PK" ON "APPLICANTS_EXPERIENCES" ("APPLICANT_ID", "EXPERIENCE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index APP_SKILL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP_SKILL_PK" ON "APPLICANTS_INTERESTS" ("APPLICANT_ID", "INTERESTS_ID") 
  ;
--------------------------------------------------------
--  DDL for Index APPL_SKILL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APPL_SKILL_PK" ON "APPLICANTS_SKILLS" ("APPLICANT_ID", "SKILL_ID") 
  ;
--------------------------------------------------------
--  DDL for Index COUNTRY_C_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "COUNTRY_C_ID_PK" ON "COUNTRIES" ("COUNTRY_ID") 
  ;
--------------------------------------------------------
--  DDL for Index EXPERIENCES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EXPERIENCES_PK" ON "EXPERIENCES" ("EXPERIENCE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index INTERESTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "INTERESTS_PK" ON "INTERESTS" ("INTEREST_ID") 
  ;
--------------------------------------------------------
--  DDL for Index LOC_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOC_ID_PK" ON "LOCATIONS" ("LOCATION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index ORDER_PAYMENTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORDER_PAYMENTS_PK" ON "ORDER_PAYMENTS" ("PAYMENT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PRODUCTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRODUCTS_PK" ON "PRODUCTS" ("PRODUCT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index REG_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REG_ID_PK" ON "REGIONS" ("REGION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SKILLS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SKILLS_PK" ON "SKILLS" ("SKILL_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SUBSCRIPTIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SUBSCRIPTIONS_PK" ON "SUBSCRIPTIONS" ("SUBSCRIPTION_ID") 
  ;
--------------------------------------------------------
--  Constraints for Table APPLICANTS
--------------------------------------------------------

  ALTER TABLE "APPLICANTS" MODIFY ("APPLICANT_ID" NOT NULL ENABLE);
  ALTER TABLE "APPLICANTS" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "APPLICANTS" MODIFY ("LOCATION_ID" NOT NULL ENABLE);
  ALTER TABLE "APPLICANTS" ADD CONSTRAINT "SEEKERS_PK" PRIMARY KEY ("APPLICANT_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table APPLICANTS_EXPERIENCES
--------------------------------------------------------

  ALTER TABLE "APPLICANTS_EXPERIENCES" MODIFY ("APPLICANT_ID" NOT NULL ENABLE);
  ALTER TABLE "APPLICANTS_EXPERIENCES" MODIFY ("EXPERIENCE_ID" NOT NULL ENABLE);
  ALTER TABLE "APPLICANTS_EXPERIENCES" ADD CONSTRAINT "APPL_EXPER_PK" PRIMARY KEY ("APPLICANT_ID", "EXPERIENCE_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table APPLICANTS_INTERESTS
--------------------------------------------------------

  ALTER TABLE "APPLICANTS_INTERESTS" MODIFY ("APPLICANT_ID" NOT NULL ENABLE);
  ALTER TABLE "APPLICANTS_INTERESTS" MODIFY ("INTERESTS_ID" NOT NULL ENABLE);
  ALTER TABLE "APPLICANTS_INTERESTS" ADD CONSTRAINT "APP_SKILL_PK" PRIMARY KEY ("APPLICANT_ID", "INTERESTS_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table APPLICANTS_SKILLS
--------------------------------------------------------

  ALTER TABLE "APPLICANTS_SKILLS" MODIFY ("APPLICANT_ID" NOT NULL ENABLE);
  ALTER TABLE "APPLICANTS_SKILLS" MODIFY ("SKILL_ID" NOT NULL ENABLE);
  ALTER TABLE "APPLICANTS_SKILLS" ADD CONSTRAINT "APPL_SKILL_PK" PRIMARY KEY ("APPLICANT_ID", "SKILL_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table COUNTRIES
--------------------------------------------------------

  ALTER TABLE "COUNTRIES" MODIFY ("COUNTRY_ID" CONSTRAINT "COUNTRY_ID_NN" NOT NULL ENABLE);
  ALTER TABLE "COUNTRIES" ADD CONSTRAINT "COUNTRY_C_ID_PK" PRIMARY KEY ("COUNTRY_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table EXPERIENCES
--------------------------------------------------------

  ALTER TABLE "EXPERIENCES" MODIFY ("EXPERIENCE_ID" NOT NULL ENABLE);
  ALTER TABLE "EXPERIENCES" MODIFY ("LOCATION_ID" NOT NULL ENABLE);
  ALTER TABLE "EXPERIENCES" ADD CONSTRAINT "EXPERIENCES_PK" PRIMARY KEY ("EXPERIENCE_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table INTERESTS
--------------------------------------------------------

  ALTER TABLE "INTERESTS" MODIFY ("INTEREST_ID" NOT NULL ENABLE);
  ALTER TABLE "INTERESTS" ADD CONSTRAINT "INTERESTS_PK" PRIMARY KEY ("INTEREST_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOCATIONS
--------------------------------------------------------

  ALTER TABLE "LOCATIONS" MODIFY ("LOCATION_ID" NOT NULL ENABLE);
  ALTER TABLE "LOCATIONS" MODIFY ("CITY" CONSTRAINT "LOC_CITY_NN" NOT NULL ENABLE);
  ALTER TABLE "LOCATIONS" ADD CONSTRAINT "LOC_ID_PK" PRIMARY KEY ("LOCATION_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table ORDER_PAYMENTS
--------------------------------------------------------

  ALTER TABLE "ORDER_PAYMENTS" MODIFY ("PAYMENT_ID" NOT NULL ENABLE);
  ALTER TABLE "ORDER_PAYMENTS" MODIFY ("SUBSCRIPTION_ID" NOT NULL ENABLE);
  ALTER TABLE "ORDER_PAYMENTS" ADD CONSTRAINT "ORDER_PAYMENTS_PK" PRIMARY KEY ("PAYMENT_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCTS
--------------------------------------------------------

  ALTER TABLE "PRODUCTS" MODIFY ("PRODUCT_ID" NOT NULL ENABLE);
  ALTER TABLE "PRODUCTS" ADD CONSTRAINT "PRODUCTS_PK" PRIMARY KEY ("PRODUCT_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table REGIONS
--------------------------------------------------------

  ALTER TABLE "REGIONS" MODIFY ("REGION_ID" CONSTRAINT "REGION_ID_NN" NOT NULL ENABLE);
  ALTER TABLE "REGIONS" ADD CONSTRAINT "REG_ID_PK" PRIMARY KEY ("REGION_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table SKILLS
--------------------------------------------------------

  ALTER TABLE "SKILLS" MODIFY ("SKILL_ID" NOT NULL ENABLE);
  ALTER TABLE "SKILLS" ADD CONSTRAINT "SKILLS_PK" PRIMARY KEY ("SKILL_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table SUBSCRIPTIONS
--------------------------------------------------------

  ALTER TABLE "SUBSCRIPTIONS" MODIFY ("SUBSCRIPTION_ID" NOT NULL ENABLE);
  ALTER TABLE "SUBSCRIPTIONS" MODIFY ("APPLICANT_ID" NOT NULL ENABLE);
  ALTER TABLE "SUBSCRIPTIONS" MODIFY ("PRODUCT_ID" NOT NULL ENABLE);
  ALTER TABLE "SUBSCRIPTIONS" ADD CONSTRAINT "SUBSCRIPTIONS_PK" PRIMARY KEY ("SUBSCRIPTION_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table APPLICANTS
--------------------------------------------------------

  ALTER TABLE "APPLICANTS" ADD CONSTRAINT "LOC_ID_FK" FOREIGN KEY ("LOCATION_ID")
	  REFERENCES "LOCATIONS" ("LOCATION_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table APPLICANTS_EXPERIENCES
--------------------------------------------------------

  ALTER TABLE "APPLICANTS_EXPERIENCES" ADD CONSTRAINT "APPLICANT_ID_FK" FOREIGN KEY ("APPLICANT_ID")
	  REFERENCES "APPLICANTS" ("APPLICANT_ID") ENABLE;
  ALTER TABLE "APPLICANTS_EXPERIENCES" ADD CONSTRAINT "EXPERIENCE_ID_FK" FOREIGN KEY ("EXPERIENCE_ID")
	  REFERENCES "EXPERIENCES" ("EXPERIENCE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table APPLICANTS_INTERESTS
--------------------------------------------------------

  ALTER TABLE "APPLICANTS_INTERESTS" ADD CONSTRAINT "APP_ID_FK" FOREIGN KEY ("APPLICANT_ID")
	  REFERENCES "APPLICANTS" ("APPLICANT_ID") ENABLE;
  ALTER TABLE "APPLICANTS_INTERESTS" ADD CONSTRAINT "INTERESTS_ID_FK" FOREIGN KEY ("INTERESTS_ID")
	  REFERENCES "INTERESTS" ("INTEREST_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table APPLICANTS_SKILLS
--------------------------------------------------------

  ALTER TABLE "APPLICANTS_SKILLS" ADD CONSTRAINT "APPL_ID_FK" FOREIGN KEY ("APPLICANT_ID")
	  REFERENCES "APPLICANTS" ("APPLICANT_ID") ENABLE;
  ALTER TABLE "APPLICANTS_SKILLS" ADD CONSTRAINT "SKILL_ID_FK" FOREIGN KEY ("SKILL_ID")
	  REFERENCES "SKILLS" ("SKILL_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COUNTRIES
--------------------------------------------------------

  ALTER TABLE "COUNTRIES" ADD CONSTRAINT "COUNTR_REG_FK" FOREIGN KEY ("REGION_ID")
	  REFERENCES "REGIONS" ("REGION_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LOCATIONS
--------------------------------------------------------

  ALTER TABLE "LOCATIONS" ADD CONSTRAINT "LOC_C_ID_FK" FOREIGN KEY ("COUNTRY_ID")
	  REFERENCES "COUNTRIES" ("COUNTRY_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDER_PAYMENTS
--------------------------------------------------------

  ALTER TABLE "ORDER_PAYMENTS" ADD CONSTRAINT "ORDER_PAYM_SUBS_FK" FOREIGN KEY ("SUBSCRIPTION_ID")
	  REFERENCES "SUBSCRIPTIONS" ("SUBSCRIPTION_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SUBSCRIPTIONS
--------------------------------------------------------

  ALTER TABLE "SUBSCRIPTIONS" ADD CONSTRAINT "SUBS_APPLICANTS_FK" FOREIGN KEY ("APPLICANT_ID")
	  REFERENCES "APPLICANTS" ("APPLICANT_ID") ENABLE;
  ALTER TABLE "SUBSCRIPTIONS" ADD CONSTRAINT "SUBS_PRODUCTS_FK" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "PRODUCTS" ("PRODUCT_ID") ENABLE;
