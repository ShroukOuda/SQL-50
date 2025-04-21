/* Write your T-SQL query statement below */
Select
Project.project_id,
Round(Avg(Employee.experience_years*1.0), 2)
As
average_years
From
Project
Join
Employee
On
Project.employee_id = Employee.employee_id
Group By
Project.project_id;