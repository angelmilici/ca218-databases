SELECT cu.contactFirstName, sc.first_name
FROM customers cu
JOIN sakila.customer sc
ON cu.contactFirstName = sc.first_name
GROUP BY cu.contactFirstName;