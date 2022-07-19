# Write your MySQL query statement below
SELECT distinct user_id, COUNT(distinct follower_id) AS followers_count
FROM Followers
GROUP BY 1;