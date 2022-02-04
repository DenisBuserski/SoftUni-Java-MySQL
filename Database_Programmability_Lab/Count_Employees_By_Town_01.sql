
CREATE FUNCTION ufn_count_employees_by_town(town_name VARCHAR(100))
RETURNS INT
DETERMINISTIC
BEGIN
RETURN
(SELECT COUNT(*)
FROM `towns` AS `t`
LEFT JOIN `addresses` AS `a` ON `t`.`town_id` = `a`.`town_id`
LEFT JOIN `employees` AS `e` ON `e`.`address_id` = `a`.`address_id`
WHERE `t`.`name` = town_name);
END

