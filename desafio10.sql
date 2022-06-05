SELECT
    music.name_music AS nome,
    COUNT(music.name_music) AS reproducoes
FROM SpotifyClone.user AS user
INNER JOIN SpotifyClone.history AS history
ON history.users_id = user.users_id
INNER JOIN SpotifyClone.musics AS music
ON history.music_id = music.music_id
WHERE user.plan_id = 1 OR user.plan_id = 2
GROUP BY nome
ORDER BY nome;