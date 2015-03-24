# Simple_Data_Grid
This is web project with Hibernate 4, Spring MVC integration and few pages for working with data

for testing validation on page edit was allowed to use ~ in name, whereas on server it forbidden,
for creating and filling yuor base you can execute this MySQL query:


CREATE SCHEMA test;

CREATE TABLE `contacts` (
  `id`        INT(11)   NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(30) DEFAULT NULL,
  `lastname`  VARCHAR(30) DEFAULT NULL,
  `telephone` INT(11) DEFAULT NULL,
  `email`     VARCHAR(30) DEFAULT NULL,
  `created`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rating`    DECIMAL(5, 2) DEFAULT '1.00',
  PRIMARY KEY (`id`)
);

INSERT INTO test.contacts (firstname, lastname, telephone, email, created, rating) VALUES
  ('Vasya', 'Petechkin', 46387898, 'vasya@mail.com', '2015-03-22 20:20:44.0', 112.9),
  ('Jack', 'London', 67414568, 'dfgf@mail.en', '2015-03-23 17:34:46.0', 4.54),
  ('Ercule', 'Puaro', 4563784, 'drte@mail.du', '2015-03-22 16:49:36.0', 13.8),
  ('Met', 'Deamon', 2345364, 'Met@sfsddf.ty', '2015-03-22 18:28:29.0', 25.5),
  ('Vasya', 'Smit', 123305, 'vasya@mail.kz', '2015-03-23 18:53:43.0', 1.1),
  ('Vin', 'Diesel', 666, 'Diesel@cheap.en', '2015-03-22 18:41:08.0', 0.5),
  ('Masha', 'Antonova', 456456, 'masha@love.com', '2015-03-22 21:03:27.0', 36.6),
  ('Elisabet', 'Tetcher', 123456789, 'eli@mail.com', '2015-03-23 19:01:05.0', 2.8);
