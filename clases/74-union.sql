SELECT
	code,
	name,
	'123'
FROM
	continent
WHERE
	name LIKE '%America%'
UNION
SELECT
	1,
	'456',
	name
FROM
	continent
WHERE
	code IN (3, 5)
ORDER BY
	name ASC;