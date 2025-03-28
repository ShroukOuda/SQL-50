/* Write your T-SQL query statement below */
Select
tweet_id
From
Tweets
Where
Len(content) > 15;