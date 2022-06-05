SELECT 
    COUNT(history.users_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.user AS user
INNER JOIN SpotifyClone.history AS history
ON user.users_id = history.users_id
WHERE user.name_user = "Bill"
GROUP BY history.users_id;