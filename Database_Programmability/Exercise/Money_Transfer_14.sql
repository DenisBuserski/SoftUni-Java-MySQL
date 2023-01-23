CREATE PROCEDURE usp_transfer_money(from_account_id INT, to_account_id INT, amount DECIMAL(20,4))
BEGIN
	START TRANSACTION;
	CASE WHEN ((SELECT a.id FROM accounts as a WHERE a.id = from_account_id) IS NULL)
			OR ((SELECT a.id FROM accounts as a WHERE a.id = to_account_id) IS NULL)
			OR from_account_id = to_account_id
			OR amount < 0 
			OR amount > (SELECT a.balance FROM accounts as a
				     WHERE a.id = from_account_id)
		THEN ROLLBACK;
	ELSE 
		UPDATE accounts as a 
		SET a.balance = a.balance - amount
		WHERE a.id = from_account_id;
		UPDATE accounts as a
		SET a.balance = a.balance + amount
		WHERE a.id = to_account_id;
	END CASE;
	COMMIT;
END; 