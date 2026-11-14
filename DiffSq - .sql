UPDATE StudentInformation
SET SinavNotu1 = ABS(CHECKSUM(NEWID())) % 101,
    SinavNotu2 = ABS(CHECKSUM(NEWID())) % 101,
    FinalNotu  = ABS(CHECKSUM(NEWID())) % 101;


SELECT TOP 10
    StudentName + ' ' + StudentSurname AS AdSoyad,
    SinavNotu1, SinavNotu2, FinalNotu,
    SinavNotu1 * 0.2 + SinavNotu2 * 0.2 + FinalNotu * 0.6 AS Ortalama
FROM StudentInformation
ORDER BY Ortalama DESC;


SELECT StudentNumber, StudentName, StudentSurname, RecordDate
FROM StudentInformation
WHERE RecordDate BETWEEN '2023-01-01' AND '2024-12-31'
  AND StudentName LIKE 'E%'
  AND StudentSurname IN ('Yılmaz', 'Kaya', 'Demir', 'Çelik');


SELECT StudentName, StudentSurname, FinalNotu, SinavNotu1, SinavNotu2
FROM StudentInformation
WHERE IsMale = 1
  AND (FinalNotu < 50 OR (SinavNotu1 < 40 AND SinavNotu2 < 40));



SELECT StudentName, StudentSurname, FinalNotu,
    CASE
        WHEN FinalNotu >= 85 THEN 'AA'
        WHEN FinalNotu >= 70 THEN 'BB'
        WHEN FinalNotu >= 50 THEN 'CC'
        ELSE 'FF'
    END AS HarfNotu,
    CASE WHEN FinalNotu >= 50 THEN 'Geçti' ELSE 'Kaldı' END AS Durum
FROM StudentInformation
ORDER BY FinalNotu DESC;