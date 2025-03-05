-- QUESTION 1 (TEKSTAC)
-- Write a query to insert the following data into the Booking_Master table:

-- CODE
INSERT INTO Booking_Master VALUES("B101","EN1001",40000,"Cash");
INSERT INTO Booking_Master VALUES("B102","EN1012",750000,"Online");
INSERT INTO Booking_Master VALUES("B103","EN1016",16000,"Cheque");
INSERT INTO Booking_Master VALUES("B104","EN1007",10000,"Cash");


-- QUESTION 2 (TEKSTAC)
-- Write a query to insert the following data into the Customer_Master table:

-- CODE
INSERT INTO Customer_Master (Cust_Id, C_first_name, Gender, City, Phoneno) VALUES("C001", "Liam","Male","New York", "9235234530");
INSERT INTO Customer_Master (Cust_Id, C_first_name, Gender, City, Phoneno) VALUES("C002", "Olivia","Female","Boston", "9235234531");
INSERT INTO Customer_Master (Cust_Id, C_first_name, Gender, City, Phoneno) VALUES("C003", "James","Male","Austin", "9235234532");
INSERT INTO Customer_Master (Cust_Id, C_first_name, Gender, City, Phoneno) VALUES("C004", "Henry","Male","San Antinio", "9235234533");
INSERT INTO Customer_Master (Cust_Id, C_first_name, Gender, City, Phoneno) VALUES("C005", "Noah","Male","Chicago", "923523454");