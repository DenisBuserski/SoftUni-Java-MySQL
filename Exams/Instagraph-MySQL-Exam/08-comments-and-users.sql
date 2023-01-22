SELECT 
c.id,
CONCAT(u.username, ' : ', c.content) AS full_comment
FROM instagraph_db.comments c
JOIN users u ON c.user_id = u.id
ORDER BY c.id DESC;
