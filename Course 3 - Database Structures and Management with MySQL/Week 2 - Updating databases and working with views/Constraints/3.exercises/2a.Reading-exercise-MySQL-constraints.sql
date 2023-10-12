# Task 1 solution: Practice using Key constraints
CREATE DATABASE IF NOT EXISTS Mangata_Gallo;
USE Mangata_Gallo;

#Task 2 solution: Practice using Domain constraints
CREATE table Staff (
StaffID INT NOT NULL PRIMARY KEY,
PhoneNumber INT NOT NULL UNIQUE,
FullName VARCHAR(100) NOT NULL);

CREATE TABLE ContractInfo (
ContractID INT NOT NULL PRIMARY KEY,
StaffID INT NOT NULL,
Salary DECIMAL(7,2) NOT NULL,
Location VARCHAR(50) NOT NULL DEFAULT "Texas",
StaffType VARCHAR(20) NOT NULL CHECK(StaffType='Junior' OR StaffType='Senior'));

##Task 3 solution: Practice using Referential integrity constraints
ALTER TABLE ContractInfo
ADD CONSTRAINT FK_StaffID_ContractInfo
FOREIGN KEY (StaffID) REFERENCES Staff(StaffID);

SHOW COLUMNS FROM ContractInfo;

