ALTER TABLE city
ADD CONSTRAINT fk_country_code FOREIGN key (countrycode) REFERENCES country (code);

INSERT INTO
	country
VALUES
	(
		'AFG',
		'Afghanistan',
		'Asia',
		'Southern Asia',
		652860,
		1919,
		40000000,
		62,
		69000000,
		NULL,
		'Afghanistan',
		'Totalitarian',
		NULL,
		NULL,
		'AF'
	);