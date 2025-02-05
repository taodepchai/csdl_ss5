use bt1;

SELECT c.name, c.phone, o.order_id, o.total_amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.status = 'Pending' AND o.total_amount > 300000;

SELECT c.name, c.email, o.order_id
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.status = 'Completed' OR o.status IS NULL;

SELECT c.name, c.address, o.order_id, o.status
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.status IN ('Pending', 'Cancelled');

SELECT c.name, c.phone, o.order_id, o.total_amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.total_amount BETWEEN 300000 AND 600000;