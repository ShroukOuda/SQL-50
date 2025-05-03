/* Write your T-SQL query statement below */
Select Max(num) As num
From
(
    Select 
    num
    From
    MyNumbers
    Group By
    num
    Having
    Count(num) = 1
)As Sub_Query;
