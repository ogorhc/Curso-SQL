-- Tarea con countryLanguage
-- Crear la tabla de language
-- Sequence and defined type
CREATE SEQUENCE if NOT EXISTS language_code_seq;

-- Table Definition
CREATE TABLE "public"."language" (
	"code" int4 NOT NULL DEFAULT NEXTVAL('language_code_seq'::regclass),
	"name" text NOT NULL,
	PRIMARY KEY ("code")
);

-- Crear una columna en countrylanguage
ALTER TABLE countrylanguage
ADD COLUMN languagecode varchar(3);

-- Table: public.countrylanguage
-- DROP TABLE IF EXISTS public.countrylanguage;
CREATE TABLE IF NOT EXISTS public.countrylanguage_bk (
	countrycode character(3) COLLATE pg_catalog."default" NOT NULL,
	language text COLLATE pg_catalog."default" NOT NULL,
	isofficial boolean NOT NULL,
	percentage real NOT NULL,
	languagecode character varying(3) COLLATE pg_catalog."default",
	CONSTRAINT countrylanguage_pkey_bk PRIMARY KEY (countrycode, language),
	CONSTRAINT countrylanguage_countrycode_fkey_bk FOREIGN key (countrycode) REFERENCES public.country (code) match simple ON UPDATE no action ON DELETE cascade,
	CONSTRAINT countrylanguage_percentage_check_bk CHECK (
		percentage >= 0::double precision
		AND percentage <= 100::double precision
	)
) tablespace pg_default;

ALTER TABLE IF EXISTS public.countrylanguage owner TO alumno;

-- Empezar con el select para confirmar lo que vamos a actualizar
SELECT DISTINCT
	language
FROM
	countrylanguage;

INSERT INTO
	countrylanguage_bk
SELECT
	*
FROM
	countrylanguage;

INSERT INTO
	language (name)
SELECT DISTINCT
	language
FROM
	countrylanguage;

SELECT
	*
FROM
	language;

SELECT
	language,
	(
		SELECT
			name
		FROM
			language l
		WHERE
			l.name = cl.language
	)
FROM
	countrylanguage cl;

-- Actualizar todos los registros
UPDATE countrylanguage cl
SET
	language = (
		SELECT
			code
		FROM
			language l
		WHERE
			l.name = cl.language
	);


-- Cambiar tipo de dato en countrylanguage - languagecode por int4
ALTER TABLE countrylanguage
ALTER COLUMN language type int4 USING language::integer;

-- Crear el forening key y constraints de no nulo el language_code
ALTER TABLE countrylanguage
ADD CONSTRAINT "fk0_language_code" FOREIGN key (language) REFERENCES language (code);
-- Revisar lo creado

SELECT
	*
FROM
	countrylanguage;