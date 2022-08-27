# Write your MySQL query statement below
SELECT * FROM Stadium
WHERE people>=100
AND
(((id+1 IN (SELECT id FROM stadium WHERE people>=100) 
            AND id+2 IN (SELECT id FROM stadium WHERE people>=100)))
OR
 ((id+1 IN (SELECT id FROM stadium WHERE people>=100) 
            AND id-1 IN (SELECT id FROM stadium WHERE people>=100)))
OR
 ((id-1 IN (SELECT id FROM stadium WHERE people>=100) 
            AND id-2 IN (SELECT id FROM stadium WHERE people>=100))))
ORDER BY 1;