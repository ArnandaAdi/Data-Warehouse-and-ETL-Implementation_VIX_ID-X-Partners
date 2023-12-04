--Create table and column--

USE DWH_Project;

CREATE TABLE DimCustomer (
    CustomerID INT PRIMARY KEY NOT NULL,
	CustomerName VARCHAR(50),
	Age INT NOT NULL,
	Gender VARCHAR(50) NOT NULL,
	City VARCHAR(50) NOT NULL,
	NoHP VARCHAR(50) NOT NULL
);

CREATE TABLE DimProduct (
    ProductID INT PRIMARY KEY NOT NULL,
    ProductName VARCHAR(255) NOT NULL,
	ProductCategory VARCHAR(255) NOT NULL,
	ProductUnitPrice INT
);

CREATE TABLE DimStatusOrder (
    StatusID INT PRIMARY KEY NOT NULL,
    StatusOrder VARCHAR(50) NOT NULL,
	StatusOrderDesc VARCHAR(50) NOT NULL
);

CREATE TABLE FactSalesOrder (
    OrderID INT PRIMARY KEY NOT NULL,
	CustomerID INT NOT NULL,
	ProductID INT NOT NULL,
	Quantity INT NOT NULL,
	Amount INT NOT NULL,
	StatusID INT NOT NULL,
	OrderDate DATE NOT NULL,
	FOREIGN KEY (CustomerID) REFERENCES DimCustomer(CustomerID),
	FOREIGN KEY (ProductID) REFERENCES DimProduct(ProductID),
	FOREIGN KEY (StatusID) REFERENCES DimStatusOrder(StatusID)
)

SELECT*FROM DimCustomer

SELECT*FROM DimProduct

SELECT*FROM DimStatusOrder

SELECT*FROM FactSalesOrder;