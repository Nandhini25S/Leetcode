# Write your MySQL query statement below
SELECT distinct customer_number
FROM Orders
GROUP BY 1
ORDER BY COUNT(*) DESC
LIMIT 1;