---rewiew
select FIRST_NAME, LAST_NAME, JOB_ID, SALARY
from EMPLOYEES
where SALARY>4000 and JOB_ID='IT_PROG'and FIRST_NAME like 'D%' and FIRST_NAME like 'D%'
order by FIRST_NAME desc;

select count(*), min(Salary)
from EMPLOYEES
where JOB_ID ='IT_PROG';

---day2
---  -SUBQUERY-  how to find emplpyees information who is making highest salary in the company?
select FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES
order by SALARY desc;

select max(salary)
from EMPLOYEES;

select *
from EMPLOYEES
where SALARY=24000;

select *
from EMPLOYEES
where SALARY= (select max(salary)from EMPLOYEES); -- it will replace 24.000 subquery


--- -SUBQUERY-  find second highest salary
select max(SALARY)
from EMPLOYEES;

select max(SALARY)
from EMPLOYEES
where salary < 24000;

select max(SALARY)
from EMPLOYEES
where salary < (select max(SALARY)from EMPLOYEES);

--- employee information of who is making second highest salary
select  *
from EMPLOYEES
where SALARY = (select max(SALARY)from EMPLOYEES where salary < (select max(SALARY)from EMPLOYEES))
order by FIRST_NAME asc;

--- limit
select * from EMPLOYEES
order by salary desc;

select *
from EMPLOYEES
where ROWNUM < 11
order by SALARY desc; -- bu bize hatalı sonuç verir çünkü biz highest sıralaması yapmadan ilk 10 kişiyi seçtik
                       -- ayrıca order by SALARY desc i where in üzerine yazdığımızda da hata veriyor
--- list the employee top 10 salary
select *
from (select * from EMPLOYEES order by salary desc)     --EMPLOYEES yerine salary de yukarıdan aşağıya sıralanmış listeyi yazıyorum
where ROWNUM <11;