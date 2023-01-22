SELECT p.id, p.caption, COUNT(content) AS comments
FROM posts p
JOIN comments c ON p.id = c.post_id
GROUP BY p.id
ORDER BY
comments DESC,
p.id ASC
LIMIT 5;
