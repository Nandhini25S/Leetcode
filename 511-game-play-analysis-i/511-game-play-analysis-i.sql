# Write your MySQL query statement below
SELECT distinct player_id, MIN(event_date) OVER (PARTITION BY player_id) AS first_login
FROM Activity;