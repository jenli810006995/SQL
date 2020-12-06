-- first, create the company average table

(select avg(amount) as company_avg_salary, date_format(pay_date, '%Y-%m') as pay_month
from salary 
group by pay_month) company_average


-- second create department average salary table

(select department_id, avg(amount) as department_avg_salary, date_format(pay_date, '%Y-%m') as pay_month
from salary 
left join employee
on salary.employee_id = employee.employee_id
group by department_id, pay_month) department_average

-- use case when (flow control) to combine the two

select department_average.pay_month, department_average.department_id,
case when department_average.department_avg_salary > company_average.company_avg_salary then 'higher'
     when department_average.department_avg_salary < company_average.company_avg_salary then 'lower'
     else 'same'
     end as comparison
from
(select avg(amount) as company_avg_salary, date_format(pay_date, '%Y-%m') as pay_month
from salary 
group by pay_month) company_average
left join
(select department_id, avg(amount) as department_avg_salary, date_format(pay_date, '%Y-%m') as pay_month
from salary 
left join employee
on salary.employee_id = employee.employee_id
group by department_id, pay_month) department_average
on company_average.pay_month = department_average.pay_month;




