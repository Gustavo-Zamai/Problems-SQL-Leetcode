# Write your MySQL query statement below
SELECT
    World.name AS 'name',
    World.population AS 'population',
    World.area AS 'area'
FROM
    World
WHERE
    World.area >= 3000000 OR World.population >= 25000000;