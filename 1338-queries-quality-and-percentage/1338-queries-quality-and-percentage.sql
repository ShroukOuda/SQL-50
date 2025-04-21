/* Write your T-SQL query statement below */
Select 
query_name,
Round(Avg(Cast(rating As Float)/position), 2)
As
quality,
Round(Sum(case 
            when rating < 3 then 1
            else 0
           end)*100.0 / Count(query_name), 2)
As
poor_query_percentage
From
Queries
Group By query_name;
