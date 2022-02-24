--1
SELECT p.ProductName AS 'Urun Adi',AVG(p.UnitPrice) AS 'Ort. Fiyat',AVG(od.UnitPrice) AS 'Ort. Satis Fiyatı'
FROM Products p 
INNER JOIN [Order Details] od ON od.ProductID = p.ProductID 
GROUP BY p.ProductName
ORDER BY p.ProductName 

--2
SELECT e.FirstName + ' ' + e.LastName AS 'Calisanin Adı',SUM(od.UnitPrice) AS 'Toplam Satıs'
FROM Employees e
INNER JOIN Orders o ON o.EmployeeID = e.EmployeeID 
INNER JOIN [Order Details] od ON od.OrderID=o.OrderID 
GROUP BY e.FirstName, e.LastName 

--3

------

--4
SELECT TOP 1 e.FirstName + ' ' + e.LastName AS 'Calisanin Adi' ,SUM(od.UnitPrice) AS 'Toplam satis'
FROM Orders o 
INNER JOIN Employees e ON o.EmployeeID=e.EmployeeID 
INNER JOIN [Order Details] od ON od.OrderID=o.OrderID 
WHERE o.OrderDate >= '1997-01-01' AND o.OrderDate < '1998-01-01'
GROUP BY e.FirstName,e.LastName
ORDER BY SUM(od.UnitPrice) DESC
