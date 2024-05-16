SELECT
	*
FROM
	countrylanguage
WHERE
	isofficial IS TRUE;

SELECT
	*
FROM
	country;

SELECT
	*
FROM
	continent;

SELECT DISTINCT
	lang.name,
	cy.continent,
	ct.name AS continent
FROM
	countrylanguage cl
	INNER JOIN language lang ON lang.code = cl.languagecode
	INNER JOIN country cy ON cy.code = cl.countrycode
	INNER JOIN continent ct ON cy.continent = ct.code
WHERE
	cl.isofficial IS TRUE;

SELECT
	*
FROM
	countrylanguage;

SELECT
	COUNT(*) AS total,
	totales.continent
FROM
	(
		SELECT
			lang.name,
			ct.name AS continent
		FROM
			countrylanguage cl
			INNER JOIN language lang ON lang.code = cl.languagecode
			INNER JOIN country cy ON cy.code = cl.countrycode
			INNER JOIN continent ct ON cy.continent = ct.code
		WHERE
			cl.isofficial IS TRUE
	) AS totales
GROUP BY
	totales.continent
ORDER BY
	total;