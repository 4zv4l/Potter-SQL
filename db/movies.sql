DROP TABLE IF EXISTS users7693;
DROP TABLE IF EXISTS movies;

CREATE TABLE IF NOT EXISTS users7693 (
    id INTEGER PRIMARY KEY,
    username char(255) NOT NULL,
    password char(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS movies (
    id INTEGER PRIMARY KEY,
    name char(255) NOT NULL,
    year INTEGER NOT NULL,
    director char(255) NOT NULL
);

INSERT INTO `users7693` (`username`,`password`) VALUES ('admin','sup3r_S3Cur3_p4SSword');

INSERT INTO `movies` (`id`,`name`,`year`,`director`) VALUES (1,'Harry Potter and the Philosopher Stone',2001,'Chris Colombus');
INSERT INTO `movies` (`id`,`name`,`year`,`director`) VALUES (2,'Harry Potter and the Chamber of Secrets',2002,'Chris Colombus');
INSERT INTO `movies` (`id`,`name`,`year`,`director`) VALUES (3,'Harry Potter and the Prisoner of Azkaban',2004,'Alfonso Cuarón');
INSERT INTO `movies` (`id`,`name`,`year`,`director`) VALUES (4,'Harry Potter and the Goblet of Fire',2005,'Mike Newell');
INSERT INTO `movies` (`id`,`name`,`year`,`director`) VALUES (5,'Harry Potter and the Order of the Phoenix',2007,'Michael Goldenberg');
INSERT INTO `movies` (`id`,`name`,`year`,`director`) VALUES (6,'Harry Potter and the Half-Blood Prince',2009,'David Yates');
INSERT INTO `movies` (`id`,`name`,`year`,`director`) VALUES (7,'Harry Potter and the Deathly Hallows - Part 1',2010,'David Yates');
INSERT INTO `movies` (`id`,`name`,`year`,`director`) VALUES (8,'Harry Potter and the Deathly Hallows - Part 2',2011,'David Yates');
