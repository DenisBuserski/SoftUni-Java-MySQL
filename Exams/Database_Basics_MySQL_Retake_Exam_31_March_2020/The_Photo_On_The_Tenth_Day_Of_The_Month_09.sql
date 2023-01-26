SELECT 
CONCAT_WS('', LEFT(`description`, 30), '...') AS `summary`,
`date`
FROM `photos`
WHERE
DAY(`date`) LIKE '10'
AND CHAR_LENGTH(`description`) >= 30
ORDER BY `date` DESC;