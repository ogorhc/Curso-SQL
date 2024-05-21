CREATE
OR REPLACE function sayhello (user_name varchar) returns varchar AS $$
	BEGIN
return 'Hola ' || user_name;
END;
$$ language plpgsql;

SELECT
	sayhello (users.name),
	users.name
FROM
	users;

CREATE
OR REPLACE function comment_replies (id integer) returns json AS $$
DECLARE result json;
BEGIN
SELECT
	JSON_AGG(
		JSON_BUILD_OBJECT('user', user_id, 'comment', content)
	) into result
FROM
	comments
WHERE
	comment_parent_id = id;
return result;

END;
$$ language plpgsql;


SELECT
	comments.comment_id,
	comments.content,
	comment_replies (comments.comment_id) AS replies
FROM
	comments
WHERE
	comments.comment_parent_id ISNULL
GROUP BY
	comments.comment_id;

