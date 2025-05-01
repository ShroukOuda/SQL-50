/* Write your T-SQL query statement below */
Select teacher_id,
Count(distinct subject_id) As cnt
From
Teacher
Group By
teacher_id;