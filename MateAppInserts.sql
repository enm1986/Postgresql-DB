--INSERTS

INSERT INTO user_account (id, first_name, last_name, gender_id, details, nickname, email, confirmation_code)
VALUES
(1, 'Fulanito', 'Banderas', 2, 'Estoy muy solo', 'fulano26', 'fulanitob@miemail.com', 'A2ER67SS');

INSERT INTO user_account (id, first_name, last_name, gender_id, details, nickname, email, confirmation_code)
VALUES
(2, 'Menganita', 'Garcia', 1, 'Me encantan los gatos', 'mengana20', 'menganitag@miemail.com', 'F41DSA8D');

INSERT INTO user_account (id, first_name, last_name, gender_id, details, nickname, email, confirmation_code)
VALUES
(3, 'Brad', 'Pitt', 2, 'Ligo un montón', 'fantasma50', 'fantasma50@miemail.com', 'VZS5R7DS');

INSERT INTO user_account (id, first_name, last_name, gender_id, details, nickname, email, confirmation_code)
VALUES
(4, 'Tippo', 'Deincognito', 2, '.........', 'anon30', 'anonimo@miemail.com', 'DC256DER');

INSERT INTO gender (id, name)
VALUES
(1, 'Female');

INSERT INTO gender (id, name)
VALUES
(2, 'Male');

INSERT INTO interested_in_gender (id, user_account_id, gender_id)
VALUES
(1, 1, 1);

INSERT INTO interested_in_gender (id, user_account_id, gender_id)
VALUES
(2, 2, 2);

INSERT INTO relationship_type (id, name)
VALUES
(1, 'Romantic');

INSERT INTO relationship_type (id, name)
VALUES
(2, 'Friends');

INSERT INTO interested_in_relation (id, user_account_id, relationship_type_id)
VALUES
(1, 1, 2);

INSERT INTO interested_in_relation (id, user_account_id, relationship_type_id)
VALUES
(2, 2, 2);

INSERT INTO grade (id, user_account_i_given, user_account_id_received, grade)
VALUES
(1, 1, 2, 7);

INSERT INTO grade (id, user_account_id_given, user_account_id_received, grade)
VALUES
(2, 2, 1, 7);

INSERT INTO user_photo (id, user_account_id, link, details, time_added, active)
VALUES
(1, 1, 'aaaaaaa', 'Mira que guapo', '2016-01-01', 'true');

INSERT INTO user_photo (id, user_account_id, link, details, time_added, active)
VALUES
(2, 2, 'bbbbbbb', 'Mi gata es preciosa', '2018-03-15', 'true');

INSERT INTO block_user (id, user_account_id, user_account_id_blocked)
VALUES
(1, 2, 3);

INSERT INTO block_user (id, user_account_id, user_account_id_blocked)
VALUES
(1, 2, 4);

INSERT INTO conversation (id, user_account_id, time_started, time_closed)
VALUES
(1, 1, '2019-03-19', NULL);

INSERT INTO conversation (id, user_account_id, time_started, time_closed)
VALUES
(2, 3, '2015-01-01', '2015-01-03');

INSERT INTO participant (id, conversation_id, user_account_id, time_joined, time_left)
VALUES
(1, 1, 2, '2019-03-20', NULL);

INSERT INTO participant (id, conversation_id, user_account_id, time_joined, time_left)
VALUES
(2, 2, 4, '2015-01-02', '2015-01-03');

INSERT INTO message (id, participant_id, message_text, ts)
VALUES
(1, 1, 'Hola!!!', '2019-03-20');



