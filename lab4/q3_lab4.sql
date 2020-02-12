SELECT cu.first_name, cu.last_name, MAX(p.amount) AS singlepayment
FROM customer cu
JOIN payment p
ON cu.customer_id = p.customer_id
WHERE p.amount > (SELECT MAX(p2.amount) FROM  payment p2
JOIN customer cu2 ON cu2.customer_id = p2.customer_id
WHERE cu2.first_name = 'Mary')
GROUP BY cu.customer_id
