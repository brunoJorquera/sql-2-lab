CREATE VIEW rock AS 
SELECT * FROM track
WHERE genre_id IN (
	SELECT genre_id FROM genre
  WHERE name = 'Rock'
);

CREATE VIEW classical_count AS
SELECT count(*)
FROM track t
JOIN playlist_track pt 
ON pt.track_id = t.track_id
JOIN playlist p
ON p.playlist_id = pt.playlist_id
WHERE p.name = 'classical';