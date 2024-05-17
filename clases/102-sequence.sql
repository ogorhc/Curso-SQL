CREATE SEQUENCE user_sequence;

DROP SEQUENCE user_sequence;

SELECT
	CURRVAL('user_sequence'),
	NEXTVAL('user_sequence'),
	CURRVAL('user_sequence');

create table users6 (
	user_id integer primary key default nextval('user_sequence'),
	username varchar
)