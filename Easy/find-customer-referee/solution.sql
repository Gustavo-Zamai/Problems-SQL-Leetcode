# Write your MySQL query statement below
SELECT
    Customer.name  AS 'name'
FROM
    Customer
WHERE 
    Customer.referee_id != 2 OR Customer.referee_id IS NULL;

/*
SELECT 
    name
FROM 
    Customer
WHERE 
    (referee_id IS NULL OR referee_id <> 2);
*/