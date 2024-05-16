SELECT
	cy.name,
	cy.continent,
	ct.name AS continentname
FROM
	country cy
	RIGHT JOIN continent ct ON cy.continent = ct.code
WHERE
	cy.name IS NULL
ORDER BY
	cy.name DESC;