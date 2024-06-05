# Write your MySQL query statement below

with RankedSales As(
    select product_id,
    year, 
    quantity,
    price,
     RANK() over(PARTITION by product_id order by year) as rnk
    FROM sales
   
   
)
select product_id,
year as first_year,quantity,price
from RankedSales 
where rnk=1
