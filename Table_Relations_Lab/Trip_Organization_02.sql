SELECT 
    `v`.`driver_id`,
    `v`.`vehicle_type`,
    CONCAT(`c`.`first_name`, ' ', `c`.`last_name`) AS `driver_name`
FROM
    `vehicles` AS `v`,
    `campers` AS `c`
WHERE
    `c`.`id` = `v`.`driver_id`;