SELECT f.film_id, f.title, f.release_year
FROM film f
LEFT JOIN film_actor fa
on f.film_id = fa.film_id
WHERE fa.film_id is NULL