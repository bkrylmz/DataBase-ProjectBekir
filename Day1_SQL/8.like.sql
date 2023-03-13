--NOTE: default order type is asc if you dont specify after column name
--get me all employees whose first name starts with C
SELECT * FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'C%';

--get me 5 letter first names where the middle char is z
select * from EMPLOYEES
where FIRST_NAME like '__z__';

--get me first name where second char is u
select *from EMPLOYEES
where FIRST_NAME like '_u%';