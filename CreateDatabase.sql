CREATE DATABASE  Liem_Warehouse

USE Liem_Warehouse

CREATE TABLE Staff(
	StaffId CHAR(5) PRIMARY KEY
	CHECK(StaffId LIKE 'ST[0-9][0-9][0-9]'),
	StaffName VARCHAR(255),
	StaffGender VARCHAR(6)
	CHECK(StaffGender LIKE 'Male' OR StaffGender LIKE 'Female'),
	StaffDOB DATE,
	StaffAddress VARCHAR(255),
	StaffEmail VARCHAR(255)
	CHECK(StaffEmail LIKE '%@%'),
	StaffPhone NUMERIC(13,0),
	StaffSalary NUMERIC(11,2)
)

CREATE TABLE Factory(
	FactoryId CHAR(5) PRIMARY KEY 
	CHECK(FactoryId LIKE'FC[0-9][0-9][0-9]'),
	FactoryName VARCHAR(50) 
	CHECK (LEN(FactoryName) BETWEEN 10 AND 50),
	FactoryAddress VARCHAR(255) 
	CHECK(FactoryAddress LIKE '%Street'),
	Supervisor VARCHAR(255),
	Rating DECIMAL(3,2) 
	CHECK(Rating BETWEEN 0 AND 5),
	StartDate DATE
)

CREATE TABLE Distributor(
	DistributorId CHAR(5) PRIMARY KEY
	CHECK(DistributorId LIKE'DI[0-9][0-9][0-9]'),
	DistributorName VARCHAR(255),
	DistributorAddress VARCHAR(255),
	CompanyName VARCHAR(255)
	CHECK (CompanyName LIKE '%Company'),
	CompanyLocation VARCHAR(255),
	DistributorEmail VARCHAR(255) 
	CHECK(DistributorEmail LIKE '%@%'),
	DistributorPhone NUMERIC(13,0)
)

CREATE TABLE Category(
	CategoryId CHAR(5) PRIMARY KEY
	CHECK(CategoryId LIKE'CT[0-9][0-9][0-9]'),
	CategoryName VARCHAR(255)
)

CREATE TABLE Item(
	ItemId CHAR(5) PRIMARY KEY
	CHECK(ItemId LIKE'IT[0-9][0-9][0-9]'),
	ItemName VARCHAR(255),
	SupplyPrice NUMERIC,
	DistributePrice NUMERIC,
	Stock INT NOT NULL,
	Material VARCHAR(255),
	Descriptions VARCHAR(255) DEFAULT 'No Description',
	CategoryId CHAR(5) FOREIGN KEY REFERENCES Category(CategoryId) ON DELETE SET NULL ON UPDATE CASCADE,
)

CREATE TABLE Transactions(
	TransactionId CHAR(5) PRIMARY KEY 
	CHECK(TransactionId LIKE'TR[0-9][0-9][0-9]'),
	TransactionDate DATE
	CHECK ((TransactionDate) <= GETDATE())
)


CREATE TABLE SupplyTransaction(
	SupplyId CHAR(5) PRIMARY KEY 
	CHECK(SupplyId LIKE'SU[0-9][0-9][0-9]'),
	SupplyStaffId CHAR(5) FOREIGN KEY REFERENCES Staff(StaffId) ON DELETE SET NULL ON UPDATE CASCADE,
	SupplyTransactionId CHAR(5) FOREIGN KEY REFERENCES Transactions(TransactionId) ON DELETE SET NULL ON UPDATE CASCADE,
	FactoryId CHAR(5) FOREIGN KEY REFERENCES Factory(FactoryId) ON DELETE SET NULL ON UPDATE CASCADE,
	SupplyDate DATE 
	CHECK((SupplyDate) <= GETDATE()),
	SupplyItemId CHAR(5) FOREIGN KEY REFERENCES Item(ItemId) ON DELETE SET NULL ON UPDATE CASCADE,
	Quantity INT
)

CREATE TABLE DistributeTransaction(
	DistributeId CHAR(5) PRIMARY KEY 
	CHECK(DistributeId LIKE'DT[0-9][0-9][0-9]'),
	DistributeStaffId CHAR(5) FOREIGN KEY REFERENCES Staff(StaffId) ON DELETE SET NULL ON UPDATE CASCADE,
	DistributeTransactionId CHAR(5) FOREIGN KEY REFERENCES Transactions(TransactionId) ON DELETE SET NULL ON UPDATE CASCADE,
	DistributorId CHAR(5) FOREIGN KEY REFERENCES Distributor(DistributorId) ON DELETE SET NULL ON UPDATE CASCADE,
	DistributorCity VARCHAR(255),
	DistributeDate DATE 
	CHECK((DistributeDate) <=GETDATE()),
	DistributeItemId CHAR(5) FOREIGN KEY REFERENCES Item(ItemId) ON DELETE SET NULL ON UPDATE CASCADE,
	Quantity INT
)