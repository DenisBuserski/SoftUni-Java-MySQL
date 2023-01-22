SELECT MIN(`min-avg`) AS `min_average_salary`
FROM
(SELECT AVG(`salary`) AS `min-avg` FROM `employees` GROUP BY `department_id`) AS `a`;
