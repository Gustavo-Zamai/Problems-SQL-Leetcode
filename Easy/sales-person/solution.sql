# Write your MySQL query statement below
SELECT
    sp.name AS 'name'
FROM
    SalesPerson AS sp
WHERE NOT EXISTS (
    SELECT
        o.sales_id
    FROM
        Orders AS o
    LEFT JOIN
        Company AS c
        ON c.com_id = o.com_id
    WHERE c.name = 'RED' AND o.sales_id = sp.sales_id
);