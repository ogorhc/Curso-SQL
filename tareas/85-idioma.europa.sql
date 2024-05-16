

-- ¿Cuál es el idioma (y código del idioma) oficial más hablado por diferentes países en Europa?

select * from countrylanguage where isofficial = true;

select * from country;

select * from continent;

Select * from "language";


-- ¿Cuál es el idioma (y código del idioma) oficial más hablado por diferentes países en Europa?
SELECT
	COUNT(*),
	cl.languagecode AS languagecode,
	cl.language AS language
FROM
	countrylanguage cl
	INNER JOIN country cy ON cy.code = cl.countrycode
WHERE
	cl.isofficial = TRUE
	AND cy.continent = 5
GROUP BY
	cl.languagecode,
	cl.language
ORDER BY
	COUNT(*) DESC
LIMIT
	1;

-- Listado de todos los países cuyo idioma oficial es el más hablado de Europa 
-- (no hacer subquery, tomar el código anterior)
SELECT
	cl.languagecode AS languagecode,
	cl.language AS language,
	cy.name
FROM
	countrylanguage cl
	INNER JOIN country cy ON cy.code = cl.countrycode
WHERE
	cl.isofficial = TRUE
	AND cy.continent = 5
	AND cl.languagecode = (
		SELECT
			cl.languagecode
		FROM
			country cy
			INNER JOIN countrylanguage cl ON cy.code = cl.countrycode
		WHERE
			cy.continent = 5
			AND cl.isofficial = TRUE
		GROUP BY
			cl.languagecode
		ORDER BY
			COUNT(*) DESC
		LIMIT
			1
	);

SELECT
	cl.languagecode
FROM
	country cy
	INNER JOIN countrylanguage cl ON cy.code = cl.countrycode
WHERE
	cy.continent = 5
	AND cl.isofficial = TRUE
GROUP BY
	cl.languagecode
ORDER BY
	COUNT(*) DESC
LIMIT
	1;

