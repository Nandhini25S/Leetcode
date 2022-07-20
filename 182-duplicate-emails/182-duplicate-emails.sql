# Write your MySQL query statement below
SELECT distinct email
FROM Person
GROUP BY 1
HAVING COUNT(email)>1;