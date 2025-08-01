CREATE OR REPLACE TABLE SNOWFLAKE_LEARNING_DB.DATA_PIPELINE.TIMESHEETS (
	TIMESHEET_ID NUMBER(38,0) NOT NULL,
	EMPLOYEE_ID NUMBER(38,0),
	PROJECT_ID NUMBER(38,0),
	WORK_DATE DATE,
	HOURS_WORKED NUMBER(5,2),
	PRIMARY KEY (TIMESHEET_ID),
	FOREIGN KEY (EMPLOYEE_ID) REFERENCES SNOWFLAKE_LEARNING_DB.DATA_PIPELINE.EMPLOYEES(EMPLOYEE_ID),
	FOREIGN KEY (PROJECT_ID) REFERENCES SNOWFLAKE_LEARNING_DB.DATA_PIPELINE.PROJECTS(PROJECT_ID)
);
