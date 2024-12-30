/*
QUESTION - 
https://www.codechef.com/practice/course/sql-case-study/SQLCS04/problems/SQLP062?tab=statement

Query-10
Task
Retrieve the customer names and the number of bookings made by each customer as booking_count, sorted in descending order of the booking count.
Expected Output Format
name
booking_count


CODE - 
*/
SELECT c.name, COUNT(b.booking_id) AS booking_count FROM customers c
LEFT JOIN bookings b ON c.customer_id = b.customer_id
GROUP BY c.customer_id
ORDER BY booking_count DESC;
