SELECT w.first_name, w.last_name, b.date, COUNT(b.bill_id) AS bill_count
FROM Waiters w
JOIN Bills b ON w.waiter_id = b.waiter_id
GROUP BY w.waiter_id, b.date
HAVING COUNT(b.bill_id) >= 2;

SELECT r.room_name, COUNT(t.table_id) AS table_count
FROM Rooms r
JOIN Tables t ON r.room_id = t.room_id
WHERE t.capacity > 6
GROUP BY r.room_id, r.room_name;

SELECT r.room_name, SUM(b.amount) AS total_amount
FROM Rooms r
JOIN Teams t ON r.room_id = t.room_id
JOIN Bills b ON t.waiter_id = b.waiter_id
GROUP BY r.room_id, r.room_name;

SELECT hw.first_name, hw.last_name, SUM(b.amount) AS total_bill_amount
FROM Waiters hw
JOIN Teams t ON hw.waiter_id = t.headwaiter_id
JOIN Bills b ON t.waiter_id = b.waiter_id
GROUP BY hw.waiter_id, hw.first_name, hw.last_name
ORDER BY total_bill_amount DESC;

SELECT c.first_name, c.last_name, AVG(b.amount) AS average_spent
FROM Customers c
JOIN Bills b ON c.customer_id = b.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING AVG(b.amount) > 400;

SELECT w.first_name, w.last_name, b.date, COUNT(b.bill_id) AS bill_count
FROM Waiters w
JOIN Bills b ON w.waiter_id = b.waiter_id
GROUP BY w.waiter_id, b.date
HAVING COUNT(b.bill_id) >= 3;
