SELECT 
	artist.name_artist AS artista,
    album.name_album AS album
FROM SpotifyClone.artist AS artist
INNER JOIN SpotifyClone.album AS album
ON artist.artist_id = album.artist_id
WHERE artist.name_artist = 'Walter Phoenix'
AND album.artist_id = 1
ORDER BY album;