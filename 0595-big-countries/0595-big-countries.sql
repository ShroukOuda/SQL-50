/* Write your T-SQL query statement below */
Select 
name,
population,
area
From 
World
Where area >= 3000000
Or population >= 25000000;