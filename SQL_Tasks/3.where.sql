--I want to see first_name, last_name, phone_number
select FIRST_NAME, LAST_NAME, PHONE_NUMBER
from EMPLOYEES
where FIRST_NAME ='David' and LAST_NAME = 'Lee';

--get me all information who is making more than 7000 salary
select * from EMPLOYEES
where SALARY > 7000;

--get me email of who is making less than 4000
select EMAIL from EMPLOYEES
where SALARY < 4000;

--get me all info who is working as IT_PROG or SA_REP
SELECT * FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG' or JOB_ID = 'SA_REP';

--get me firstname, lastname, salary who is making more than 5000 and less than 10000
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
where SALARY >= 5000 and SALARY <= 10000;

select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
where SALARY between 5000 and SALARY <= 10000;

--get me all info where emp_id 130 to 170
select * from EMPLOYEES
where EMPLOYEE_ID between 130 and 170;

