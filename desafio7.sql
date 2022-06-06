SELECT
album.name_album AS album,
    artist.name_artist AS artista,
    COUNT(followers.artist_id) AS seguidores
FROM SpotifyClone.album AS album
RIGHT JOIN SpotifyClone.artist AS artist
ON album.artist_id =artist.artist_id
INNER JOIN SpotifyClone.follow_artist as followers
ON followers.artist_id = album.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;