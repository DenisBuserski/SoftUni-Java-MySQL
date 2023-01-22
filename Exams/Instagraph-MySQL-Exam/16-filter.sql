DELIMITER ;;
CREATE PROCEDURE `udp_filter` (`hashtag` VARCHAR(255))
BEGIN
    SELECT `p`.`id`, `p`.`caption`, `u`.`username`
    FROM `posts` AS `p`
    JOIN `users` `u` ON `p`.`user_id` = `u`.`id`
    WHERE `p`.`caption` LIKE (concat('%', `hashtag`, '%'))
    ORDER BY `p`.`id`;
END ;;
DELIMITER ;
