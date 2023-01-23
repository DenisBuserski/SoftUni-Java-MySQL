CREATE PROCEDURE usp_get_employees_by_salary_level(level_of_salary VARCHAR(50))
BEGIN
SELECT
`first_name`,
`last_name`
FROM `employees` AS `e`
WHERE (SELECT 
        CASE
        WHEN salary < 30000 THEN 'Low'
        WHEN salary BETWEEN 30000 AND 50000 THEN 'Average'
        ELSE 'High' END AS `salary_Level`) = level_of_salary
ORDER BY
`first_name` DESC,
`last_name` DESC;
END


