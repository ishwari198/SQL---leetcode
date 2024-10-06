# Write your MySQL query statement below
with total_id as(
    select requester_id as id from
    RequestAccepted 
    union all
    select accepter_id as id from 
    RequestAccepted
)

select id, count(id) as num
from total_id
group by id
order by num desc limit 1