SELECT
	*
FROM
	employees
WHERE
	hire_date > date ('1998-02-05')
ORDER BY
	hire_date DESC;

SELECT
	MAX(hire_date) AS mas_nuevo
FROM
	employees;

SELECT
	MIN(hire_date) AS primer_empleado
FROM
	employees;

SELECT
	*
FROM
	employees
WHERE
	hire_date between  '1999-01-01' and '2000-01-01'
ORDER BY
	hire_date DESC;
