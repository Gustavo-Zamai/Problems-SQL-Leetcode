# Write your MySQL query statement below
SELECT
    temperatureOne.id
FROM
    Weather AS temperatureOne
INNER JOIN
    Weather AS temperatureTwo
    ON DATEDIFF(temperatureOne.recordDate, temperatureTwo.recordDate) = 1
WHERE temperatureOne.temperature > temperatureTwo.temperature; 