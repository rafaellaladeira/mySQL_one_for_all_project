SELECT 
	ROUND(MIN(plan.value_plan), 2) AS faturamento_minimo,
    ROUND(MAX(plan.value_plan), 2) AS faturamento_maximo,
    ROUND(SUM(plan.value_plan), 2) AS faturamento_total,
    ROUND(ROUND(SUM(plan.value_plan), 2) / COUNT(user.users_id), 2) AS faturamento_medio
FROM SpotifyClone.plan AS plan
INNER JOIN SpotifyClone.user AS user
ON plan.plan_id = user.plan_id
WHERE plan.plan_id = user.plan_id;