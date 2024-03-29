UPDATE customer
SET fax = NULL
WHERE fax IS NOT NULL;

UPDATE customer
SET company = 'Self'
WHERE company IS NULL;

UPDATE customer
SET last_name = 'Thompson'
WHERE customer_id = 8;

UPDATE customer
SET support_rep_id = 4
WHERE email = 'luisrojas@yahoo.cl';

UPDATE track
SET composer = 'The darkness around us'
WHERE genre_id IN (
	SELECT genre_id FROM genre
  WHERE composer IS NULL
)