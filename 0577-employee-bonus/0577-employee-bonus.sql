/* Write your T-SQL query statement below */
Select 
Employee.name,
Bonus.bonus
From
Employee
Left Outer Join
Bonus
On Employee.empId = Bonus.empId
Where
Bonus.bonus < 1000
OR
Bonus.bonus Is Null;