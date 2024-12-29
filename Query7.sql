/*
QUESTION - 

https://www.codechef.com/practice/course/sql-case-study/SQLCS04/problems/SQLP059?tab=solution

Query-7
Task
Calculate the total cost of all bookings made by each customer as total_cost and display the customer's name along with the total cost. Group the results by customer_id.
Expected Output Format
name
total_cost


CODE -
 */
SELECT c.name, SUM(b.cost) AS total_cost FROM customers c 
JOIN bookings b ON c.customer_id = b.customer_id
GROUP BY c.customer_id;