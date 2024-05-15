SELECT
	*
FROM
	country;

ALTER TABLE country
ALTER COLUMN continent type int4 USING continent::integer;

ALTER TABLE country
ADD CONSTRAINT fk1_continent_code FOREIGN key (continent) REFERENCES continent (code);