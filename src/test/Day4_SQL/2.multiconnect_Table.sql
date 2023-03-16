--get me first_name,last_name and department name for all employees
select *
from employees;

select *
from departments;

select *
from LOCATIONS;


select first_name, last_name, department_name, d.DEPARTMENT_ID, EMPLOYEE_ID
from employees e left join departments d
on e.department_id = d.department_id
where e.department_id is null;


--get me first_name,last_name and department_name,city for all employees
select first_name, last_name, department_name, city
from employees e join departments d
on e.department_id = d.department_id
join locations l
on d.location_id = l.location_id;

--get me firstname,lastname and deparment name, city,country_name for all
select first_name, last_name, department_name, city, country_name
from employees e join departments d
on e.department_id = d.department_id
join locations L on d.location_id = l.location_id
join countries C on c.country_id = l.country_id;