CREATE DATABASE HumanFriends;

USE HumanFriends;

DROP TABLE IF EXISTS Pets;
CREATE TABLE Pets (
   ID INT AUTO_INCREMENT PRIMARY KEY,
   Name VARCHAR(255) NOT NULL,
   Type VARCHAR(255) NOT NULL,
   BirthDate DATE NOT NULL,
   Commands TEXT
);

DROP TABLE IF EXISTS PackAnimals;
CREATE TABLE PackAnimals (
   ID INT AUTO_INCREMENT PRIMARY KEY,
   Name VARCHAR(255) NOT NULL,
   Type VARCHAR(255) NOT NULL,
   BirthDate DATE NOT NULL,
   Commands TEXT
);

INSERT INTO Pets (Name, Type, BirthDate, Commands) VALUES
('Fido', 'Dog', '2020-01-01', 'Sit, Stay, Fetch'),
('Whiskers', 'Cat', '2019-05-15', 'Sit, Pounce'),
('Hammy', 'Hamster', '2021-03-10', 'Roll, Hide'),
('Buddy', 'Dog',	'2018-12-10',	'Sit, Paw, Bark'),
('Smudge',	'Cat',	'2020-02-20',	'Sit, Pounce, Scratch'),
('Peanut',	'Hamster',	'2021-08-01',	'Roll, Spin'),
('Bella',	'Dog',	'2019-11-11	', 'Sit, Stay, Roll'),
('Oliver',	'Cat',	'2020-06-30',	'Meow, Scratch, Jump');

SELECT * FROM Pets;

INSERT INTO PackAnimals (Name, Type, BirthDate, Commands) VALUES
('Thunder', 'Horse', '2015-07-21', 'Trot, Canter, Gallop'),
('Sandy', 'Camel', '2016-11-03', 'Walk, Carry Load'),
('Eeyore', 'Donkey', '2017-09-18', 'Walk, Carry Load, Bray'),
('Storm', 'Horse', '2014-05-05', 'Trot, Canter'),
('Dune', 'Camel', '2018-12-12', 'Walk, Sit'),
('Burro', 'Donkey', '2019-01-23', 'Walk, Bray, Kick'),
('Blaze', 'Horse', '2016-02-29', 'Trot, Jump, Gallop'),
('Sahara', 'Camel', '2015-08-14', 'Walk, Run');

SELECT * FROM PackAnimals;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM PackAnimals WHERE Type='Camel';
SELECT * FROM PackAnimals;

DROP TABLE IF EXISTS HorseAndDonkey;
CREATE TABLE HorseAndDonkey AS
SELECT *
FROM PackAnimals
WHERE Type IN ('Horse', 'Donkey');
SELECT * FROM HorseAndDonkey;

DROP TABLE IF EXISTS YoungAnimals;
CREATE TABLE YoungAnimals AS
SELECT *
FROM Pets
WHERE TIMESTAMPDIFF(MONTH, BirthDate, CURDATE()) BETWEEN 1 AND 36;

SELECT * FROM YoungAnimals;

CREATE VIEW AllAnimals AS
SELECT
   'Pets',
   Name,
   Type,
   BirthDate,
   Commands
   ID,
FROM Pets
UNION ALL
SELECT
   'PackAnimals',
   ID,
   Name,
   Type,
   BirthDate,
   Commands
FROM PackAnimals;

SELECT * FROM AllAnimals;
