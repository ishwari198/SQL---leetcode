 # Write your MySQL query statement below
#Select s.student_id,s.student_name,e.subject_name,count(e.subject_name) as attended_exam from Students s
#LEFT JOIN  Examinations e ON s.student_id = e.student_id
#CROSS JOIN  Subjects su ON e.subject_name = su.subject_name
#group by e.subject_name,s.student_id, su.subject_name order by student_id ;

SELECT s.student_id, s.student_name, su.subject_name, COUNT(e.subject_name) AS attended_exams
FROM Students s
CROSS JOIN Subjects su
LEFT JOIN Examinations e ON s.student_id = e.student_id AND su.subject_name = e.subject_name
GROUP BY s.student_id, s.student_name, su.subject_name
ORDER BY s.student_id, su.subject_name;