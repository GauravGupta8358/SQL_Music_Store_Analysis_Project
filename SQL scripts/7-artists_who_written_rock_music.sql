SELECT artist.artist_id,artist.name,genre.name as genre,
COUNT(track.track_id) AS no_of_songs
FROM project.artist
JOIN album ON artist.artist_id = album.artist_id
JOIN track ON album.album_id = track.album_id
JOIN genre ON track.genre_id = genre.genre_id
WHERE genre.name LIKE 'Rock'
GROUP BY artist.artist_id, artist.name, genre.name
order by no_of_songs desc limit 4;