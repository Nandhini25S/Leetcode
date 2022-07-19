# Write your MySQL query statement below
SELECT distinct stock_name, 
 SUM(CASE WHEN operation LIKE 'Buy' THEN -(price) ELSE +(price) END) AS capital_gain_loss
FROM Stocks
GROUP BY 1;