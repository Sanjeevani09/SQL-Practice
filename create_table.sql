-- QUESTION 1 (Tekstac)
-- Refer to the below schema and write a query to create the Customer_Master table with the constraints mentioned.


-- CODE

CREATE TABLE Customer_Master(
    Cust_Id VARCHAR(10) PRIMARY KEY,
    C_first_name VARCHAR(30),
    C_middle_name VARCHAR(30),
    C_last_name VARCHAR(30),
    Gender VARCHAR(10),
    Street VARCHAR(30),
    City VARCHAR(30),
    Phoneno VARCHAR(20),
    Email VARCHAR(30)
);
