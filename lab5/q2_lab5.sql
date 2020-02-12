SELECT pl.productLine, pl.textDescription, COUNT(od.quantityOrdered) AS Sales
FROM productlines pl
JOIN products p ON pl.productLine = p.productLine
JOIN orderdetails od ON p.productCode = od.productCode
GROUP BY pl.productLine
ORDER BY Sales DESC LIMIT 3;