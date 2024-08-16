/*
QUESTION -
https://leetcode.com/problems/students-and-examinations/submissions/1358126957/?envType=study-plan-v2&envId=top-sql-50

CODE - 
*/
SELECT stu.student_id, stu.student_name, sub.subject_name, COUNT(exam.subject_name) AS attended_exams FROM Students stu
CROSS JOIN Subjects sub
LEFT JOIN Examinations exam ON stu.student_id = exam.student_id AND sub.subject_name = exam.subject_name
GROUP BY stu.student_id, stu.student_name, sub.subject_name
ORDER BY stu.student_id, sub.subject_name;