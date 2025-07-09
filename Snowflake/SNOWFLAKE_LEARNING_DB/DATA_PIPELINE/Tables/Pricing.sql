CREATE OR REPLACE TABLE Pricing (
    Department_ID INT PRIMARY KEY,
    Department_Name STRING
);

INSERT INTO Pricing (Department_ID, Department_Name) VALUES
(101, 'Engineering'),
(102, 'Marketing'),
(103, 'Human Resources'),
(104, 'Finance');
