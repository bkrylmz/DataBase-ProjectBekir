select *
from employees;

select *
from departments;

select first_name, last_name, department_name
from employees e
         left join departments d
                   on e.department_id = d.department_id;

select CUSTOMER_ID,FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from CUSTOMER left outer join ADDRESS--== left outher sol taraftaki kesişimde olmayanları gösterir
                              on customer.ADDRESS_ID=address.ADDRESS_ID
WHERE address.ADDRESS_ID is null;

select *
from CUSTOMER full outer join ADDRESS--== full outher tüm taraftaki kesişimde olmayanları gösterir
                              on customer.ADDRESS_ID=address.ADDRESS_ID
WHERE customer.ADDRESS_ID IS NULL OR address.ADDRESS_ID IS NULL;


