UPDATE `cars` 
SET 
    `condition` = 'C'
WHERE
    (`mileage` >= 800000
        OR `mileage` IS NULL AND `year` <= 2010)
        AND `id` <> 0;


