
select * from testers
union--=> union alt alta birleştirme yapar. -Remove Duplicate but * each row /column must be the same to remove duplicate - Sort the results
select * from developers;

select * from testers
union all--=> union alt alta birleştirme yapar. -Do not remove duplicate - Do not sort the results, just attach the data tables
select * from developers;

select names from testers
union--=> remove duplicate name
select names from developers;


select names from testers
minus--=> minus ilk tablodaki (burada ilk yazılan testers olduğu için) yani testers tablosundaki intesect olmayan yani kesişmeyenleri getirir
select names from developers;

select names from developers
minus--=> minus ilk tablodaki (burada ilk yazılan developers olduğu için) yani developers tablosundaki intesect olmayan yani kesişmeyenleri getirir
select names from testers;

select names from developers
intersect--=> 2 tablo arasında name isminde kesişimleri getirir. sıralar ve remove duplicates
select names from testers;

--UNION ==> 1-combines 2-removes duplicates 3-sorts
--UNION ALL==> 1-combines 2-does not removes duplicates 3- does not sorts
--MINUS ==> show records from query 1 that are not present in query 2
--INTERSECT ==> show common records from 2 queries

--how to find duplicate names in employees table
select first_name,count(*)
from employees
group by first_name
having count(*) >1;
