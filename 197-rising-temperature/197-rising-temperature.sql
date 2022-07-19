# Write your MySQL query statement below
SELECT distinct b.id AS Id
FROM Weather a, Weather b
WHERE a.temperature<b.temperature AND DATEDIFF(b.recordDate,a.recordDate)=1
ORDER BY 1;