SELECT u.id, username, concat(size, 'KB') AS size
FROM instagraph_db.users u
JOIN pictures p ON u.profile_picture_id = p.id
WHERE profile_picture_id IN 
(SELECT profile_picture_id
FROM users
GROUP BY profile_picture_id
HAVING COUNT(*) > 1);
