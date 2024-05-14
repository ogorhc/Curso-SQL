SELECT
	COUNT(*) total_per_domain,
	SUBSTRING(email, POSITION('@' IN email) + 1) AS domain
FROM
	users
GROUP BY
	domain
HAVING
	COUNT(*) > 1
ORDER BY
	total_per_domain DESC