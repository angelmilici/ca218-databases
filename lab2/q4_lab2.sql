SELECT productName, productline,
quantityInStock - (SELECT AVG(quantityInStock) FROM products) AS quantDiff
FROM products
WHERE quantityInStock > (SELECT AVG(quantityInStock) FROM products);