create function getNthHighestSalary(n int) returns int
begin

-- for rank always order the column first
-- Remember to use distinct

set n = n - 1;
return (select distinct salary from Employee order by salary desc limit 1 offset n);
end
