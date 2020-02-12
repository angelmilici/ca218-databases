SELECT f.title, c.name, f.release_year, f.description
FROM film f
JOIN film_category fc
ON f.film_id = fc.film_id
JOIN category c
ON c.category_id = fc.category_id
WHERE f.description LIKE "%Moose%"