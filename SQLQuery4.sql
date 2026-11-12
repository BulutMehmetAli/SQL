USE StudentInformationDB

SELECT Ismale , count(*) as Amount From StudentInformation GROUP BY IsMale

SELECT Ismale , count(*) as Amount  , AVG(FinalNote) as 'Final Note Avarage' From StudentInformation GROUP BY IsMale
