create function getNthHighestSalary(n int) returns int
begin
  set n = n - 1;
  return(select distinct salary from Employee order by salary desc limit 1 offset n);
end

-- Link: https://leetcode.com/problems/nth-highest-salary/
