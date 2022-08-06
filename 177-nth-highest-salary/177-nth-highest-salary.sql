CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
SET N=N-1;
  RETURN (
      # Write your MySQL query statement below.
      # SELECT IFNULL((SELECT distinct salary FROM Employee ORDER BY 1 DESC LIMIT N,1),null)
      SELECT distinct salary FROM Employee
      ORDER BY 1 DESC
      LIMIT 1 OFFSET N
  );
END