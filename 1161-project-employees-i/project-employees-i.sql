# Write your MySQL query statement below
select p.project_id, ROUND(AVG(experience_years),2) as average_years 
 from project p 
JOIN Employee E
ON E.employee_id = p.employee_id 
group by project_id