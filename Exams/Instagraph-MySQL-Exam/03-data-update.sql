UPDATE `users`
SET `profile_picture_id` = 
CASE
  WHEN `id` IN (SELECT `user_id` FROM `users_followers`)
  THEN (SELECT COUNT(`follower_id`) FROM `users_followers` WHERE `user_id` = `id`)
  ELSE `id`
END
WHERE `profile_picture_id` IS NULL;
