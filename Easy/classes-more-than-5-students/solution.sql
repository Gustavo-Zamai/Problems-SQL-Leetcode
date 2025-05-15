# Write your MySQL query statement below
SELECT
    Courses.class AS 'class'
FROM
    Courses
GROUP BY Courses.class
HAVING COUNT(Courses.class) >= 5;