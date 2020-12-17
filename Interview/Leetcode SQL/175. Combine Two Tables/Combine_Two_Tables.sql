-- use address table as the right hand side table
-- Link: https://leetcode.com/problems/combine-two-tables/

select FirstName, LastName, City, State
from Person left join Address
on Person.PersonId = Address.PersonId;

