/*
QUESTION - 

https://www.codechef.com/practice/course/sql-case-study/SQLCS04/problems/SQLP058?tab=statement

Query-6
Task
How many bookings were made on each booking date?


CODE - 
*/
SELECT booking_date, COUNT(*) FROM bookings
GROUP BY booking_date;