# Write your MySQL query statement below
SELECT name, ifnull(SUM(distance),0) AS travelled_distance
FROM Users u LEFT JOIN Rides r ON u.id=r.user_id
GROUP BY user_id
ORDER BY 2 DESC,1;