Query 1a - Write a query to list all employee ids with their first and last names alongside their corresponding manager first and last names. 

## SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, MANAGER, MANAGER_NAME FROM RITDB_EMPLOYEE JOIN RITDB_MANAGER ON RITDB_EMPLOYEE.MANAGER=RITDB_MANAGER.MANAGER_ID

Query 1b - Modify query 1 to write it using a JOIN ON clause

## SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, MANAGER, MANAGER_NAME FROM RITDB_EMPLOYEE JOIN RITDB_MANAGER ON RITDB_EMPLOYEE.MANAGER=RITDB_MANAGER.MANAGER_ID

Query 2 – write a query to list all employee ids, their first and last names along with their department id and department names using the JOIN USING clause assuming that department_id column is named the same across both the employee and department tables. 

## SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, DEPARTMENT_ID, DEPARTMENT_NAME FROM RITDB_EMPLOYEE JOIN RITDB_DEPARTMENT USING (DEPARTMENT_ID)

Query 3 – Write a query to obtain all members in the table who have the same first name as someone else's last name using a SELF JOIN

## SELECT E.FIRST_NAME , E.LAST_NAME, F.FIRST_NAME, F.LAST_NAME FROM RITDB_EMPLOYEE E JOIN RITDB_EMPLOYEE F ON E.FIRST_NAME = F.LAST_NAME

Query 4a – Write a query to obtain all employee names who have the same last name

## SELECT E.FIRST_NAME , E.LAST_NAME, F.FIRST_NAME, F.LAST_NAME FROM RITDB_EMPLOYEE E JOIN RITDB_EMPLOYEE F ON E.LAST_NAME = F.LAST_NAME

Query 4b - Modify query 4 to write a query to obtain all employee names who have the same first name

## SELECT E.FIRST_NAME , E.LAST_NAME, F.FIRST_NAME, F.LAST_NAME FROM RITDB_EMPLOYEE E JOIN RITDB_EMPLOYEE F ON E.FIRST_NAME = F.FIRST_NAME

Query 5 – Write a query that utilizes a NATURAL JOIN – Please note that a natural join compares all the common columns in the tables. It has no explicit join on clause. Instead, one is created implicitly using the common columns from the two tables. For e.g. use a natural join to list the full names, department ids, and department names of all employees.

## SELECT EMPLOYEE_ID, FIRST_NAME , LAST_NAME, DEPARTMENT_NAME, DEPARTMENT_NAME FROM RITDB_EMPLOYEE NATURAL JOIN RITDB_DEPARTMENT

Query 6 – Write a query that utilizes a CROSS JOIN – Please note that a cross join will give the cross product of the two tables. Perform a cross join the employee table with full names and salaries with the manager table

## SELECT E.FIRST_NAME, E.LAST_NAME, E.SALARY, M.MANAGER_NAME, M.SALARY FROM RITDB_EMPLOYEE E CROSS JOIN RITDB_MANAGER M

Query 7a - LEFT OUTER JOIN - This will display the all matching rows and the rows which are in left hand side table those that are not in right hand side table. Perform a left outer join to list all employees from the employee table with the manager table using employee_id common to both tables.

## SELECT E.FIRST_NAME, E.LAST_NAME FROM RITDB_EMPLOYEE E LEFT JOIN RITDB_MANAGER M ON E.EMPLOYEE_ID=M.EMPLOYEE_ID

Query 7b - RIGHT OUTER JOIN - This will display the all matching records and the records which are in right hand side table those that are not in left hand side table. Repeat the prior query but now right outer join the employee table with the manager table using employee_id common to both tables.

## SELECT E.FIRST_NAME, E.LAST_NAME FROM RITDB_EMPLOYEE E RIGHT OUTER JOIN RITDB_MANAGER M ON E.EMPLOYEE_ID=M.EMPLOYEE_ID

Query 7c - FULL OUTER JOIN - This will display the all matching records and the non-matching records from both tables. Perform a full outer join between the employee and manager tables using employee_id common to both tables.

##SELECT * FROM RITDB_EMPLOYEE E FULL OUTER JOIN RITDB_MANAGER M ON E.EMPLOYEE_ID=M.EMPLOYEE_ID

Query 8 - INNER JOIN - This will display all the records that have matched. Perform an inner join between the employee and manager tables using employee_id common to both tables.

##SELECT * FROM RITDB_EMPLOYEE E INNER JOIN RITDB_MANAGER M ON E.EMPLOYEE_ID=M.EMPLOYEE_ID
