SELECT
	COUNT(*),
	COUNTRY
FROM
	USERS
GROUP BY
	COUNTRY
HAVING
	COUNT(*) >= 5
ORDER BY
	COUNT(*) DESC