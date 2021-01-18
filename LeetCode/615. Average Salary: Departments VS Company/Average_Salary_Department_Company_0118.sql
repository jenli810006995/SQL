select ds.pay_month, department_id, 
       case when department_avg > company_avg then 'higher'
       when department_avg < company_avg then 'lower'
       else 'same' end as comparison
from 
(
  select department_id, avg(amount) as department_avg, date_format(pay_date, '%Y-%m') as pay_month
  from salary s
  join employee e
  on s.employee_id = e.employee_id
  group by department_id, pay_month
) ds join
(
  select avg(amount) as company_avg, date_foramt(pay_date, '%Y-%m') as pay_month
  from salary
  group by pay_month
) ca
on ds.pay_month = ca.pay_month
;
-- Link: https://leetcode.com/problems/average-salary-departments-vs-company/
