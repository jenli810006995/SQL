select employee_id 
from Employees where manager_id in (select employee_id from Employees where manager_id in (select employee_id from Employees where manager_id in
(select employee_id from Employees where manager_id = 1))) and employee_id <> manager_id;

