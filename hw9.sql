--33) city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT CI.name, CO.name
FROM CITY CI
INNER JOIN COUNTRY CO
ON CI.country_id = CO.id;

--34) customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT C.payment_id, P.payment_id, C.first_name, C.last_name
FROM CUSTOMER C
INNER JOIN PAYMENT P
ON C.id = P.customer_id;

--35) customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT R.id, C.first_name, C.last_name
FROM CUSTOMER C
INNER JOIN RENTAL R
ON C.rental_id = R.id;
