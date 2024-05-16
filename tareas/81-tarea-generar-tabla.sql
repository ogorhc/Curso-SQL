-- Count Union - Tarea
-- Total |  Continent
-- 5	  | Antarctica
-- 28	  | Oceania
-- 46	  | Europe
-- 51	  | America
-- 51	  | Asia
-- 58	  | Africa
SELECT
	COUNT(*) total,
	ct.name as Continent
FROM
	country cy
	INNER JOIN continent ct ON ct.code = cy.continent
WHERE
	ct.name NOT LIKE '%America'
GROUP BY
	ct.name
UNION
SELECT
	COUNT(*) total,
	'America' AS Continent
FROM
	country cy
	INNER JOIN continent ct ON ct.code = cy.continent
WHERE
	ct.name LIKE '%America'
ORDER BY
	total ASC;

-- Count Union - Tarea
-- Total |  Continent
-- 5	  | Antarctica
-- 28	  | Oceania
-- 46	  | Europe
-- 51	  | America
-- 51	  | Asia
-- 58	  | Africa
SELECT
	COUNT(*) total,
	ct.name as Continent
FROM
	country cy
	INNER JOIN continent ct ON ct.code = cy.continent
WHERE
	ct.code NOT IN (4,6,8)
GROUP BY
	ct.name
UNION
SELECT
	COUNT(*) total,
	'America' AS Continent
FROM
	country cy
	INNER JOIN continent ct ON ct.code = cy.continent
WHERE
	ct.code IN (4,6,8)
ORDER BY
	total ASC;