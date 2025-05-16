# Write your MySQL query statement below
# Write a solution to report the product_name, year, and price for each sale_id in the Sales table.
SELECT
    p.product_name,
    s.year,
    s.price
FROM
    Product AS p
JOIN
    Sales AS s
ON p.product_id = s.product_id;