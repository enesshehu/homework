SELECT DISTINCT w.first_name, w.last_name
FROM Waiters w
JOIN Bills b ON w.waiter_id = b.waiter_id
JOIN Customers c ON b.customer_id = c.customer_id
WHERE c.first_name = 'Tanya' AND c.last_name = 'Singh';

SELECT DISTINCT t.date
FROM Teams t
JOIN Rooms r ON t.room_id = r.room_id
JOIN Waiters hw ON t.headwaiter_id = hw.waiter_id
WHERE hw.first_name = 'Charles' AND r.room_name = 'Green'
  AND t.date BETWEEN '2016-02-01' AND '2016-02-29';

SELECT DISTINCT w.first_name, w.last_name
FROM Waiters w
WHERE w.headwaiter_id = (
    SELECT headwaiter_id
    FROM Waiters
    WHERE first_name = 'Zoe' AND last_name = 'Ball'
);

SELECT c.first_name AS customer_name, b.amount, CONCAT(w.first_name, ' ', w.last_name) AS waiter_name
FROM Bills b
JOIN Customers c ON b.customer_id = c.customer_id
JOIN Waiters w ON b.waiter_id = w.waiter_id
ORDER BY b.amount DESC;

SELECT DISTINCT w.first_name, w.last_name
FROM Waiters w
JOIN Teams t ON w.waiter_id = t.waiter_id
WHERE t.team_id IN (
    SELECT DISTINCT t1.team_id
    FROM Bills b1
    JOIN Teams t1 ON b1.waiter_id = t1.waiter_id
    WHERE b1.bill_id IN ('00014', '00017')
);

SELECT DISTINCT w.first_name, w.last_name
FROM Waiters w
JOIN Teams t ON w.waiter_id = t.waiter_id
JOIN Rooms r ON t.room_id = r.room_id
WHERE r.room_name = 'Blue' AND t.date = '160312'

UNION

SELECT hw.first_name, hw.last_name
FROM Waiters hw
JOIN Teams t ON hw.waiter_id = t.headwaiter_id
JOIN Rooms r ON t.room_id = r.room_id
WHERE r.room_name = 'Blue' AND t.date = '160312';
