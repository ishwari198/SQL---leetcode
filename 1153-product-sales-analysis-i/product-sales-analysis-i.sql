# Write your MySQL query statement below
select  p.product_name,year, price 
from sales s
 join product p
on s.product_id = p.product_id 
group by s.sale_id

