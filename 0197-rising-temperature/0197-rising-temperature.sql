/* Write your T-SQL query statement below */
Select
Distinct
Curr.id
From
Weather Prev,
Weather Curr
Where
DateDiff(Day, Prev.recordDate, Curr.recordDate) = 1
And
Curr.temperature > Prev.temperature;