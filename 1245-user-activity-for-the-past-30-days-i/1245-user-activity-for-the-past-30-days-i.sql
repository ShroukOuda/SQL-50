/* Write your T-SQL query statement below */
Select
activity_date As day,
Count(distinct user_id) As active_users
From
Activity
Where
activity_date
Between
DateAdd(Day, -29, '2019-07-27')
And
'2019-07-27'
Group By
activity_date;
