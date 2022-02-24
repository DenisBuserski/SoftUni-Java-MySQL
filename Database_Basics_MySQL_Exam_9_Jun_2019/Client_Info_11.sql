CREATE PROCEDURE udp_clientinfo (full_name VARCHAR(50))
BEGIN
SELECT
`c`.`full_name`,
`c`.`age`,
`ba`.`account_number` AS `account_number`,
CONCAT_WS('', '$', `ba`. `balance`) AS `balance`
FROM `clients` AS `c`
JOIN `bank_accounts` AS `ba` ON `c`.`id` = `ba`.`client_id`
WHERE `c`.`full_name` = full_name;
END
