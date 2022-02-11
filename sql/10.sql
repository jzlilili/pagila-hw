/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */

SELECT title, film_id, COUNT(actor_id) AS actor_count
FROM film_actor
JOIN film USING (film_id)
GROUP BY title, film_id
ORDER BY "actor_count", title

