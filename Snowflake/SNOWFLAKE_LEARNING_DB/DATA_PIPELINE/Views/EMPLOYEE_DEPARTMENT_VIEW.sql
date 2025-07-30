create or replace view EMPLOYEE_DEPARTMENT_VIEW(
	EMPLOYEE_ID,
	NAME,
	DEPARTMENT_NAME,
	HIRE_DATE
) as
SELECT
    e.Employee_ID,
    e.Name,
    d.Department_Name,
    e.Hire_Date
FROM Employees e
JOIN Departments d ON e.Department_ID = d.Department_ID;;

