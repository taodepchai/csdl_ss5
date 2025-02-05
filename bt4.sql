use bt1;

SELECT category, MAX(price) AS max_price
FROM products
GROUP BY category;

SELECT product_name, category, price, stock_quantity
FROM products
LIMIT 2 OFFSET 2;

SELECT product_name, category, price, stock_quantity
FROM products
WHERE category = 'Electronics'
ORDER BY price DESC;

SELECT product_name, category, price, stock_quantity
FROM products
WHERE category = 'Clothing'
ORDER BY price ASC
LIMIT 1;
