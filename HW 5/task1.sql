-- 1
SELECT Bill_Date, Total 
FROM Bills 
JOIN Customers ON Bills.Customer_No = Customers.Customer_No 
WHERE Customers.First_Name = 'Bob' AND Customers.Last_Name = 'Crow';

-- 2
SELECT DISTINCT CONCAT(First_Name, ' ', Last_Name) AS Customer_Name
FROM Customers
WHERE Last_Name = 'Smith'
ORDER BY Customer_Name DESC;

-- 3
SELECT DISTINCT CONCAT(First_Name, ' ', Last_Name) AS Customer_Name
FROM Customers
WHERE First_Name LIKE '% C%'
ORDER BY Customer_Name;

-- 4
SELECT CONCAT(First_Name, ' ', Last_Name) AS Headwaiter_Name
FROM Staff
WHERE Role = 'Headwaiter';

-- 5
SELECT * 
FROM Bills 
WHERE Bill_Date BETWEEN 160201 AND 160229;

-- 6
SELECT DISTINCT Bill_Date
FROM Bills 
WHERE Bill_Date BETWEEN 150101 AND 151231
ORDER BY Bill_Date;
