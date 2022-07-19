# Write your MySQL query statement below
SELECT distinct user_id, MAX(time_stamp) OVER (PARTITION BY user_id) AS last_stamp
FROM Logins
WHERE time_stamp LIKE '2020%';