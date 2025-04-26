--NWM More Queries--
--3/15/25

-- 1. Retrieve all customer details who have made a reservation in the past month.
SELECT c.* 
FROM Customers c
JOIN Reservations r ON c.customer_id = r.customer_id
WHERE r.reservation_date >= CURRENT_DATE - INTERVAL '1 month';

-- 2. List all menu items along with their categories and prices.
SELECT m.dish_name, mc.category_id, m.price 
FROM Menu m
JOIN Menu_Categories mc ON m.category_id = mc.category_id;


--3. Calculate the total revenue generated from orders in the last 6 months.
SELECT SUM(p.amount) AS total_revenue
FROM Payments p
WHERE p.payment_date >= CURRENT_DATE - INTERVAL '6 months';


--4. Find names of any staff members who have worked more than 10 shifts.

-- This works when the table is filled with the appropriate data
SELECT s.employee_id, s.first_name, s.last_name, COUNT(sh.shift_id) AS total_shifts
FROM Staff s
JOIN Shifts sh ON s.employee_id = sh.shift_id
GROUP BY s.employee_id, s.first_name, s.last_name
HAVING COUNT(sh.shift_id) > 10;


--5. Customers who have never placed an order before.
SELECT c.customer_id, c.first_name, c.last_name
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- 6. Find the average time between reservations and actual table occupancy.
SELECT AVG(EXTRACT(EPOCH FROM (o.order_time - r.reservation_time))/60) AS avg_wait_time_minutes
FROM Reservations r
JOIN Orders o ON r.table_id = o.table_id AND r.reservation_date = o.order_date;


-- 7. Determine the most frequently used payment method.
SELECT p.payment_method, COUNT(*) AS usage_count
FROM Payments p
GROUP BY p.payment_method
ORDER BY usage_count DESC
LIMIT 1;

-- 8. List the highest-paying customer along with total spent.
SELECT c.customer_id, c.first_name, c.last_name, SUM(p.amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Payments p ON o.order_id = p.order_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC
LIMIT 1;

-- 9. Find the top 5 most frequently ordered menu items

-- Works when the tables are populated
SELECT m.dish_name, COUNT(oi.order_id) AS order_count
FROM Order_Items oi
JOIN Menu m ON oi.order_id = m.dish_id
GROUP BY m.dish_name
ORDER BY order_count DESC
LIMIT 5;



