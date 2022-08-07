# Write your MySQL query statement below
SELECT distinct l1.num AS ConsecutiveNums
FROM Logs l1 
JOIN Logs l2 ON l1.id=l2.id+1 AND l1.num=l2.num
JOIN Logs l3 ON l2.id=l3.id+1 AND l2.num=l3.num

# WHERE l1.id = l2.id-1 AND l2.id = l3.id-1  #checking if they have consecutive ids
#  AND l1.num = l2.num AND l2.num = l3.num; #checking if the number is the same for all