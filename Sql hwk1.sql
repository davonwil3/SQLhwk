I did not get the same database as instructor so I will just answer with queries
Week 5 - Monday Questions 
1. How many actors are there with the last name ‘Wahlberg’? 
SELECT * FROM actors WHERE last_name = ‘Wahlberg’
2. How many payments were made between $3.99 and $5.99? 
SELECT * FROM payment WHERE amount > 3.99 AND final_total < 5.99
3. What film does the store have the most of? (search in inventory) 
SELECT film_id, COUNT(*) FROM inventory GROUP BY film_id
4. How many customers have the last name ‘William’? 
SELECT customer_id, Count(*) FROM customer Where last_name = ‘William’ GROUP BY customer_id
5. What store employee (get the id) sold the most rentals?
SELECT staff_id, Count(*)  FROM rental GROUP BY staff_id
6. How many different district names are there? 
SELECT  Count(distinct district) FROM address
7. What film has the most actors in it? (use film_actor table and get film_id) 8. From store_id 1, SELECT film_id, Count(actor_id) FROM film_actor GROUP BY film_id
8. how many customers have a last name ending with ‘es’? (use customer table) 
SELECT COUNT(*) FROM customer WHERE last_name LIKE '%es';
9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  with ids between 380 and 430? (use group by and having > 250) 
SELECT amount, COUNT(payment_id) FROM payment WHERE customer_id BETWEEN 381 AND 429 GROUP BY amount HAVING COUNT(payment_id) > 250;


10. Within the film table, how many rating categories are there? And what rating has the most  movies total?
-- Count the number of distinct rating categories
SELECT COUNT(DISTINCT rating) FROM film;
-- Find the rating with the most movies
SELECT rating, COUNT(*)  FROM film GROUP BY rating ORDER BY num_movie DESC



