# Write your MySQL query statement below
WITH Categories AS (
    SELECT 'Low Salary' As category 
    UNION 
    SELECT 'Average Salary'
    UNION 
    SELECT 'High Salary' 
),

 salary_category as (
    select account_id,
    CASE 
    when income < 20000
    then "Low Salary"
    when income Between 20000 AND 50000
    then "Average Salary"
    when income > 50000
    then "High Salary"
    END as category
    from Accounts
   
)

select c.category , COALESCE(COUNT(sc.account_id), 0) AS accounts_count from Categories c Left Join 
salary_category  sc on  sc.category = c.category
 group by category order by accounts_count desc
