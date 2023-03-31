
/*Creation of an algorithm that calculates the retail price of a product based on its sales history. 
If the goods were sold in the previous month in an amount exceeding 50, then in the following month 
the price should be increased by 4%.*/


DECLARE
   v_increase_rate NUMBER := 1.04; -- 4% increase rate
   v_sales_qty NUMBER := 0; -- sales quantity in the previous month
BEGIN
   FOR product_rec IN (SELECT DISTINCT product_id FROM subscriptions)
   LOOP
      SELECT COUNT(status)
      INTO v_sales_qty
      FROM subscriptions
      WHERE product_id = product_rec.product_id
      AND status = 'APROVED'
      AND sysdate - 30 < order_date; -- get sales quantity in the previous month for this product

      IF v_sales_qty > 50 THEN -- if sales quantity > 50, increase price by 4%
         UPDATE products
         SET price = price * v_increase_rate
         WHERE product_id = product_rec.product_id;
      END IF;
   END LOOP;

END;

