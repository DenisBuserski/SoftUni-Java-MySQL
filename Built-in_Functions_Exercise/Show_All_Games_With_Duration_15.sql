SELECT 
    `name` AS game,
    CASE
        WHEN HOUR(`g`.start) BETWEEN 0 AND 11 THEN 'Morning'
        WHEN HOUR(`g`.start) BETWEEN 12 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
    END AS 'Part of the Day',
    CASE
        WHEN `g`.`duration` <= 3 THEN 'Extra Short'
        WHEN `g`.`duration` BETWEEN 4 AND 6 THEN 'Short'
        WHEN `g`.`duration` BETWEEN 7 AND 10 THEN 'Long'
        ELSE 'Extra Long'
    END AS 'Duration'
FROM
    games AS `g`;