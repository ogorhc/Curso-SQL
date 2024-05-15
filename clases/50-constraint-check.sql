SELECT
	*
FROM
	country order by surfacearea asc;

ALTER TABLE country
ADD CHECK (surfacearea >= 0)