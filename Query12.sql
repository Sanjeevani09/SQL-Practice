/*
QUESTION - 
https://www.codechef.com/practice/course/sql-case-study/SQLCS04/problems/SQLP064?tab=statement

Query-12
Task
Retrieve the details of the customer who has bought the most number of tickets.
Expected Output Format
customer_id
name
gender
email_id
age


CODE - 
*/
SELECT * FROM customers
WHERE customer_id = (
SELECT customer_id FROM bookings
GROUP BY customer_id
ORDER BY SUM(ticket_quantity) DESC 
LIMIT 1 );