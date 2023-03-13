
--how many employee working as IT_PROG or SA_REP
SELECT count(*) FROM EMPLOYEES
WHERE JOB_ID in('IT_PROG', 'SA_REP');

--how many employees making mor than 8000
select count(*) from EMPLOYEES
where SALARY >8000;

--how many unique first names we have
select count (distinct FIRST_NAME) from EMPLOYEES;