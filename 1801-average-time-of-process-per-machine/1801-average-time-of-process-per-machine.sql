/* Write your T-SQL query statement below */
Select 
A1.machine_id,
Round(Avg(A2.timestamp - A1.timestamp), 3) As processing_time
From
Activity A1
inner join
Activity A2
On
A1.machine_id = A2.machine_id
And
A1.process_id = A2.Process_id
And
A1.activity_type = 'start'
And
A2.activity_type = 'end'
group by A1.machine_id;