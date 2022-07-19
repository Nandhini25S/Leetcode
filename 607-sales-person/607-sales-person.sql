# Write your MySQL query statement below
SELECT name
FROM Salesperson
WHERE sales_id NOT IN (SELECT sales_id FROM Orders 
                       WHERE com_id NOT IN (SELECT com_id FROM Company 
                                            WHERE name NOT LIKE 'RED'));