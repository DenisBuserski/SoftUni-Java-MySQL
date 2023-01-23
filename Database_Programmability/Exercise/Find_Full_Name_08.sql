CREATE PROCEDURE usp_get_holders_full_name ()
BEGIN
SELECT
CONCAT_WS(' ', `first_name`, `last_name`) AS `full_name`
FROM `account_holders` AS `ah`
RIGHT JOIN `accounts` AS `a` ON `ah`.`id` = `a`.`account_holder_id`
GROUP BY `ah`.`id`
ORDER BY `full_name` ASC,
`ah`.`id` ASC;
END
