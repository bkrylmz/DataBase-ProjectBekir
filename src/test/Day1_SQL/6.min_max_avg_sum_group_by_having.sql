--get me average salary for IT_PROG
SELECT AVG(SALARY) FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG';

SELECT JOB_ID, AVG(SALARY), COUNT(*), SUM(SALARY) FROM EMPLOYEES
GROUP BY JOB_ID;

--get me job_ids where their avg salary is more than 5k
select JOB_ID, AVG(SALARY), COUNT(*), SUM(SALARY)
FROM EMPLOYEES
GROUP BY JOB_ID
HAVING AVG(SALARY)> 5000;

--get me info who is working as IT-PROG or SA_REP
SELECT * FROM EMPLOYEES
WHERE JOB_ID in('IT_PROG', 'SA_REP');


--find me minimum salary
select min(SALARY) from EMPLOYEES;

--find me maximum salary
select max(SALARY) from EMPLOYEES;

select avg(SALARY) from EMPLOYEES;

select round(avg(SALARY),2) from EMPLOYEES;

select sum(SALARY) from EMPLOYEES;