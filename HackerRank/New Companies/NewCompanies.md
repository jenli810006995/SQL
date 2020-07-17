* Time: July 15 2020

Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy:

Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.

Note:

The tables may contain duplicate records.
The company_code is string, so the sorting should not be numeric. For example, if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2.

Sample Output

```
C1 Monika 1 2 1 2
C2 Samantha 1 1 2 2
```
Explanation

In company C1, the only lead manager is LM1. There are two senior managers, SM1 and SM2, under LM1. There is one manager, M1, under senior manager SM1. There are two employees, E1 and E2, under manager M1.

In company C2, the only lead manager is LM2. There is one senior manager, SM3, under LM2. There are two managers, M2 and M3, under senior manager SM3. There is one employee, E3, under manager M2, and another employee, E4, under manager, M3.

* Solution 1:
* Referred to https://nifannn.github.io/2017/10/21/SQL-Notes-Hackerrank-New-Companies/
```
select c.company_code, c.founder, 
        count(distinct l.lead_manager_code), count(distinct s.senior_manager_code),
        count(distinct m.manager_code), count(distinct e.employee_code)
from company c, lead_manager l, senior_manager s, manager m, employee e
where c.company_code = l.company_code and
      l.lead_manager_code = s.lead_manager_code and
      s.senior_manager_code = m.senior_manager_code and
      m.manager_code = e.manager_code
group by c.company_code, c.founder order by c.company_code;

```

* Solution 2: Use join on instead of where statement

```
select c.company_code, c.founder,
        count(distinct l.lead_manager_code), count(distinct s.senior_manager_code),
        count(distinct m.manager_code), count(distinct e.employee_code)
from company c join lead_manager l on c.company_code = l.company_code join
     senior_manager s on l.lead_manager_code = s.lead_manager_code join
     manager m on s.senior_manager_code = m.senior_manager_code join
     employee e on m.manager_code = e.manager_code
group by c.company_code, c.founder order by c.company_code

```
