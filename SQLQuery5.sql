USE StudentInformationDB

SELECT * FROM StudentInformation 

SELECT Ismale , COUNT(*) as AmountOfStudent , AVG(Midterm) as 'Midterm Mean',
	AVG(Quiz) as 'Midterm Mean',
	AVG(FinalNote) as 'Midterm Mean'
FROM StudentInformation GROUP BY IsMale


SELECT * FROM StudentInformation

EXEC sp_rename 'OgrenciAdres', 'StudentAddress';

SELECT count(*) FROM StudentInformation
SELECT count(*) FROM StudentAddress 

SELECT StudentInformation.StudentNumber , StudentInformation.StudentName , StudentInformation.StudentSurname , StudentAddress.AdresDetay , StudentAddress.Sehir FROM StudentInformation , StudentAddress
	WHERE StudentInformation.StudentNumber = StudentAddress.OgrenciNo