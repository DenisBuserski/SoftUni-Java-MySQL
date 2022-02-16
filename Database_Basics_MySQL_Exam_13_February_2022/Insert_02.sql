INSERT INTO `reviews` (`content`, `rating`, `picture_url`, `published_at`)
SELECT 
LEFT(`p`.`description`, 15) AS `content`, 
`p`.`price` / 8 AS `rating`, 
REVERSE(`p`.`name`) AS `picture_url`,
'2010-10-10 00:00:00.000000' AS `published_at` 
FROM `products` AS `p`
WHERE `p`.`id` >= 5;