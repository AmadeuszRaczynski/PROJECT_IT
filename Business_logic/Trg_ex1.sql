--Mechanism of automatic approval of the customer's order after payment.


DROP TRIGGER ai_order_payments_trg;
	CREATE OR REPLACE TRIGGER ai_order_payments_trg
	AFTER INSERT ON order_payments
	FOR EACH ROW
	WHEN (NEW.status = 'APPROVED')
	BEGIN
		 UPDATE subscriptions
			SET status = 'APPROVED'
		  WHERE subscription_Id = :NEW.subscription_id;
	END ai_order_payments_trg;
	/