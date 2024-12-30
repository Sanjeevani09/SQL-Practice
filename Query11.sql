/*
QUESTION - 
https://www.codechef.com/practice/course/sql-case-study/SQLCS04/problems/SQLP063?tab=statement

Query-11
Task
Retrieve the total no of seats booked for a time later than 20:00:00 as total_seats_booked.
Expected Output Format
total_seats_booked


CODE - 
*/
SELECT SUM(
CASE 
WHEN timings > '20:00:00' THEN ticket_quantity
ELSE 0
END)
AS total_seats_booked FROM bookings;