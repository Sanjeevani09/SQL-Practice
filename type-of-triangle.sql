/*
QUESTION - 
https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true


CODE - 
*/
SELECT 
            IF(A+B >C,
                CASE 
                        WHEN A=B AND A=C THEN "Equilateral"
                        WHEN A=B AND A!=C THEN "Isosceles"
                        WHEN A!=B AND A=C THEN "Isosceles"
                        WHEN A!=B AND A!=C THEN "Scalene"
                END ,
             "Not A Triangle" ) 
FROM TRIANGLES;
