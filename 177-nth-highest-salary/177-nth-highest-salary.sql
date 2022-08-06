CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
SET N=N-1;
  RETURN (
      # Write your MySQL query statement below.
      SELECT IFNULL((SELECT distinct salary FROM EMPLOYEE ORDER BY 1 DESC LIMIT N,1),null)
  );
END