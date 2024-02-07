CREATE DATABASE ShopDB;
USE ShopDB;
CREATE TABLE Products(
	ID INT AUTO_INCREMENT primary KEY,
    Name VARCHAR(100),
    Description VARCHAR(100),
    Price INT,
    WarehouseAmount INT
);
CREATE TABLE Customers(
	ID INT AUTO_INCREMENT primary KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Address VARCHAR(100)
);
CREATE TABLE Orders(
	ID INT AUTO_INCREMENT primary KEY,
    CustomerID INT,
    Date DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(ID) ON DELETE SET NULL
);
CREATE TABLE OrderItems(
	ID INT AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(ID) ON DELETE SET NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ID) ON DELETE SET NULL
);
