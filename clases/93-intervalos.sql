SELECT
	-- MAX(hire_date),
	-- MAX(hire_date) + interval '1 DAYS' AS days,
	-- MAX(hire_date) + interval '1 MONTH' AS months,
	-- MAX(hire_date) + interval '1 YEAR' AS years,
	MAX(hire_date) + interval '1 YEAR' + interval '1 day' AS years_day,
	DATE_PART('year', NOW()),
	MAKE_INTERVAL(years := DATE_PART('year', NOW())::integer),
	MAX(hire_date) + MAKE_INTERVAL(YEARS:= 23)
FROM
	employees