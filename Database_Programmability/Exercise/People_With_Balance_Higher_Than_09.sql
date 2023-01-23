CREATE PROCEDURE usp_get_holders_with_balance_higher_than(salary INT)
BEGIN
SELECT 
`first_name`, 
`last_name`
FROM `account_holders` AS `ah` 
JOIN `accounts` AS `a` ON `ah`.`id` = `a`.`account_holder_id`
GROUP BY `ah`.`id`
HAVING SUM(`balance`) > salary
ORDER BY `ah`.`id`;
END
