SELECT * 
FROM instagraph_db.pictures
WHERE 
size > 50000
AND (path LIKE '%jpeg%' OR path LIKE '%png%')
ORDER BY size DESC;
