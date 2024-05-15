SELECT
	name,
	continent,
	(
		SELECT
			code
		FROM
			continent ct
		WHERE
			ct.name = cy.continent
	)
FROM
	country cy;

UPDATE country a
SET
	continent = (
		SELECT
			code
		FROM
			continent ct
		WHERE
			ct.name = a.continent
	);

SELECT * FROM country;