# Write your MySQL query statement below
SELECT distinct name, SUM(amount) AS balance
FROM Users u LEFT JOIN Transactions t
ON u.account=t.account
GROUP BY 1
HAVING SUM(amount)>10000;