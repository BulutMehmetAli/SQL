USE StudentInformationDB

SELECT Si.StudentNumber , Si.StudentName , Si.StudentSurname , Sa.City , Sa.AdressDetail 
	FROM StudentInformation as Si , StudentAddress as Sa
		WHERE Si.StudentNumber = Sa.StudentNumber


SELECT COUNT(*) FROM StudentInformation

