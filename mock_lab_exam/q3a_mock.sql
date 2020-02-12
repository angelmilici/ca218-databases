SELECT p.productCode, p.productName, od.quantityOrdered, count(DISTINCT c.customerNumber) AS cust_num, (p.MSRP - p.buyPrice) AS total_profit
FROM products p
JOIN orderdetails od ON p.productCode = od.productCode
JOIN orders o ON od.orderNumber = o.orderNumber
JOIN customers c ON o.customerNumber = c.customerNumber
WHERE od.quantityOrdered > (SELECT od.quantityOrdered
FROM orderdetails od
JOIN products p ON od.productCode = p.productCode
WHERE p.productCode = "S18_3685"
GROUP BY p.productName)
GROUP BY p.productName;