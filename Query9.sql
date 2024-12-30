/*
QUESTION - 
https://www.codechef.com/practice/course/sql-case-study/SQLCS04/problems/SQLP061?tab=statement

Query-9
Task
Find the customer id and name of the customer who made the first booking in the database.
Expected Output Format
customer_id
name


CODE - 
*/
SELECT b.customer_id, c.name FROM bookings b 
JOIN customers c ON b.customer_id = c.customer_id
ORDER BY booking_date
LIMIT 1;