/* Write your T-SQL query statement below */
Select 
EmployeeUNI.unique_id,
Employees.name
From Employees
Left Outer Join
EmployeeUNI
On
Employees.id = EmployeeUNI.id;