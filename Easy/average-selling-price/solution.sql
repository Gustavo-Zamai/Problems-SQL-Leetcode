# Write your MySQL query statement below
SELECT
    p.product_id AS 'product_id',
    ROUND(
    COALESCE(SUM(us.units * p.price) / NULLIF(SUM(us.units), 0), 0),
    2
  ) AS 'average_price'
FROM
    Prices AS p
LEFT JOIN
    UnitsSold AS us
ON p.product_id = us.product_id
AND us.purchase_date BETWEEN start_date AND end_date
GROUP BY p.product_id;