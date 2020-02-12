SELECT AVG(amount), YEAR(paymentDate) AS period
FROM payments
WHERE paymentDate BETWEEN '2004-01-01' AND '2004-12-31'