SELECT
	*
FROM
	country
	WHERE code = 'CRI';

SELECT DISTINCT
	continent
FROM
	country;

ALTER TABLE country
ADD CHECK (
	(continent = 'Asia')
	OR (continent = 'South America')
	OR (continent = 'North America')
	OR (continent = 'Oceania')
	OR (continent = 'Antarctica')
	OR (continent = 'Africa')
	OR (continent = 'Europe')
);
