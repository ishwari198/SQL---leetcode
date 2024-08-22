# Write your MySQL query statement below
with cte1 As(
    select visited_on, sum(amount) as total_amount
    from Customer
    group by visited_on
),
cte2 As(
    select 
        visited_on,
        SUM(total_amount) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS amount
        from cte1
        order by visited_on
        Limit 100000
        Offset 6
)

select visited_on,amount, Round(amount/7,2) As average_amount 
from cte2



