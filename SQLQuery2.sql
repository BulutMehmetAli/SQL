-- Soru : Alter ile StudentInformation tablosuna SinavNotu1 , SinavNotu2 , FinalNotu Default 0 olarak ekleyin

USE StudentInformationDB

ALTER TABLE StudentInformation
ADD Midterm TINYINT NOT NULL DEFAULT 0,
    Quiz TINYINT NOT NULL DEFAULT 0,
    FinalNote  TINYINT NOT NULL DEFAULT 0;

SELECT * From StudentInformation
-- UPDATE

UPDATE StudentInformation SET  Midterm = 80 , FinalNote = 100 WHERE StudentNumber = 2020002

SELECT * FROM StudentInformation WHERE StudentNumber = 2020002

DELETE FROM StudentInformation WHERE StudentNumber = 2020035

SELECT * FROM StudentInformation ORDER BY IsMale , StudentName 

SELECT * FROM StudentInformation ORDER BY IsMale , StudentName desc

SELECT * FROM StudentInformation ORDER BY IsMale desc , StudentName 

-- count

SELECT count(*) FROM StudentInformation

SELECT count(StudentNumber) FROM StudentInformation

SELECT count(StudentNumber) FROM StudentInformation WHERE IsMale = 1 
SELECT count(StudentNumber) FROM StudentInformation WHERE IsMale = 0

SELECT count(StudentNumber) FROM StudentInformation WHERE StudentBirthDay >=  '20000101'

-- sum

SELECT SUM(Midterm) FROM StudentInformation
SELECT SUM(FinalNote) FROM StudentInformation

--max ( Sütundaki kayıtlı en yüksek değeri getirir)

SELECT MAX(Midterm) FROM StudentInformation


-- avg

SELECT AVG(FinalNote) FROM StudentInformation

-- sum ve count kullanarak final notu sütununu ortalamsını hesapla

SELECT SUM(FinalNote)/COUNT(FinalNote) AS ORTALAMAFINAL FROM StudentInformation