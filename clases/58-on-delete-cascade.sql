SELECT
	*
FROM
	country
WHERE
	code = 'AFG';

SELECT
	*
FROM
	city
WHERE
	countrycode = 'AFG';

SELECT
	*
FROM
	countrylanguage
WHERE
	countrycode = 'AFG';

ALTER TABLE city
ADD CONSTRAINT "fk_country_code" FOREIGN key (countrycode) REFERENCES country (code) ON DELETE cascade;

ALTER TABLE countrylanguage
ADD CONSTRAINT "fk_country_code" FOREIGN key (countrycode) REFERENCES country (code) ON DELETE cascade;

DELETE FROM country
WHERE
	code = 'AFG';