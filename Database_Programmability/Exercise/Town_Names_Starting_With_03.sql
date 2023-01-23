CREATE PROCEDURE usp_get_towns_starting_with(str VARCHAR(5))
BEGIN
SELECT `name` AS `town_name`
FROM `towns` AS `t`
WHERE `t`.`name` LIKE CONCAT(str, '%')
ORDER BY `town_name` ASC;
END

