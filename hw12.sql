--43) film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
SELECT COUNT(*)
FROM film
WHERE length >
(
	SELECT AVG(length)
	FROM film
);

--44) film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
SELECT COUNT(*)
FROM film
WHERE rental_rate =
(
	SELECT MAX(rental_rate)
	FROM film
);

--45) film tablosunda en düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri sıralayınız.
SELECT
FROM film
WHERE id = ANY
{
	SELECT id 
	FROM film
	WHERE rental_rate = ALL
	(
		SELECT MIN(rental_rate)
		FROM film	
	)
	UNION
	SELECT id 
	FROM film
	WHERE rental_rate = ALL
	(
		SELECT MIN(replacement_cost)
		FROM film	
	)
}

--46) payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
SELECT *
FROM customer
WWHERE id = ALL
(
	SELECT customer_id
	FROM payment
	WHERE shopping_number = ALL
	(
		SELECT MAX(shopping_number)
		FROM payment
	)
)
