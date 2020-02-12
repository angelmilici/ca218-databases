SELECT p.productName, count(DISTINCT(o.customerNumber)) AS CustomerCount, p.productCode, SUM(od.quantityOrdered) AS totalQtyOrdered, (p.MSRP - p.buyPrice) * SUM(od.quantityOrdered) AS TotalProfit
FROM orderdetails od
JOIN products p ON p.productCode = od.productCode
JOIN orders o ON od.orderNumber = o.orderNumber
WHERE (SELECT SUM(quantityOrdered) FROM orderdetails) > (SELECT SUM(od.quantityOrdered)
FROM orderdetails od
JOIN products p ON od.productCode = p.productCode
WHERE p.productCode = "S18_3685")
GROUP BY od.productCode
#HAVING QuantityOrdered > 200 AND CustomerCount > 20
ORDER BY CustomerCount DESC