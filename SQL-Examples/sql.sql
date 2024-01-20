--SELECT * FROM film
--WHERE  NOT length > 50 AND NOT (rental_rate = 2.99 or rental_rate = 4.99);

--SELECT * FROM film
--WHERE replacement_cost BETWEEN 12.99 AND 16.98;

--SELECT first_name, last_name FROM actor
--WHERE first_name IN ('Penelope' , 'Nick' , 'Ed');

--SELECT * FROM film
--WHERE rental_rate IN(0.99 , 2.99, 4.99) AND replacement_cost IN (12.99, 15.99, 28,99);
--SELECT country FROM country
--WHERE country LIKE 'A%a';
--SELECT country FROM country
--WHERE country LIKE '_____%n'
--SELECT title FROM film
--WHERE title ILIKE '%t%'
--SELECT * FROM film
--WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99
--SELECT DISTINCT replacement_cost FROM film
--SELECT COUNT ( DISTINCT replacement_cost) FROM film
--SELECT  COUNT(title) FROM film 
--WHERE title LIKE 'T%' AND rating = 'G'
--SELECT COUNT (country) FROM country
--WHERE country LIKE '_____'
SELECT COUNT (city) FROM city
WHERE city ILIKE '%R'




