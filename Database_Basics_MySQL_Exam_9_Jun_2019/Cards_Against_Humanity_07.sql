SELECT 
    `c`.`id`,
    CONCAT_WS(' : ',
            `c`.`card_number`,
            `cl`.`full_name`) AS `card_token`
FROM
    `cards` AS `c`
        LEFT JOIN
    `bank_accounts` AS `ba` ON `c`.`bank_account_id` = `ba`.`id`
        LEFT JOIN
    `clients` AS `cl` ON `ba`.`client_id` = `cl`.`id`
ORDER BY `c`.`id` DESC;