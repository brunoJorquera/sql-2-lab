SELECT *
FROM invoice i
Join invoice_line il
On i.invoice_id = il.invoice_id
WHERE unit_price > 0.99;

SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
Join customer c
On i.customer_id = c.customer_id;

SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e
On c.support_rep_id = e.employee_id;

SELECT al.title, ar.name
FROM album al
JOIN artist ar
ON al.artist_id = ar.artist_id;

SELECT pt.track_id
FROM playlist_track pt
JOIN playlist p 
On pt.playlist_id = p.playlist_id
WHERE p.name ='Music'

SELECT tr.name
FROM track tr
JOIN playlist_track p
ON tr.track_id = p.track_id;

SELECT tr.name, p.name
FROM track tr
JOIN playlist_track pt
ON tr.track_id = pt.track_id
JOIN playlist p
ON p.playlist_id = pt.playlist_id

SELECT tr.name, a.title
FROM track tr
JOIN album a
ON tr.album_id = a.album_id
JOIN genre g
On tr.genre_id = g.genre_id
WHERE g.name = 'Alternative & Punk'