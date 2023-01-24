CREATE FUNCTION udf_client_cards_count(name VARCHAR(30)) 
RETURNS INT
DETERMINISTIC 
BEGIN
RETURN 
(SELECT
COUNT(`cards`.`id`)
FROM 
`clients` AS `c`
RIGHT JOIN `bank_accounts` AS `ba` ON `c`.`id` = `ba`.`client_id`
RIGHT JOIN `cards` ON `ba`.`id` = `cards`.`bank_account_id`
WHERE `c`.`full_name` = name);
END
