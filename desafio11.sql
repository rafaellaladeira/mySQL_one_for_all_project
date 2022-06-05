SELECT
	music.name_music AS nome_musica,
    CASE
		WHEN music.name_music = 'Dance With Her Own' THEN 'Dance With Trybe'
        WHEN music.name_music = 'Let\'s Be Silly' THEN 'Let\'s Be Nice'
        WHEN music.name_music = 'Magic Circus' THEN 'Magic Pull Request'
        WHEN music.name_music = 'Troubles Of My Inner Fire' THEN 'Troubles Of My Project'
        WHEN music.name_music = 'Without My Streets' THEN 'Without My Code Review'
		ELSE 'nada acontece'
    END AS novo_nome
FROM SpotifyClone.musics AS music
WHERE music.name_music IN (
 'Dance With Her Own',
 'Let\'s Be Silly',
 'Magic Circus',
 'Troubles Of My Inner Fire',
 'Without My Streets' )
ORDER BY nome_musica;