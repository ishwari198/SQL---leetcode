# Write your MySQL query statement below

with a AS (
    select player_id ,
    MIN(event_date) as event_date
    from Activity 
    group by player_id
)
select ROUND(count(b.event_date)/count(*),2) as fraction
from Activity b
RIGHT JOIN  a
ON b.player_id = a.player_id
AND
DATE_SUB(b.event_date, INTERVAL 1 DAY) = a.event_date




    
