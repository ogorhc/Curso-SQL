--OPERADORES TÍPICOS PARA STRINGS
SELECT
	ID,
	UPPER(NAME) AS UPPER_NAME,
	LOWER(NAME) AS LOWER_NAME,
	LENGTH(NAME) AS LENGTH,
	(20*2) as constante,
	CONCAT('*',id,'-', name, '*'),
	'*'||id||'-'||name||'*' as barcode,
	
	NAME
FROM
	USERS