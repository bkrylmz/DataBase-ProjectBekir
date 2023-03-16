--CREATE TABLE
/*
create table syntax:
create table TableName(
colName1 DataType Constraints,
colName2 DataType Constraints(optional)
colName3 DataType Constraints,
...
);
*/

CREATE TABLE ScrumTeam(
Emp_ID INTEGER PRIMARY KEY,
FirstName varchar(30) not null, -- varchar String tazında datatype parantez içerisinde yazdığımız  bir kısıtlama max char uzunluğu
LastName varchar(30), -- buraya contraint yazmadık çünkü zorunlu değil
JobTitle varchar(20)
);

select *
from SCRUMTEAM;

--INSERT INTO
/*
INSERT INTO tableName (column1, column2,...)
VALUES (value1, value2 ... );
*/
INSERT INTO ScrumTeam (Emp_ID, FirstName, LastName, JobTitle)
VALUES (1,'Severus','Snape','Tester');
INSERT INTO ScrumTeam VALUES (2,'Harold','Finch','Developer');
INSERT INTO ScrumTeam VALUES (3,'Phoebe','Buffay','ScrumMaster');
INSERT INTO ScrumTeam VALUES (4,'Michael','Scofield','PO');

--UPDATE
--how to update data
/*
UPDATE table_name
SET column1 = value1,
column2 = value2 , ...
WHERE condition;
*/
UPDATE ScrumTeam
SET JOBTITLE= 'SeniorTester',
    LASTNAME= 'Yılmaz',
    FIRSTNAME='Bekir'
WHERE EMP_ID=4;

--DELETE
--Delete from table
/*
DELETE FROM table_name
WHERE condition;
*/
DELETE FROM ScrumTeam
WHERE EMP_ID=3; -- TÜM SATIRI SİLER ID NİN 3 OLDUĞU



