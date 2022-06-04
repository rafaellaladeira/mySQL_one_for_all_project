SELECT
    music.name_music AS cancao,
    COUNT(history.music_id)AS reproducoes
FROM SpotifyClone.history AS history
INNER JOIN SpotifyClone.musics AS music
ON history.music_id = music.music_id
WHERE history.music_id = music.music_id
GROUP BY history.music_id
ORDER BY reproducoes DESC, cancao asc
LIMIT 2;