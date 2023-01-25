CREATE FUNCTION udf_courses_by_client (phone_num VARCHAR (20)) 
RETURNS VARCHAR(50)
DETERMINISTIC 
BEGIN
RETURN 
(SELECT COUNT(`from_address_id`)
FROM `courses` AS `co` 
LEFT JOIN `clients` AS `cl` ON `co`.`client_id` = `cl`.`id`
WHERE `cl`.`phone_number` = phone_num);
END
