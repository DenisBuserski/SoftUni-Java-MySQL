SELECT
`p`.`id` AS `photo_id`,
(SELECT COUNT(`user_id`) FROM `likes` WHERE `photo_id` = `p`.`id`) AS `likes_count`,
(SELECT COUNT(`id`) FROM `comments` WHERE `p`.`id` = `photo_id`)  AS `comments_count`
FROM `photos` AS `p`
LEFT JOIN `likes` AS `l` ON `p`.`id` = `l`.`photo_id`
LEFT JOIN `comments` AS `c` ON `p`.`id` = `c`.`photo_id`
GROUP BY `photo_id`
ORDER BY
`likes_count` DESC,
`comments_count` DESC,
`photo_id` ASC;