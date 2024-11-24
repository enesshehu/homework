-- 1
SELECT SUM(Total) AS Income
FROM Bills;

-- 2
SELECT SUM(Total) AS `Feb Income`
FROM Bills
WHERE Bill_Date BETWEEN 160201 AND 160229;

-- 3
SELECT AVG(Total) AS Average_Bill
FROM Bills;

-- 4
SELECT MIN(Covers) AS Min, MAX(Covers) AS Max, AVG(Covers) AS Avg
FROM Tables
WHERE Room = 'Blue';

-- 5
SELECT COUNT(DISTINCT Table_No) AS Distinct_Tables
FROM Served_By
WHERE Waiter_No IN ('004', '002');
