# Write your MySQL query statement below
SELECT distinct date_id, make_name, COUNT(distinct lead_id) AS unique_leads, 
 COUNT(distinct partner_id) AS unique_partners
FROM DailySales
GROUP BY 1,2
ORDER BY 1 DESC;