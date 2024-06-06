# Write your MySQL query statement below

with reportcounts as(
    select reports_to as manager_id,
    count(*) as reports_count,
    Round(AVG(age)) as average_age
    from employees
    where reports_to IS NOT NULL
    group by reports_to
    
    
)

select e.employee_id,
e.name,
r.reports_count,
r.average_age
from reportcounts r Join
 Employees e
on  r.manager_id = e.employee_id
order by e.employee_id