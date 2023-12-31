#CREATE DATABASE Mangata_Gallo;
#USE Mangata_Gallo;

#Task 1
CREATE TABLE Staff (
	StaffID INT,
    FullName VARCHAR(100),
    PhoneNumber VARCHAR(10)
); 

show columns from Staff;
#TASK 2
ALTER TABLE STAFF MODIFY StaffID INT NOT NULL PRIMARY KEY,
MODIFY FullName VARCHAR(100) NOT NULL, 
MODIFY PhoneNumber INT NOT NULL;

#Task 3
ALTER TABLE STAFF ADD COLUMN Role VARCHAR(50) NOT NULL;

#Task 4
ALTER TABLE STAFF DROP COLUMN PhoneNumber;