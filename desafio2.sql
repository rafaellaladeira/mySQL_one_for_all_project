SELECT 
	COUNT(DISTINCT music.music_id)AS cancoes,
    COUNT(DISTINCT album.name_album)AS albuns,
    COUNT(DISTINCT artist.artist_id)AS artistas
FROM SpotifyClone.musics AS music
JOIN SpotifyClone.album AS album
ON album.album_id = music.album_id
JOIN SpotifyClone.artist AS artist
ON artist.artist_id = album.artist_id;
