-- Drop table

DROP TABLE StudentInformation

-- Create table

CREATE TABLE StudentInformation(
	StudentNumber INT NOT NULL,
	StudentName VARCHAR(20) NOT NULL,
	StudentSurname VARCHAR(20) NOT NULL,
	IdentityNumber char(11) NOT NULL,
	RecordDate date NOT NULL,
	IsMale bit NOT NULL
);

USE StudentInformationDB
-- Alter table

ALTER TABLE StudentInformation ADD StudentBirthDay date NOT NULL

SELECT * FROM StudentInformation WHERE (IsMale != 0)

SELECT StudentName , StudentNumber FROM StudentInformation

SELECT StudentName , StudentNumber , IdentityNumber FROM StudentInformation WHERE StudentName = 'Osman' AND StudentBirthDay  >= '2004-01-25';

-- Operatörler

SELECT * FROM StudentInformation WHERE StudentNumber > 500 AND IsMale = 0

SELECT * FROM StudentInformation WHERE StudentNumber IN  (2020010 , 2020034 , 202049) and IsMale = 0

SELECT * FROM StudentInformation WHERE StudentName LIKE 'A%' 

SELECT * FROM StudentInformation WHERE StudentName LIKE '%A' 

SELECT * FROM StudentInformation WHERE IdentityNumber LIKE '%85%' 

