/* Write your T-SQL query statement below */
Select 
x.employee_id,
x.name,
Count(y.reports_to) As reports_count,
Round(Avg(Cast(y.age As Float)), 0) As average_age
From 
Employees x
inner join
Employees y
On
y.reports_to = x.employee_id
group by
x.employee_id, x.name
order by x.employee_id;
