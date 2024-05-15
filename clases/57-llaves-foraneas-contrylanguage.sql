ALTER TABLE countrylanguage
ADD CONSTRAINT "fk_country_code" FOREIGN key (countrycode) REFERENCES country (code)