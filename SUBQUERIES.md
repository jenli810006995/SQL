# Query 1 - List all employee names and their salaries who make more than the highest paid manager in the company.

SELECT E.FIRST_NAME, E.LAST_NAME, E.SALARY FROM RITDB_EMPLOYEE E WHERE E.SALARY > ALL(SELECT M.SALARY FROM RITDB_MANAGER M)

# Query 1b – modify the above query using the MAX function 

SELECT E.FIRST_NAME, E.LAST_NAME, E.SALARY FROM RITDB_EMPLOYEE E WHERE E.SALARY > (SELECT MAX(M.SALARY) FROM RITDB_MANAGER M)

# Query 2 - List all employee names with their salaries and their respective manager names and their salaries for all employees 
# in the database who make more than their respective managers.

SELECT  M.MANAGER_NAME, M.SALARY, E.FIRST_NAME, E.LAST_NAME, E.SALARY FROM RITDB_EMPLOYEE E INNER JOIN 
RITDB_MANAGER M ON E.MANAGER = M.MANAGER_ID WHERE E.SALARY > M.SALARY

# Query 3 - write a query to find out the name of the manager whose employees have the highest average salaries. 
# You should approach this from two different angles. 

# Q3a (write without using the ROWNUM function or RANK function)

SELECT M.MANAGER_NAME, M.SALARY FROM RITDB_MANAGER M 
WHERE M.MANAGER_ID = (SELECT E.MANAGER FROM RITDB_EMPLOYEE E GROUP BY E.MANAGER 
HAVING AVG(E.SALARY)
=(SELECT MAX(AVG(E.SALARY)) FROM RITDB_EMPLOYEE E GROUP BY E.MANAGER))

# Q3b (write using the ROWNUM or RANK function)

SELECT M.MANAGER_NAME, M.SALARY FROM RITDB_MANAGER M 
WHERE M.MANAGER_ID = (SELECT MANAGER FROM (SELECT MANAGER, AVG(SALARY) 
FROM RITDB_EMPLOYEE E 
GROUP BY E.MANAGER ORDER BY AVG(E.SALARY) DESC) WHERE ROWNUM =1)
