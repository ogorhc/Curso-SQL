SELECT
	COUNT(*) AS total,
	cy.name
FROM
	city ci
	LEFT JOIN country cy ON cy.code = ci.countrycode
GROUP BY
	cy.name
ORDER BY
	total DESC
LIMIT
	1;