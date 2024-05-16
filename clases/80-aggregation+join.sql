SELECT
	ct.code,
	ct.name,
	COUNT(*) COUNT
FROM
	country cy
	INNER JOIN continent ct ON cy.continent = ct.code
GROUP BY
	ct.code,
	ct.name
UNION
SELECT
	ct.code,
	ct.name,
	0 AS COUNT
FROM
	country cy
	RIGHT JOIN continent ct ON cy.continent = ct.code
WHERE
	cy.continent IS NULL
GROUP BY
	ct.code,
	ct.name
ORDER BY
	COUNT ASC;