/*
QUESTION - 
https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/?envType=study-plan-v2&envId=top-sql-50

CODE - 
*/

SELECT e1.employee_id, e1.name,
COUNT(e2.reports_to) AS reports_count,
ROUND(AVG(e2.age)) AS average_age
FROM Employees e1
INNER JOIN Employees e2
ON e1.employee_id = e2.reports_to
GROUP BY e1.employee_id
ORDER BY e1.employee_id


OR

SELECT e.employee_id,
    e.name, 
    COUNT(r.reports_to) as reports_count, 
    ROUND(AVG(r.age),0) AS average_age
FROM Employees e
JOIN Employees r ON e.employee_id = r.reports_to
GROUP BY e.employee_id, e.name
ORDER BY e.employee_id;