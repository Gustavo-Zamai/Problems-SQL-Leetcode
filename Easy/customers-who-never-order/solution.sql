# Write your MySQL query statement below
SELECT
    c.name AS 'Customers'
FROM 
    Customers AS c
LEFT JOIN
    Orders as o
    ON o.customerId = c.id
WHERE o.id IS NULL;