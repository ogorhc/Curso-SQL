SELECT
	*
FROM
	country;

ALTER TABLE country
ADD PRIMARY KEY (code);

SELECT
	*
FROM
	country
WHERE
	code2 = 'NA';

DELETE FROM country
WHERE
	code2 = 'NA'
	AND code = 'NLD';