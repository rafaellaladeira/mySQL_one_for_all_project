SELECT
    album.name_album AS album,
    artist.name_artist AS artista,
    COUNT(followers.artist_id) AS seguidores
