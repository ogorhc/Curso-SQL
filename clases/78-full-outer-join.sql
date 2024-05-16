SELECT
	cy.name,
	cy.continent,
	ct.name AS continentname
FROM
	country cy
	FULL JOIN continent ct ON cy.continent = ct.code
ORDER BY
	cy.name DESC;