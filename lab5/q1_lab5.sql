SELECT c.contactFirstName, c.contactLastName, p.amount as classicmodels, sc.first_name, sc.last_name, sp.amount AS sakila, (sp.amount + p.amount) AS TotalAmount
FROM customers c
JOIN payments p ON p.customerNumber = c.customerNumber
JOIN sakila.customer sc ON c.customerNumber = sc.customer_id
JOIN sakila.payment sp ON sp.customer_id = sc.customer_id
GROUP BY sc.customer_id
ORDER BY TotalAmount DESC;