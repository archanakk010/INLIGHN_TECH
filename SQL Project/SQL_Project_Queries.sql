
-- EASY LEVEL
-- Q1
SELECT employee_id, first_name, last_name, title, levels
FROM employee
ORDER BY levels DESC, employee_id ASC
LIMIT 1;

-- Q2
SELECT billing_country AS country, COUNT(*) AS invoice_count
FROM invoice
GROUP BY billing_country
ORDER BY invoice_count DESC, country ASC;

-- Q3
SELECT invoice_id, customer_id, total
FROM invoice
ORDER BY total DESC, invoice_id ASC
LIMIT 3;

-- Q4
SELECT billing_city AS city, SUM(total) AS total_amount
FROM invoice
GROUP BY billing_city
ORDER BY total_amount DESC, city ASC
LIMIT 1;

-- Q5
SELECT c.customer_id,
       c.first_name || ' ' || c.last_name AS customer_name,
       SUM(i.total) AS total_spent
FROM customer c
JOIN invoice i ON c.customer_id = i.customer_id
GROUP BY c.customer_id, customer_name
ORDER BY total_spent DESC, customer_name ASC
LIMIT 1;

-- MODERATE LEVEL
-- Q1
SELECT DISTINCT c.email, c.first_name, c.last_name
FROM customer c
JOIN invoice i       ON c.customer_id = i.customer_id
JOIN invoice_line il ON i.invoice_id = il.invoice_id
JOIN track t         ON il.track_id = t.track_id
JOIN genre g         ON t.genre_id = g.genre_id
WHERE LOWER(g.name) = 'rock'
ORDER BY c.email;

-- Q2
SELECT a.artist_id, a.name AS artist_name, COUNT(*) AS rock_track_count
FROM artist a
JOIN album al ON a.artist_id = al.artist_id
JOIN track t  ON al.album_id = t.album_id
JOIN genre g  ON t.genre_id = g.genre_id
WHERE LOWER(g.name) = 'rock'
GROUP BY a.artist_id, artist_name
ORDER BY rock_track_count DESC, artist_name ASC
LIMIT 10;

-- Q3
WITH avg_len AS (
    SELECT AVG(milliseconds) AS avg_ms FROM track
)
SELECT t.track_id, t.name, t.milliseconds
FROM track t, avg_len
WHERE t.milliseconds > avg_len.avg_ms
ORDER BY t.milliseconds DESC, t.name ASC;

-- ADVANCED LEVEL
-- Q1
WITH per_line AS (
    SELECT i.customer_id,
           a.artist_id,
           (il.unit_price * il.quantity) AS line_revenue
    FROM invoice_line il
    JOIN invoice i ON il.invoice_id = i.invoice_id
    JOIN track t   ON il.track_id = t.track_id
    JOIN album al  ON t.album_id = al.album_id
    JOIN artist a  ON al.artist_id = a.artist_id
),
agg AS (
    SELECT customer_id, artist_id, ROUND(SUM(line_revenue), 2) AS amount_spent
    FROM per_line
    GROUP BY customer_id, artist_id
)
SELECT c.customer_id,
       c.first_name || ' ' || c.last_name AS customer_name,
       a.name AS artist_name,
       amount_spent
FROM agg
JOIN customer c ON agg.customer_id = c.customer_id
JOIN artist a   ON agg.artist_id = a.artist_id
ORDER BY customer_name ASC, amount_spent DESC, artist_name ASC;

-- Q2
WITH genre_counts AS (
    SELECT c.country,
           g.name AS genre_name,
           COUNT(*) AS purchase_count
    FROM customer c
    JOIN invoice i       ON c.customer_id = i.customer_id
    JOIN invoice_line il ON i.invoice_id = il.invoice_id
    JOIN track t         ON il.track_id = t.track_id
    JOIN genre g         ON t.genre_id = g.genre_id
    GROUP BY c.country, genre_name
),
ranked AS (
    SELECT country, genre_name, purchase_count,
           ROW_NUMBER() OVER (PARTITION BY country ORDER BY purchase_count DESC, genre_name ASC) AS rn
    FROM genre_counts
)
SELECT country, genre_name AS top_genre, purchase_count
FROM ranked
WHERE rn = 1
ORDER BY country ASC;

-- Q3
WITH spend AS (
    SELECT c.country,
           c.customer_id,
           c.first_name || ' ' || c.last_name AS customer_name,
           SUM(i.total) AS total_spent
    FROM customer c
    JOIN invoice i ON c.customer_id = i.customer_id
    GROUP BY c.country, c.customer_id, customer_name
),
ranked AS (
    SELECT country, customer_id, customer_name, total_spent,
           ROW_NUMBER() OVER (PARTITION BY country ORDER BY total_spent DESC, customer_name ASC) AS rn
    FROM spend
)
SELECT country, customer_id, customer_name, ROUND(total_spent, 2) AS total_spent
FROM ranked
WHERE rn = 1
ORDER BY country ASC;
