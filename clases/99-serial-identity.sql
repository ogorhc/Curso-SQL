CREATE TABLE "users" ("user_id" serial PRIMARY KEY, "username" varchar)
CREATE TABLE users2 (
	user_id integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	username varchar
)
CREATE TABLE users3 (
	user_id integer generated by always AS identity PRIMARY KEY,
	username varchar
)
CREATE TABLE users4 (
	user_id integer generated by always AS identity PRIMARY KEY (start 100 increment 2),
	username varchar
)