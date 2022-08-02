--36) city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.
SELECT  CI.name, CO.name
FROM CITY CI
LEFT JOIN COUNTRY CO
ON CI.country_id = CO.id;

--37) customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.
SELECT P.id, C.first_name, P.last_name
FROM COSTUMER C
RIGHT JOIN PAYMENT P
ON C.payment_id = P.id;

--38) customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.
SELECT R.id, C.first_name, C.last_name
FROM CUSTOMER C
FULL JOIN RENTAL R
ON C.rental_id = R.id;
