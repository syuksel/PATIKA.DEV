--13) film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.
SELECT DISTINCT replacement_cost FROM film;

--14) film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
SELECT COUNT(DISTINCT replacement_cost) FROM film;

--15) film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
SELECT COUNT(*) FROM film
WHERE title LIKE 'T%' AND rating = 'G';

--16) country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
SELECT COUNT(*) FROM Country
Where country LIKE '_____';

--17) city tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?
SELECT COUNT(*) FROM city
WHERE city ILIKE '%r';
