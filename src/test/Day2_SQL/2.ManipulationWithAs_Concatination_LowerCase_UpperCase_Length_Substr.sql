--how can we rename the column that we displayed
select FIRST_NAME as "given_name", LAST_NAME as "surname"
from EMPLOYEES;

--text functions, string mani.
--java first_name+" "+ last_name
--SQL ==> concat is ||

select FIRST_NAME||' '||LAST_NAME as "full_name" --title full_name şeklinde yazılır
from EMPLOYEES;


---Task
--add @gmail.com and name new column to full email
select EMAIL from EMPLOYEES;
select EMAIL||'@gmail.com' as "full_email"
from EMPLOYEES;

--making all lowercase/uppercase
select lower(EMAIL||'@gmail.com') as "full_name"
from EMPLOYEES;

select upper(EMAIL||'@gmail.com') as "full_name"
from EMPLOYEES;

--length(value)
select FIRST_NAME, length(FIRST_NAME) as "Length_Name-size"
from EMPLOYEES
order by "Length_Name-size" desc;

--substr(colName,begIndex,NumberOfChar)
select substr(FIRST_NAME,0,3)||'.'||substr(LAST_NAME,0,1) as "initials"
from EMPLOYEES;

select substr(FIRST_NAME,0,3)||'.'||substr(LAST_NAME,0,1) as "initials",
       FIRST_NAME||' '||LAST_NAME as "full_name",
       lower(EMAIL||'@gmail.com') as "full_email"
from EMPLOYEES;


