--get me all info where employee_id 135 176 154 129
select *from EMPLOYEES
where EMPLOYEE_ID = 135 or EMPLOYEE_ID = 176 or EMPLOYEE_ID = 154 or EMPLOYEE_ID = 129;

select * from EMPLOYEES
where EMPLOYEE_ID in(135, 176, 154, 129);

--get me city of where county_id IT, US, UK
SELECT CITY, COUNTRY_ID FROM LOCATIONS
WHERE COUNTRY_ID in('IT', 'US', 'UK')