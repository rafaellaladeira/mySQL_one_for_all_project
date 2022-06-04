SELECT 
	user.name_user AS usuario,
    COUNT(history.users_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(music.duration_s)/60 , 2)AS total_minutos
FROM SpotifyClone.user AS user
JOIN SpotifyClone.history AS history
ON user.users_id = history.users_id
JOIN SpotifyClone.musics AS music
ON music.music_id = history.music_id
GROUP BY history.users_id
ORDER BY usuario;