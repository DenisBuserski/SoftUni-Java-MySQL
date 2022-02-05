SELECT 
    `first_name`
FROM
    `employees`
WHERE
    `department_id` IN (3 , 10)
        AND YEAR(`hire_date`) BETWEEN '1995-01-01' AND '2005-12-01'
ORDER BY `employee_id`;