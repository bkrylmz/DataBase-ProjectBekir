select * from customer;
select * from address;

select first_name,last_name,address,phone
from customer join address
on customer.address_id = address.address_id;

                                                        --==> intersection=kesişim
select first_name,last_name,c.address_id,address,phone    --==>join = inner join  ==> when u write join it is default join inner bu sadece ıd leri eşleşenleri getirir
from customer c left join address a                       --==> customer as "c" = customer c bu ikisi aynı temporarily name is c
on c.address_id = a.address_id; --left ==> intersection values  from dan sonra ilk customer geldiği için left demek customer demek right demek adress demektir.
                                                          --left ==> denildiği zaman eşleşen eşleşmeyen tüm customer ları listele demektir.

select first_name,last_name,c.address_id,a.address_id,address,phone
from customer c right join address a --==> right denildiği zaman adress i alır
on c.address_id = a.address_id;


select first_name,last_name,c.address_id,a.address_id,address,phone
from customer c full join address a --==> full denildiği zaman hem sağdaki hem soldaki hem de eşleşeni alır.
on c.address_id = a.address_id;
