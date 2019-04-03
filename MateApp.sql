--DROP DATABASE IF EXISTS 'MateApp';

--CREATE DATABASE 'MateApp';

-- USER ACCOUNTS
CREATE TABLE user_account (
	id int NOT NULL,
	first_name varchar(64),
	last_name varchar(64),
	gender_id int,
	details text,
	nickname varchar(64) UNIQUE,
	email varchar(128) UNIQUE,
	confirmation_code varchar(8) UNIQUE,
	confirmation_time timestamp NULL,
	popularity decimal(5,2)
);

CREATE TABLE gender (
	id int NOT NULL,
	name varchar(32)
);

CREATE TABLE interested_in_gender (
	id int NOT NULL,
	user_account_id int,
	gender_id int
);
	
CREATE TABLE relationship_type (
	id int NOT NULL,
	name varchar(32)
);

CREATE TABLE interested_in_relation (
	id int NOT NULL,
	user_account_id int,
	relationship_type_id int
);

CREATE TABLE user_photo (
	id int NOT NULL,
	user_account_id int,
	link text,
	details text,
	time_added timestamp,
	active bool,
);

--CONVERSATIONS
CREATE TABLE conversation (
	id int NOT NULL,
	user_account_id int,
	time_started timestamp,
	time_closed timestamp NULL
);

CREATE TABLE participant (
	id int NOT NULL,
	conversation_id int,
	user_account_id int,
	time_joined timestamp,
	time_left timestamp NULL	
);

CREATE TABLE message (
	id int NOT NULL,
	participant_id int,
	message_text text,
	ts timestamp
);

--GRADES & BLOCKS

CREATE TABLE grade (
	id int NOT NULL,
	user_account_id_given int,
	user_account_id_received int,
	grade int
);

CREATE TABLE block_user (
	id int NOT NULL,
	user_account_id int,
	user_account_id_blocked int
);

