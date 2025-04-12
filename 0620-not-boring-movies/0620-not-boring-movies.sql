/* Write your T-SQL query statement below */
Select
*
From
Cinema
Where
id % 2 != 0
And
description <> 'boring'
Order By
rating 
Desc;