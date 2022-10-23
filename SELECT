SELECT g.genre_name, COUNT(ga.musicians_id) FROM genres g
JOIN genres_musicians ga ON g.id = ga.genres_id
GROUP BY g.genre_name;

SELECT COUNT(*) Количество FROM tracks t
LEFT JOIN albums a on a.id = t.albums_id 
WHERE DATE_PART('year', a.realease_years_album::date) BETWEEN 2016 AND 2018;

SELECT a.title_album, AVG(t.lasting) FROM tracks t
LEFT JOIN albums a ON a.id = t.albums_id
GROUP BY a.title_album;

SELECT m.pen_name FROM musicians m 
JOIN albums_musicians am ON m.id = am.musicians_id 
JOIN albums a ON a.id = am.albums_id
WHERE NOT DATE_PART('year', a.realease_years_album::DATE) = 1975
GROUP BY m.pen_name;

SELECT DISTINCT s3.title_songbook FROM songbooks s3 
LEFT JOIN tracks_songbooks ts ON ts.tracks_id = ts.songbooks_id
LEFT JOIN tracks t ON ts.tracks_id = ts.tracks_id 
LEFT JOIN albums a ON t.id = t.albums_id 
LEFT JOIN albums_musicians am ON t.albums_id = am.albums_id 
LEFT JOIN musicians m2 ON am.musicians_id = am.musicians_id
WHERE m2.pen_name LIKE 'Dolina Larisa';

SELECT s.title_songbook FROM songbooks s
JOIN tracks_songbooks ts ON s.id = ts.songbooks_id
JOIN tracks t ON t.id = ts.tracks_id
JOIN albums a ON a.id = t.albums_id
JOIN albums_musicians am ON a.id = am.albums_id
JOIN musicians m ON m.id = am.musicians_id 
WHERE m.pen_name LIKE 'Ed Sheeran';

SELECT a.title_album FROM albums a
JOIN albums_musicians am ON a.id = am.albums_id
JOIN musicians m ON m.id = am.musicians_id
JOIN genres_musicians gm ON gm.musicians_id = m.id
JOIN genres g ON g.id = gm.genres_id
GROUP BY pen_name, a.title_album 
HAVING COUNT(gm.genres_id) > 1;

SELECT t.title_track FROM tracks t
LEFT JOIN  tracks_songbooks ts ON t.id = ts.tracks_id
WHERE ts.tracks_id IS null;

SELECT m.pen_name FROM musicians m
JOIN albums_musicians am ON m.id = am.musicians_id 
JOIN albums a ON a.id = am.albums_id
JOIN tracks t ON t.albums_id = a.id
WHERE lasting = (SELECT MIN(lasting) FROM tracks);

SELECT al.title_album, COUNT(t.id) FROM albums al
JOIN tracks t ON al.id = t.albums_id
GROUP BY al.title_album 
HAVING COUNT(t.id) in (
SELECT COUNT(t.id) FROM albums al
JOIN tracks t ON al.id = t.albums_id
GROUP BY al.title_album
ORDER BY COUNT(t.id)
LIMIT 1);
