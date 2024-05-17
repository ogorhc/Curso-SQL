SELECT
	first_name,
	last_name,
	hire_date,
	CASE
		WHEN hire_date > NOW() - interval '1 year' THEN 'Rango A'
		WHEN hire_date > NOW() - interval '3 year' THEN 'Rango B'
		WHEN hire_date > NOW() - interval '6 year' THEN 'Rango C'
		ELSE 'Rango D'
	END AS rango_antiguedad
FROM
	employees
ORDER BY
	hire_date DESC;

SELECT
	first_name,
	last_name,
	hire_date,
	CASE
		WHEN hire_date > NOW() - interval '1 year' THEN '1 año o menos'
		WHEN hire_date > NOW() - interval '3 year' THEN '1 a 3 años'
		WHEN hire_date > NOW() - interval '6 year' THEN '3 a 6 años'
		ELSE 'Más de 6 años'
	END AS rango_antiguedad
FROM
	employees
ORDER BY
	hire_date DESC;