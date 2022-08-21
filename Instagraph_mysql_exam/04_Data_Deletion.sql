-- 04.Data Deletion
SET SQL_SAFE_UPDATES = 0;

DELETE FROM `users`
WHERE `id` NOT IN (SELECT `user_id` FROM `users_followers`);
