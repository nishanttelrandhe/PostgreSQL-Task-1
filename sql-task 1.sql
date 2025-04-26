create table employee_details(
Employee_ID int,
FirstName varchar,
LastName varchar,
Email varchar,
PhoneNumber bigint,
HireDate date,
Salary int,
DepartmentID int,
IsActive boolean,
JobTitle varchar
);
copy employee_details from 'T:/sql  task 1/Employee_Details.csv'delimiter','csv header;

select * from employee_Details

1:-> CREATE TABLE EmployeeDetails (
    EmployeeID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    PhoneNumber VARCHAR(15) UNIQUE,
    HireDate DATE NOT NULL,
    Salary DECIMAL(10,2) CHECK ,
    DepartmentID INT NOT NULL,
    IsActive BOOLEAN DEFAULT TRUE,
    JobTitle VARCHAR(100) NOT NULL
);

2:- create table EmployeeDetails (FirstName varchar, LastName varchar, Email varchar, PhoneNumber bigint, HireDate date, Salary int, DepartmentID int, IsActive boolean, JobTitle varchar) 

insert INTO Employee_Details (FirstName, LastName, Email, PhoneNumber, HireDate, Salary, DepartmentID, IsActive, JobTitle)
values
('ashis', 'datta', 'ashsis.doe@example.com', '1234567890', '2023-01-10', 60000.00, 1, TRUE, 'data Engineer'),
('gaurav', 'mate', 'gaurav.smith@example.com', '1234567891', '2024-12-05', 75000.00, 2, TRUE, 'data analytics'),
('shubham', 'kakde', 'kakde.johnson@example.com', '1234567892', '2025-02-15', 50000.00, 3, TRUE, 'Business Analyst'),
('karan', 'mogre', 'karan.williams@example.com', '1234567893', '2020-07-21', 90000.00, 1, TRUE, 'Senior Developer'),
('ramu', 'tadas', 'ramu.brown@example.com', '1234567894', '2019-05-10', 45000.00, 4, TRUE, 'HR Specialist');

select * from employee_Details

3-copy employee_details from 'T:/sql  task 1/Employee_Details.csv'delimiter','csv header;

4-update EmployeeDetails
set DepartmentID = 0
where IsActive = FALSE;

5->  update Employee_Details
set Salary = Salary * 1.08
where IsActive = False
and DepartmentID = 0
and JobTitle IN ('HR Manager', 'Financial Analyst', 'Business Analyst', 'Data Analyst');

6->  select FirstName AS Name, LastName AS Surname
from Employee_Details
where Salary between 30000 and 50000;

7->  select *
from Employee_Details
where FirstName like 'A%';

8-> delete rows with EmployeeID from 1 to 5
 1. delete the rows from the Employee_Details table where the EmployeeID is between
1 and 5;
  










