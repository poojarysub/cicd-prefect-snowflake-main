CREATE OR REPLACE VIEW SNOWFLAKE_LEARNING_DB.DATA_PIPELINE.DEPARTMENT_SALARY_AVG(
	DEPARTMENT_NAME,
	AVG_SALARY
) AS
SELECT
    D.DEPARTMENT_NAME,
    ROUND(AVG(SH.NEW_SALARY), 4) AS AVG_SALARY
FROM SNOWFLAKE_LEARNING_DB.DATA_PIPELINE.SALARY_HISTORY SH
JOIN SNOWFLAKE_LEARNING_DB.DATA_PIPELINE.EMPLOYEES E ON SH.EMPLOYEE_ID = E.EMPLOYEE_ID
JOIN SNOWFLAKE_LEARNING_DB.DATA_PIPELINE.DEPARTMENTS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
GROUP BY D.DEPARTMENT_NAME;
