# Write your MySQL query statement below
with lastperson as(
    select person_name,weight,
    sum(weight) over(order by turn) as total_weight
    from Queue
)

select person_name  
from lastperson where total_weight <= 1000
order by  total_weight desc limit 1
