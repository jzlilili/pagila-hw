/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customers have payed for the film.
 * Use tables payment, rental, inventory, and film. 
 */

SELECT title, SUM(amount) AS "profit"
FROM payment
JOIN rental USING (rental_id)
JOIN inventory USING (inventory_id)
JOIN film USING (film_id)
GROUP BY title
ORDER BY "profit" DESC

