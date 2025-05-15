# Write your MySQL query statement below
SELECT
    MAX(num) as 'num'
FROM
   (SELECT
        num 
    FROM 
        MyNumbers
    GROUP BY num 
    HAVING count(*) = 1)
AS single_number;