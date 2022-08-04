# Write your MySQL query statement below
SELECT t.request_at AS Day,
ROUND(SUM(CASE WHEN t.status IN ('cancelled_by_driver','cancelled_by_client') THEN 1 ELSE 0 END)/COUNT(*),2) AS 'Cancellation Rate'
FROM Trips t
LEFT JOIN Users u ON u.users_id=t.client_id
LEFT JOIN Users v ON v.users_id=t.driver_id
WHERE request_at BETWEEN '2013-10-01' AND '2013-10-03' AND u.banned LIKE 'NO' AND v.banned LIKE 'NO'
GROUP BY 1;