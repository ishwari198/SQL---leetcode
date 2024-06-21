# Write your MySQL query statement below
select 
product_id,
10 As price
from 
products 
Group by product_id
Having Min(change_date) > '2019-08-16'

UNION  

select product_id, 
new_price As price 
from 
products 
where (product_id , change_date) IN(
    select
    product_id,
    Max(change_date)
    from products
    where 
    change_date <='2019-08-16'
    Group by 
    product_id
)




