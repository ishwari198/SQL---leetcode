# Write your MySQL query statement below
select contest_id,round(count(r.contest_id)/(select count(user_id) from Users) *100,2) as percentage  from users u
 JOIN Register R
ON u.user_id = R.user_id 
group by contest_id order by percentage desc , contest_id asc