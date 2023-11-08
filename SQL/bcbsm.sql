
-- create schema testdb

ALTER DATABASE `testdb`;

CREATE DATABASE `testdb`

-- create query for roles

CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB;

-- insert query for roles

INSERT INTO roles(name) VALUES('ROLE_USER');
INSERT INTO roles(name) VALUES('ROLE_MODERATOR');
INSERT INTO roles(name) VALUES('ROLE_ADMIN');


-- create query for user_roles

CREATE TABLE `user_roles` (
  `user_id` bigint NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`),
  FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=INNODB;


-- create query for users

CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY (`username`),
  UNIQUE KEY (`email`)
) ENGINE=INNODB;

-- create query for email

CREATE TABLE `email`
(
	`emailid` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`mailfrom` VARCHAR(200) NOT NULL,
	`mailto` VARCHAR(200) NOT NULL,
	`mailcc` VARCHAR(200),
	`mailbcc` VARCHAR(200),
	`mailsubject` VARCHAR(500) NOT NULL,
	`mailcontent` VARCHAR(1000) NOT NULL,
	`attachments` VARCHAR(2500),
    `userid` bigint,
    CONSTRAINT fk_user 
    FOREIGN KEY (`userid`) 
	REFERENCES `users` (`id`)
    ON UPDATE CASCADE
    ON DELETE CASCADE
) ENGINE=INNODB;