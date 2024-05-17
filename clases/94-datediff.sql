SELECT
	hire_date,
	MAKE_INTERVAL(
		years := 2024 - (
			EXTRACT(
				years
				FROM
					hire_date
			)
		)::integer
	) AS manual,
	MAKE_INTERVAL(
		DATE_PART('year', CURRENT_DATE)::integer - (
			EXTRACT(
				years
				FROM
					hire_date
			)
		)::integer
	) AS computed
FROM
	employees
ORDER BY
	hire_date DESC;

SELECT
	CAST(
		hire_date + MAKE_INTERVAL(
			years := (
				EXTRACT(
					YEAR
					FROM
						CURRENT_DATE
				) - 2000
			)::integer
		) AS date
	)
FROM
	employees;

UPDATE employees
SET
	hire_date = CAST(
		hire_date + MAKE_INTERVAL(
			years := (
				EXTRACT(
					YEAR
					FROM
						CURRENT_DATE
				) - 2000
			)::integer
		) AS date
	);

SELECT
	*
FROM
	employees