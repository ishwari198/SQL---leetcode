# Write your MySQL query statement below
select 
CASE
    when id= (select MAX(id) from seat) ANd id%2 =1 Then id
    When id%2 = 1 
    Then id + 1
    ELSE 
     id- 1
END as id, student
from Seat
order by id;
    
