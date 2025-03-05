-- QUESTION 2 (TEKSTAC)
-- Write a query to add a not null constraint to the wifi column in the Venue_Master table.

-- CODE

ALTER TABLE Venue_Master MODIFY Wifi VARCHAR(10) NOT NULL;

-- QUESTION 3 (TEKSTAC)
-- Write a query to add a constraint foreign key to the Enquiry Id column in the Booking_Master table.

-- CODE
ALTER TABLE Booking_Master ADD CONSTRAINT fk_booking FOREIGN KEY(Enquiry_Id) REFERENCES Enquiry_Master(Enquiry_Id);


-- QUESTION 4 (TEKSTAC)
-- Write a query to change the column size for description as varchar(30) and add a column contact_no varchar(10) before the column location in Venue_Master table

-- CODE
ALTER TABLE Venue_Master MODIFY Description VARCHAR(30);
ALTER TABLE Venue_Master ADD Contact_no VARCHAR(10) AFTER Venue_name;


-- QUESTION 5 (TEKSTAC)
-- Write a query to remove the foreign key constraint named 'fk_bookings' from the Booking Master table.


-- CODE
AFTER TABLE Booking_Master DROP FOREIGN KEY fk_bookings;