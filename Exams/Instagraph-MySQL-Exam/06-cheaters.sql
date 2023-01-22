SELECT u.id, u.username 
FROM instagraph_db.users_followers uf
JOIN users u ON uf.user_id = u.id
WHERE user_id = follower_id
ORDER BY id ASC;
