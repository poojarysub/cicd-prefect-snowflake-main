create or replace view HIGH_EARNING_EMPLOYEES(
	EMPLOYEE_ID,
	NAME,
	TOTAL_COMPENSATION
) as
SELECT
    e.Employee_ID,
    e.Name,
    s.Base_Salary + s.Bonus AS Total_Compensation
FROM Employees e
JOIN Salaries s ON e.Employee_ID = s.Employee_ID
WHERE s.Base_Salary + s.Bonus > 100000;;

