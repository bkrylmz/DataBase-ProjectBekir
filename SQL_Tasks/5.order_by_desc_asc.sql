--how to find employee information of who is making highest salary in the company
select *  from EMPLOYEES
order by SALARY desc;

select max(SALARY) from EMPLOYEES;

--highest salary employee information
select * from EMPLOYEES
where SALARY = 24000;

--subquery solution in one shot
select * from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES);

--finding second highes salary
--get highest salary first
select max(SALARY) from EMPLOYEES ;

--highest after 24k
select max(SALARY)
from EMPLOYEES
where SALARY < 24000;

--one shot combining two queries
select max(SALARY)
from EMPLOYEES
where SALARY < (select max(SALARY) from EMPLOYEES);

--employee information of who is making second highest salary

select * from EMPLOYEES
where SALARY < 17000;

select * from EMPLOYEES
where SALARY =  (select max(SALARY) from EMPLOYEES where SALARY< (select max(SALARY)from EMPLOYEES));

-----------------
select *
from EMPLOYEES
order by SALARY desc ;

select *
from EMPLOYEES
where ROWNUM < 11;

--list the employees who is making top 10 salary
--get the first 10 people then order them high to low based on salary
select *
from EMPLOYEES
where ROWNUM < 11
order by SALARY desc ;

--order all employees based on salary high to low then display only first 10 result
select *
from (select *
      from EMPLOYEES
      order by SALARY desc )
where ROWNUM < 11;

--order all employees based on salary low to high then display only first 10 result
select *
from (select *
      from EMPLOYEES
      order by SALARY asc )
where ROWNUM < 11;

--get me all employees information based on who is making more salary to low salary
select * from EMPLOYEES
order by SALARY desc ;

--desc 9-0 Z-A
--asc 0-9 a-z

--get me all emp info order by alphabetical based on firstname
select *
from EMPLOYEES
order by FIRST_NAME asc;