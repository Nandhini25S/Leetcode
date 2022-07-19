# Write your MySQL query statement below
SELECT distinct user_id AS buyer_id, join_date, 
 SUM(CASE WHEN YEAR(order_date)=2019 THEN 1 ELSE 0 END) AS orders_in_2019
FROM Users u LEFT JOIN Orders o ON u.user_id=o.buyer_id
GROUP BY 1,2;