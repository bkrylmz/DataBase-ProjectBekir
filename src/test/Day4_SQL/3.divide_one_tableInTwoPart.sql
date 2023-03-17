--get me all employees firstname, lastname and their managers first and lastname
select employee_id,first_name,last_name,manager_id from employees;

select e1.employee_id,e1.first_name,e1.last_name,e1.manager_id,e2.employee_id,e2.first_name,e2.last_name
from employees e1 left join employees e2
on e1.manager_id = e2.employee_id
order by e1.employee_id;
--BREAK UNTIL 12:15