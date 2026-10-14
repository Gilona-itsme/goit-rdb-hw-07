use mydb;


SELECT id, date, YEAR(date) AS year, MONTH(date) AS month, DAY(date) AS day
FROM orders;


SELECT id, date, date + INTERVAL 1 DAY AS date_plus
FROM orders;


SELECT id, date, UNIX_TIMESTAMP(date) AS countup_date
FROM orders;


SELECT COUNT(*) AS count
FROM orders
WHERE date BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';


SELECT id, date, JSON_OBJECT('id', id, 'date', date) AS data_object
FROM orders

