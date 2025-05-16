# Write your MySQL query statement below
# Write a solution to report the products that were only sold in the first quarter of 2019. That is, between 2019-01-01 and 2019-03-31 inclusive.
WITH product_sales AS (
    SELECT
        s.product_id,
        MIN(s.sale_date) AS first_sale,
        MAX(s.sale_date) AS last_sale
    FROM 
        Sales s
    GROUP BY s.product_id
)

SELECT
    p.product_id,
    p.product_name
FROM
    product_sales ps
JOIN
    Product p 
    ON ps.product_id = p.product_id
WHERE
    ps.first_sale >= '2019-01-01'
    AND ps.last_sale <= '2019-03-31';