/* SQL "Sakila" database query exercises - phase 1 */

-- Database context
USE sakila;

-- Your solutions...

# Which actors have the first name ‘Scarlett’
SELECT * FROM actor WHERE first_name = 'Scarlett';

# Which actors have the last name ‘Johansson’
SELECT * FROM actor_info WHERE last_name = 'Johansson';

# How many distinct actors last names are there?
SELECT Count(DISTINCT last_name) FROM actor;

# Which last names are not repeated?
SELECT DISTINCT last_name FROM actor;

# Which last names appear more than once?
SELECT last_name FROM actor GROUP BY last_name HAVING COUNT(*) > 1;

# Which actor has appeared in the most films?
SELECT a.first_name, a.last_name, COUNT(fa.actor_id) as 'number of films' fROM actor a JOIN film_actor fa ON a.actor_id = fa.actor_id GROUP BY fa.actor_id ORDER BY COUNT(fa.actor_id) DESC LIMIT 1;

# Is ‘Academy Dinosaur’ available for rent from Store 1?
# Yes
SELECT
f.title, i.store_id
FROM film f
JOIN inventory i ON i.film_id = f.film_id
WHERE i.store_id = 1;

# Insert a record to represent Mary Smith renting ‘Academy Dinosaur’ from Mike Hillyer at Store 1 today .
INSERT INTO rental (rental_date, inventory_id, customer_id, return_date, staff_id)
VALUES (TIMESTAMP('2022-01-11'), 1, 1, null, 1);

# When is ‘Academy Dinosaur’ due?
SELECT * FROM 

# What is that average running time of all the films in the sakila DB?


# What is the average running time of films by category?


# Why does this query return the empty set?


