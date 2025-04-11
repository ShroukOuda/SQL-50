/* Write your T-SQL query statement below */
Select
Visits.customer_id,
Count(*) 
As count_no_trans 
From
Visits
Left Outer Join
Transactions
On
Visits.visit_id = Transactions.visit_id
Where
Transactions.transaction_id is Null
Group By
Visits.customer_id;