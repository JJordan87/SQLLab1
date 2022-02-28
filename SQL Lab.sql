--SELECT * FROM Customers;

--SELECT DISTINCT Country FROM Customers ;

--SELECT * FROM Customers
--WHERE LEFT(CustomerID, 2) = 'BL';

--SELECT TOP (100) [OrderID]
--      ,[CustomerID]
--      ,[EmployeeID]
--      ,[OrderDate]
--      ,[RequiredDate]
--      ,[ShippedDate]
--      ,[ShipVia]
--      ,[Freight]
--      ,[ShipName]
--      ,[ShipAddress]
--      ,[ShipCity]
--      ,[ShipRegion]
--      ,[ShipPostalCode]
--      ,[ShipCountry]
--  FROM [Northwind].[dbo].[Orders]

--SELECT * FROM Customers
--WHERE PostalCode = '1010' OR '3012' OR '12209' OR '05023';

--#6
--SELECT * FROM Orders
--WHERE ShipRegion <> 'NULL';

--SELECT * FROM Customers 
--ORDER BY Country, City;

--INSERT INTO Customers(CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax)
--VALUES ('BANG', 'Energy Drink', 'Marty Funkhowser', 'CEO', '654 Bang St.', 'Sarasota', 'NA', '34230', 'USA', '555-867-5309', NULL);

--UPDATE Orders 
--SET ShipRegion = 'EuroZone'
--WHERE ShipCountry = 'France' 

--DELETE FROM [Order Details]
--WHERE Quantity = 1;

--SELECT CustomerID FROM Orders
--WHERE OrderID = 10290;


--12
--SELECT * FROM Orders
--JOIN Customers ON Orders.CustomerID = Customers.CustomerID; 

--13
--SELECT FirstName FROM Employees
--WHERE ReportsTo IS NULL;

--14
--SELECT FirstName FROM Employees
--WHERE ReportsTo = 2;

---------EXTRA CHALLENGES--------------
--#1
--SELECT AVG(Quantity) AS Average FROM [Order Details] 
--GROUP BY OrderID;

--SELECT MAX(Quantity) AS Max FROM [Order Details] 
--GROUP BY OrderID;

---#1 alternative
SELECT OrderID, MIN(Quantity) AS Min, AVG(Quantity) AS Average, MAX(Quantity) AS Max FROM  [Order Details] 
GROUP BY OrderID;

--#2
---^^^^

