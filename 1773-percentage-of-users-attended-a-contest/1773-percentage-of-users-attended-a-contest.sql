/* Write your T-SQL query statement below */
Select
Register.contest_id,
Round((Count(distinct Register.user_id)*100.0)/(Select Count(*) From Users), 2)
As
percentage
From
Users
inner join
Register
On
Users.user_id = Register.user_id
Group By
Register.contest_id
Order By percentage DESC,
Register.contest_id;