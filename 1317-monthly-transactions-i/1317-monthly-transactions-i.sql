/* Write your T-SQL query statement below */
Select Format(trans_date, 'yyyy-MM') As month,
country,
Count(state) As trans_count,
Count(case when state='approved' then 1 end) As approved_count,
Sum(amount) As trans_total_amount,
Sum(case when state='approved' then amount else 0 end) As approved_total_amount
From 
Transactions
Group by
Format(trans_date, 'yyyy-MM'),
country
Order by
month, 
country