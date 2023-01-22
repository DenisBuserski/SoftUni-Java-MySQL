DELIMITER ;;
CREATE PROCEDURE `udp_post` (`username` VARCHAR(255), `password` VARCHAR(255), `caption` VARCHAR(255), `path` VARCHAR(255))
BEGIN
    IF ((SELECT `u`.`password` FROM `users` AS `u` WHERE `u`.`username` = `username`) != `password`)
        THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Password is incorrect!';
    ELSEIF ((SELECT `p`.`path` FROM `pictures` AS `p` WHERE `p`.`path` = `path`) IS NULL)
        THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'The picture does not exist!';
    ELSE
        INSERT INTO `posts` (`caption`, `user_id`, `picture_id`)
        SELECT `caption`,
               (SELECT `u`.`id` FROM `users` AS `u` WHERE `u`.`username` = `username`) AS `user_id`,
               (SELECT `p`.`id` FROM `pictures` AS `p` WHERE `p`.`path` = `path`) AS `picture_id`;
    END IF ;
END ;;
DELIMITER ;
