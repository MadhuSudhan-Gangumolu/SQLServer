-- creating the student table
CREATE TABLE STUDENT(SNO INT NOT NULL, SNAME VARCHAR(30), ADDRESS VARCHAR(50))

-- VIEW THE STRUCTURE OF THE TABLE
SP_HELP STD

--MODIFYING THE COLUMN DATA TYPE 
ALTER TABLE STUDENT ALTER COLUMN SNO BIGINT

-- ADDING A COLUMN IN A EXISTING TABLE
ALTER TABLE STUDENT ADD BRANCH VARCHAR(10) NOT NULL

-- DELETING A COLUMN IN AN EXISTING TABLE
ALTER TABLE STUDENT DROP COLUMN BRANCH

--RENAME THE COLUMN OR TABLE NAME
SP_RENAME 'STUDENT.AGE','STUDENT AGE'

SP_RENAME 'STUDENT','STD'

SELECT * FROM STD 

-- delete the all rows in a table

TRUNCATE TABLE STD

-- DELETE THE TABLE PERMINANTLY

DROP TABLE STD


--DML (INSERT , UPDATE, DELETE)
INSERT INTO STUDENT VALUES(101,'MADHU','BVRM')
INSERT STUDENT(SNO,SNAME,ADDRESS) VALUES (102,'NARESH','HYD')
INSERT STUDENT VALUES (103,'UDAY','BANG')

-- UPDATE COMMAND
UPDATE STUDENT SET SNAME='UDAY' WHERE SNO = 102 

SELECT * FOR STUDENT

--DELETE FROM TABLE

DELETE FROM STUDENT WHERE SNO=102

select * from student where sno in  (select sno  from student where address='bvrm')

sp_help student