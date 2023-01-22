SELECT 
u.id,
u.username,
count(c.user_id) AS my_comments
FROM instagraph_db.comments c
JOIN posts p ON c.post_id = p.id
JOIN users u ON c.user_id = u.id
WHERE c.user_id = p.user_id
GROUP BY u.id
ORDER BY 
my_comments DESC,
u.id ASC;
