SELECT 
    p.peak_name,
    r.river_name,
    LOWER(CONCAT((LEFT(p.peak_name,
                        CHAR_LENGTH(p.peak_name) - 1)),
                    r.river_name)) AS mix
FROM
    `peaks` AS p,
    `rivers` AS r
WHERE
    LOWER(RIGHT(p.peak_name, 1)) = LOWER(LEFT(r.river_name, 1))
ORDER BY mix;