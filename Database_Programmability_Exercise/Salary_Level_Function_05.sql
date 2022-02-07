CREATE FUNCTION ufn_get_salary_level(salary DECIMAL) 
RETURNS VARCHAR(50)
DETERMINISTIC 
BEGIN
RETURN (SELECT 
        CASE
        WHEN salary < 30000 THEN 'Low'
        WHEN salary BETWEEN 30000 AND 50000 THEN 'Average'
        ELSE 'High' 
        END AS `salary_Level`);
END
