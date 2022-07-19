# Write your MySQL query statement below
SELECT distinct activity_date AS day, COUNT(distinct user_id) AS active_users
FROM Activity
WHERE activity_type NOT LIKE 'open_session' OR activity_type NOT LIKE 'end_session'
GROUP BY 1
HAVING activity_date<='2019-07-27' AND activity_date>'2019-06-27';