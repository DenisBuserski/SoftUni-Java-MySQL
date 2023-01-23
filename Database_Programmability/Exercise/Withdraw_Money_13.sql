CREATE PROCEDURE usp_withdraw_money(account_id INT, money_amount DECIMAL(20,4))
BEGIN
START TRANSACTION;
	CASE WHEN 
	     money_amount < 0 OR 
             money_amount > (SELECT a.balance 
			     FROM accounts as a
			     WHERE a.id = account_id)
	THEN ROLLBACK;
	ELSE 
		UPDATE accounts as a 
		SET a.balance = a.balance - money_amount
        	WHERE a.id = account_id;
	END CASE;
COMMIT;
END
