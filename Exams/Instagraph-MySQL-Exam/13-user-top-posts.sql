SELECT `u`.`id`, `u`.`username`, `top_comment`.`caption`
FROM
    (SELECT `p`.`id`, `p`.`caption`, COUNT(`c`.`post_id`) AS `comments`, `p`.`user_id`
    FROM `posts` AS `p`
    LEFT JOIN `comments` `c` ON `p`.`id` = `c`.`post_id`
    GROUP BY `p`.`id`
    ORDER BY `comments` DESC, 
     `p`.`id`) AS `top_comment`
JOIN `users` AS `u` ON `u`.`id` = `top_comment`.`user_id`
GROUP BY `u`.`id`
ORDER BY `u`.`id`;
