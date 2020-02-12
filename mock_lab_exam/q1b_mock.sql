SELECT f.title, c.name
FROM film f, category c, film_category fc
WHERE c.category_id = fc.category_id AND f.film_id = fc.film_id
AND f.title LIKE 'A%'
GROUP BY f.title