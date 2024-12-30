/* 
QUESTION - 
https://www.codechef.com/practice/course/sql-case-study/SQLCS04/problems/SQLP060?tab=statement

Query-8
Task
Calculate the total number of bookings as total_bookings made for each movie.
Expected Output Format
title
total_bookings


CODE - 
*/
SELECT m.title, COUNT(b.booking_id) AS total_bookings FROM movies m 
JOIN bookings b ON m.movie_id = b.movie_id
GROUP BY m.movie_id;