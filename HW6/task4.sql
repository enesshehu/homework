SELECT DISTINCT c.first_name, c.last_name
FROM Bills b
JOIN Customers c ON b.customer_id = c.customer_id
JOIN Teams t ON b.waiter_id = t.waiter_id
JOIN Waiters hw ON t.headwaiter_id = hw.waiter_id
WHERE b.amount > 450.00 AND hw.first_name = 'Charles';

SELECT hw.first_name, hw.last_name
FROM Customers c
JOIN Bills b ON c.customer_id = b.customer_id
JOIN Teams t ON b.waiter_id = t.waiter_id
JOIN Waiters hw ON t.headwaiter_id = hw.waiter_id
WHERE c.first_name = 'Nerida' AND b.date = '2016-01-11';

SELECT c.first_name, c.last_name
FROM Customers c
JOIN Bills b ON c.customer_id = b.customer_id
WHERE b.amount = (SELECT MIN(amount) FROM Bills);

SELECT w.first_name, w.last_name
FROM Waiters w
LEFT JOIN Bills b ON w.waiter_id = b.waiter_id
WHERE b.bill_id IS NULL;

SELECT c.first_name AS customer_name, hw.first_name AS headwaiter_first_name, 
       hw.last_name AS headwaiter_last_name, r.room_name
FROM Bills b
JOIN Customers c ON b.customer_id = c.customer_id
JOIN Teams t ON b.waiter_id = t.waiter_id
JOIN Waiters hw ON t.headwaiter_id = hw.waiter_id
JOIN Rooms r ON t.room_id = r.room_id
WHERE b.amount = (SELECT MAX(amount) FROM Bills);
