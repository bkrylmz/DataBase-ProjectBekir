-- view is shown in Database/view
CREATE VIEW Emaillist_BY as select substr(FIRST_NAME,0,3)||'.'||substr(LAST_NAME,0,1) as "initials",
       FIRST_NAME||' '||LAST_NAME as "Full_name",
       lower(EMAIL||'@gmail.com') as "Full_email"
from EMPLOYEES;

--to remove view
--drop view EMAILLIST_BEKIR1;

SELECT "Full_name" --pay attention double code
FROM EMAILLIST_BY;

