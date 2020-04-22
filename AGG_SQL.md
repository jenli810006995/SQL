Query 1 – Write a query to select the ranking of every employee’s salary in the department_id 1 ordered from highest to lowest. 

SELECT DEPT_ID, FIRST_NAME, LAST_NAME, SALARY , 
RANK() OVER (PARTITION BY DEPT_ID ORDER BY SALARY DESC) "RANK" FROM TESTDB_EMPLOYEE
WHERE DEPT_ID = 1

Query 2 – Write a query to display employee information along with their department name and identify the ranking of the salaries from lowest to highest across all department ids.

SELECT E.DEPT_ID, E.FIRST_NAME, E.LAST_NAME, E.SALARY , D.DEPT_NAME, 
DENSE_RANK() OVER (PARTITION BY E.DEPT_ID ORDER BY E.SALARY) AS "DEPRANK" FROM TESTDB_EMPLOYEE E, 
TESTDB_DEPARTMENT D WHERE E.DEPT_ID = D.DEPT_ID AND D.DEPT_ID IN (1,2,3,4,5,6,7,8,9,10)

Query 3a – Assume that you do not know the number of departments and modify Query 2 to display the same information.  

SELECT E.DEPT_ID, E.FIRST_NAME, E.LAST_NAME, E.SALARY , D.DEPT_NAME, 
DENSE_RANK() OVER (PARTITION BY E.DEPT_ID ORDER BY E.SALARY) AS "DEPRANK" FROM TESTDB_EMPLOYEE E, 
TESTDB_DEPARTMENT D WHERE E.DEPT_ID = D.DEPT_ID AND D.DEPT_ID IN (SELECT DEPT_ID FROM TESTDB_DEPARTMENT)

Query 3b – Assume that you do not know the number of departments and modify Query 2 to display the same information but select the department_ids from the ritdb_employee table this time.

SELECT E.DEPT_ID, E.FIRST_NAME, E.LAST_NAME, E.SALARY , D.DEPT_NAME, 
DENSE_RANK() OVER (PARTITION BY E.DEPT_ID ORDER BY E.SALARY) AS "DEPRANK" FROM TESTDB_EMPLOYEE E, 
TESTDB_DEPARTMENT D WHERE E.DEPT_ID = D.DEPT_ID AND D.DEPT_ID IN (SELECT DISTINCT(DEPT_ID) FROM TESTDB_EMPLOYEE)

Query 3c – Modify query 3b to have the salaries ranked from highest to lowest and use the DENSERANK function instead.

SELECT E.DEPT_ID, E.FIRST_NAME, E.LAST_NAME, E.SALARY , D.DEPT_NAME, 
DENSE_RANK() OVER (PARTITION BY E.DEPT_ID ORDER BY E.SALARY DESC) AS "DEPRANK" FROM TESTDB_EMPLOYEE E, 
TESTDB_DEPARTMENT D WHERE E.DEPT_ID = D.DEPT_ID AND D.DEPT_ID IN (SELECT DISTINCT(DEPT_ID) FROM TESTDB_EMPLOYEE)

