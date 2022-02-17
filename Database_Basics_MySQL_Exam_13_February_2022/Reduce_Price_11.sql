CREATE PROCEDURE udp_reduce_price (category_name VARCHAR(50))
BEGIN
UPDATE 
`products` AS `p` 
JOIN `reviews` AS `r` ON `p`.`review_id` = `r`.`id`
JOIN `categories` AS `c` ON `c`.`id` = `p`.`category_id`
SET `p`.`price` = `p`.`price` - (0.3 * `p`.`price`)
WHERE `r`.`rating` < 4 AND
`c`.`name` = category_name;
END
