SELECT
	domain,
	total_per_domain
FROM
	(
		SELECT
			COUNT(*) total_per_domain,
			SUBSTRING(email, POSITION('@' IN email) + 1) AS domain,
			'Igor' AS name,
			35 AS edge
		FROM
			users
		GROUP BY
			domain
		HAVING
			COUNT(*) > 1
		ORDER BY
			total_per_domain DESC
	) AS email_domains