--ADDING COLUMN
SELECT *
FROM SCRUMTEAM;

--adding new column
ALTER TABLE SCRUMTEAM
ADD salary INTEGER;

--update existing employees salary
update SCRUMTEAM set salary=100000
where EMP_ID=1;

update SCRUMTEAM set salary=95000
where EMP_ID=2;

update SCRUMTEAM set salary=120000
where EMP_ID=4;


--rename the column
ALTER TABLE SCRUMTEAM
RENAME COLUMN salary TO annual_salary;

--delete, drop column
ALTER TABLE scrumteam DROP COLUMN annual_salary;

--how to change table name ?
ALTER TABLE scrumteam RENAME TO agileteam;

select * from agileteam;

--truncate, if we want to delete all data from the table, but still keep the table
--structure, we use truncate
TRUNCATE TABLE agileteam;

--If we want to delete the table and data together
DROP TABLE agileteam;