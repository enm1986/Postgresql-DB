--CONSTRAINTS

--PKs
ALTER TABLE user_account ADD PRIMARY KEY (id);
ALTER TABLE gender ADD PRIMARY KEY (id);
ALTER TABLE interested_in_gender ADD PRIMARY KEY (id);
ALTER TABLE relationship_type ADD PRIMARY KEY (id);
ALTER TABLE interested_in_relation ADD PRIMARY KEY (id);
ALTER TABLE user_photo ADD PRIMARY KEY (id);

ALTER TABLE conversation ADD PRIMARY KEY (id);
ALTER TABLE participant ADD PRIMARY KEY (id);
ALTER TABLE message ADD PRIMARY KEY (id);

ALTER TABLE grade ADD PRIMARY KEY (id);
ALTER TABLE block_user ADD PRIMARY KEY (id);

--FKs
ALTER TABLE user_account ADD FOREIGN KEY (gender_id) REFERENCES gender (id);
ALTER TABLE interested_in_gender ADD FOREIGN KEY (user_account_id) REFERENCES user_account (id);
ALTER TABLE interested_in_gender ADD FOREIGN KEY (gender_id) REFERENCES gender (id);
ALTER TABLE interested_in_relation ADD FOREIGN KEY (user_account_id) REFERENCES user_account (id);
ALTER TABLE interested_in_relation ADD FOREIGN KEY (relationship_type_id) REFERENCES relationship_type (id);

ALTER TABLE conversation ADD FOREIGN KEY (user_account_id) REFERENCES user_account (id);
ALTER TABLE participant ADD FOREIGN KEY (user_account_id) REFERENCES user_account (id);
ALTER TABLE participant ADD FOREIGN KEY (conversation_id) REFERENCES conversation (id);
ALTER TABLE message ADD FOREIGN KEY (participant_id) REFERENCES participant (id);

ALTER TABLE grade ADD FOREIGN KEY (user_account_id_given) REFERENCES user_account (id);
ALTER TABLE grade ADD FOREIGN KEY (user_account_id_received) REFERENCES user_account (id);
ALTER TABLE block_user ADD FOREIGN KEY (user_account_id) REFERENCES user_account (id);
ALTER TABLE block_user ADD FOREIGN KEY (user_account_id_blocked) REFERENCES user_account (id);



