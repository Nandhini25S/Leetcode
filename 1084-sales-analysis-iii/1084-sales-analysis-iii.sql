# Write your MySQL query statement below
SELECT distinct p.product_id, product_name
FROM Product p INNER JOIN Sales s
ON p.product_id=s.product_id
GROUP BY 1,2
HAVING MIN(sale_date) >= '2019-01-01' AND MAX(sale_date) <= '2019-03-31';