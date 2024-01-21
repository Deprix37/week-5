--SELECT title, rental_rate, length FROM film --WHERE title  LIKE 'A%' --ORDER BY rental_rate ASC, length DESC;
--SELECT * FROM film WHERE rental_rate = 4.99 ORDER BY length LIMIT 20;
--select MAX(rental_rate) FROM film;
--SELECT ROUND(AVG(length),3) FROM film;
--SELECT SUM(rental_rate) FROM film;
--SELECT MAX(length), MIN(length), SUM(replacement_cost) FROM film;
--SELECT MAX(length) FROM film WHERE rental_rate  IN(0.99, 2.99);
--SELECT * FROM film WHERE replacement_cost = 14.99 AND rental_rate = 0.99 ORDER BY length DESC -LIMIT 7;
--SELECT rental_rate, COUNT(*) FROM film GROUP BY rental_rate;
--SELECT replacement_cost, rental_rate, MIN(length) FROM film
--GROUP BY replacement_cost, rental_rate
--ORDER BY replacement_cost, rental_rate DESC;
--SELECT staff_id, COUNT(*) FROM payment
--GROUP BY staff_id
--HAVING COUNT(*) > 7300;
--SELECT customer_id, SUM(amount) FROM payment
--GROUP BY customer_id 
--HAVING SUM(amount) > 100;
-----------------------------------------------ODEV 5----------------------------------------------------------
--1) film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en uzun (length) 5 filmi sıralayınız.
--SELECT * FROM film WHERE title LIKE '%n' ORDER BY length DESC LIMIT 5;
-----------------------------------------------------------------------------------------------------------
--2)film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en kısa (length) ikinci(6,7,8,9,10) 5 filmi(6,7,8,9,10) sıralayınız.
--SELECT * FROM film WHERE title LIKE '%n' ORDER BY length OFFSET 5 LIMIT 5;
-------------------------------------------------------------------------------------------------------------------------------------------
--3)customer tablosunda bulunan last_name sütununa göre azalan yapılan sıralamada store_id 1 olmak koşuluyla ilk 4 veriyi sıralayınız. 
--SELECT * FROM customer WHERE store_id = 1 ORDER BY last_name LIMIT 4;
-------------------------------------------------------ODEV6------------------------------------------------------------------------------
--1)film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
--SELECT AVG(rental_rate) FROM film;
--2)film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
--SELECT COUNT(*) FROM film WHERE title LIKE 'C%';
--3)film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
--SELECT MAX(length) FROM fil WHERE rental_rate = 0.99;
--4)film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?
--SELECT COUNT (DISTINCT replacement_cost) FROM film WHERE length > 150;

-----------------------------------------------ODEV 7----------------------------------------------------------
--1)film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
--SELECT rating FROM film GROUP BY rating;
--2)film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
--SELECT replacement_cost, COUNT(*) FROM film GROUP BY replacement_cost HAVING COUNT(*) >50;
--3)customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir?
--SELECT store_id, COUNT(*) FROM customer GROUP BY store_id;
--4)city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.
SELECT country_id, COUNT(city) FROM city
GROUP BY country_id
ORDER BY COUNT(city) DESC
LIMIT 1;











