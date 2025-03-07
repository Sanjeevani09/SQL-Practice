-- Tables and Relationships:
-- Customer_Master
-- Stores customer details.

-- Cust_Id (PK) – Unique customer ID
-- C_first_name – First name
-- C_middle_name – Middle name
-- C_last_name – Last name
-- Gender – Gender of customer
-- Street – Address street
-- City – Customer’s city
-- Phoneno – Contact number
-- Email – Email address
-- Event_Master
-- Stores event details.

-- Event_Id (PK) – Unique event ID
-- Category – Category of the event (e.g., wedding, conference, etc.)
-- Venue_Master
-- Stores venue information and links to events.

-- Venue_Id (PK) – Unique venue ID
-- Event_Id (FK) – Associated event ID (foreign key from Event_Master)
-- Venue_name – Name of the venue
-- Location – Address/location of the venue
-- Venue_Cost – Cost of the venue
-- Food – Type of food available
-- Capacity – Capacity of the venue
-- Wifi – Whether WiFi is available
-- Description – Additional venue details
-- Enquiry_Master
-- Stores enquiries made by customers.

-- Enquiry_Id (PK) – Unique enquiry ID
-- Cust_Id (FK) – Customer who made the enquiry (foreign key from Customer_Master)
-- Venue_Id (FK) – Venue that was enquired about (foreign key from Venue_Master)
-- Start_Date – Event start date
-- End_Date – Event end date
-- Status – Current status of the enquiry
-- Booking_Master
-- Stores confirmed bookings.

-- Booking_Id (PK) – Unique booking ID
-- Enquiry_Id (FK) – Enquiry associated with this booking (foreign key from Enquiry_Master)
-- Total_amount – Total booking amount
-- Mode_of_Pay – Payment mode
-- Relationships:
-- Customer_Master (Cust_Id) → Enquiry_Master (Cust_Id)
-- A customer can make multiple enquiries.
-- Event_Master (Event_Id) → Venue_Master (Event_Id)
-- Each venue is associated with an event category.
-- Venue_Master (Venue_Id) → Enquiry_Master (Venue_Id)
-- Each enquiry is linked to a venue.
-- Enquiry_Master (Enquiry_Id) → Booking_Master (Enquiry_Id)
-- Each booking is linked to a prior enquiry.

-- QUESTION - 
-- Write a query to display the customer's first name, venue id, start date and end date of all enquiries.
-- Sort the results based on the customer's first name in ascending order.

-- (Hint: Retrieve records from the Customer_Master and Enquiry_Master.)


-- CODE - 
SELECT c.C_first_name, e.Venue_Id, e.Start_Date, e.End_Date FROM Customer_Master c 
JOIN Enquiry_Master e ON c.Cust_Id = e.Cust_Id
ORDER BY c.C_first_name;