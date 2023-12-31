CREATE DATABASE AVANTHI;
USE AVANTHI;
CREATE TABLE EMPDATA(
EMPID INT, EMPNAME Varchar(20), EMPDEPT VARCHAR(20), EMPPHNO INT, EMPSALARY INT);
INSERT INTO EMPDATA VALUES
(401, "PREESHA", "ECE", 758924, 36000),
(301, "AAROHI", "MECH", 75554, 32000),
(501, "AKSHARA", "CSE", 751694, 34000),
(505, "RUHI", "CSE", 521975, 39000),
(304, "NAIRA","MECH", 581455, 4000);
SELECT *FROM EMPDATA;
SELECT DISTINCT EMPDEPT, EMPID FROM EMPDATA;
SELECT COUNT(DISTINCT EMPDEPT) FROM EMPDATA;
SELECT *FROM EMPDATA
WHERE  EMPNAME= "PREESHA";
SELECT *FROM EMPDATA
WHERE EMPID=304;
SELECT *FROM EMPDATA 
WHERE EMPID>400;
SELECT *FROM EMPDATA
ORDER BY EMPID;
SELECT *FROM EMPDATA
ORDER BY EMPDEPT ASC;
SELECT *FROM EMPDATA
ORDER BY EMPID ASC, EMPSALARY DESC;
SELECT *FROM EMPDATA
WHERE EMPNAME="PREESHA" AND EMPDEPT LIKE "E%";
SELECT *FROM EMPDATA
WHERE EMPID= 301 AND  EMPNAME="AAROHI" AND EMPDEPT="MECH";
SELECT *FROM EMPDATA
WHERE EMPNAME= "AAROHI" AND EMPDEPT="MECH" OR EMPID= 401;
SELECT *FROM EMPDATA
WHERE EMPID=401 OR EMPNAME="AKSHARA";
SELECT *FROM EMPDATA
WHERE EMPID=505 AND EMPPHNO=521975 OR EMPNAME LIKE "R%";
SELECT *FROM EMPDATA
WHERE  NOT EMPID = 401;
SELECT  EMPDEPT,EMPNAME FROM  EMPDATA WHERE EMPDEPT IS NULL;
SELECT EMPDEPT, EMPNAME  FROM EMPDATA WHERE EMPDEPT IS NOT NULL;
SET SQL_SAFE_UPDATES=0;
UPDATE EMPDATA
SET EMPNAME="AROHI", EMPDEPT="MECH" 
WHERE EMPID= 301;
SELECT * FROM EMPDATA
LIMIT 3;
SELECT MIN(EMPDEPT)
FROM EMPDATA;
SELECT MAX(EMPDEPT)
FROM EMPDATA;
SELECT MIN(EMPNAME) AS SMALLEST
FROM EMPDATA;
SELECT COUNT(EMPID)
FROM EMPDATA;
SELECT COUNT(EMPNAME)
FROM EMPDATA
WHERE EMPID=401;
SELECT SUM(EMPSALARY)
FROM EMPDATA;
SELECT  AVG(EMPSALARY)
FROM EMPDATA;
SELECT * FROM EMPDATA
WHERE EMPNAME LIKE '%REE%';
SELECT * FROM EMPDATA
WHERE EMPDEPT LIKE '_ECH';
SELECT * FROM EMPDATA
WHERE EMPNAME LIKE '[R]%';
SELECT * FROM EMPDATA
WHERE EMPNAME LIKE '[N-Z]%';
SELECT * FROM EMPDATA
WHERE  EMPNAME LIKE 'a__%';
SELECT * FROM EMPDATA
WHERE EMPNAME LIKE '_r%';
SELECT * FROM EMPDATA
WHERE EMPNAME LIKE 'RUHI';
SELECT * FROM EMPDATA
WHERE EMPNAME IN ('RUHI', 'NAIRA', 'AROHI');
SELECT * FROM EMPDATA
WHERE EMPNAME IN (SELECT EMPID FROM EMPDATA);
SELECT * FROM EMPDATA
WHERE EMPNAME NOT IN (SELECT EMPID FROM EMPDATA);
SELECT * FROM EMPDATA
WHERE EMPNAME NOT IN ('AKSHARA', 'PREESHA', 'NAIRA');
WHERE EMPID BETWEEN 401 AND 590;
SELECT *FROM EMPDATA
WHERE EMPID  NOT BETWEEN 401 AND 590;
SELECT * FROM EMPDATA
WHERE EMPID BETWEEN 350 AND 400
AND EMPNAME IN ("PREESHA","NAIRA","RUHI");
SELECT * FROM EMPDATA
WHERE EMPNAME BETWEEN "PREESHA" AND "RUHI"
ORDER BY EMPID;
SELECT * FROM EMPDATA
WHERE EMPNAME NOT BETWEEN "PREESHA" AND "RUHI"
ORDER BY EMPID;
SELECT * FROM EMPDATA
WHERE EMPNAME BETWEEN '1996-07-01' AND '1996-07-31';
CREATE TABLE STUDENTDATA
(STUID  INT, STUNAME VARCHAR(20),STUDEPT VARCHAR(20),STUPHNO BIGINT,STUPER  INT);
INSERT INTO STUDENTDATA VALUES
( 401, "ISHANI", "ECE", 8549325485, 95),
(301, "AYESHA","MECH", 41454213565, 96),
(501, "PRATIKSHA", "CSE", 454165432, 94),
(505, "ISHITHA", "CSE", 55498565, 97),
(304, "NIVEDA", "MECH", 4521445142, 98);
SELECT *FROM STUDENTDATA;
SELECT EMPID
FROM EMPDATA
INNER JOIN STUDENTDATA
ON EMPDATA.EMPID = STUDENTDATA.STUID;
SELECT EMPID
FROM EMPDATA
JOIN STUDENTDATA
ON EMPDATA.EMPID = STUDENTDATA.STUID;
SELECT EMPID
FROM EMPDATA
LEFT JOIN STUDENTDATA
ON EMPDATA.EMPID = STUDENTDATA.STUDEPT;
SELECT EMPID
FROM EMPDATA
RIGHT JOIN STUDENTDATA
ON EMPDATA.EMPID = STUDENTDATA.STUDEPT;
SELECT EMPNAME
FROM EMPDATA
FULL JOIN STUDENTDATA
ON EMPDATA.EMPID = STUDENTDATA.STUNAME
WHERE EMPDATA.EMPID;
SELECT EMPNAME
FROM EMPNAME, EMPID
WHERE EMPDATA.EMPID;
SELECT EMPNAME FROM EMPDATA
UNION
SELECT STUID FROM STUDENTDATA;
SELECT EMPNAME FROM EMPDATA
UNION ALL
SELECT STUID FROM STUDENTDATA;
SELECT EMPNAME
FROM EMPDATA
GROUP BY EMPNAME
ORDER BY EMPNAME;
SELECT EMPID
FROM EMPDATA
GROUP BY EMPID
HAVING COUNT(EMPID>401)
ORDER BY EMPID;
SELECT EMPNAME
FROM EMPDATA
WHERE EXISTS
(SELECT EMPNAME FROM EMPDATA WHERE EMPNAME LIKE "P%");
