CREATE PROCEDURE udp_modify_user (address VARCHAR(30), town VARCHAR(30)) 
BEGIN
UPDATE 
`users` AS `u` 
JOIN `addresses` AS `a` ON `u`.`id` = `a`.`user_id`
SET `age` = `age` + 10 
WHERE 
`a`.`address` LIKE address 
AND `a`.`town` LIKE town;
END
