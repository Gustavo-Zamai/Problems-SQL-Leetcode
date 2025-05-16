# Write your MySQL query statement below
# Write an SQL query that reports the average experience years of all the employees for each project, rounded to 2 digits.
SELECT
    p.project_id AS 'project_id',
    ROUND(AVG(e.experience_years), 2) AS 'average_years'
FROM
    Employee AS e
JOIN
    Project AS p
ON e.employee_id = p.employee_id
GROUP BY p.project_id;