SELECT
	user.name_user AS usuario,
    IF( MAX(YEAR(history.date_reproduced))= 2021,'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.user AS user
JOIN SpotifyClone.history AS history
ON user.users_id = history.users_id
GROUP BY user.name_user
ORDER BY usuario;