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

# Which last names appear more than once?
# Which actor has appeared in the most films?
# Is ‘Academy Dinosaur’ available for rent from Store 1?
# Insert a record to represent Mary Smith renting ‘Academy Dinosaur’ from Mike Hillyer at Store 1 today .
# When is ‘Academy Dinosaur’ due?
# What is that average running time of all the films in the sakila DB?
# What is the average running time of films by category?
# Why does this query return the empty set?