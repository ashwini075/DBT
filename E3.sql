#1. Display all the Supplier names with the initial letter capital.
 use e1;
 show tables;
 desc supplier;
 select * from supplier;
 select concat(upper(substr(sname,1,1)), lower(substr(sname,2))) as sname from supplier;
 

#2. Display all the Supplier names in upper case.
select upper(sname) as sname from supplier;

#3. Display all the Supplier names in lower case.
select lower(sname) as sname from supplier;

#4. Display all the Supplier names padded to 25 characters, with spaces on the left.
select lpad(sname,25,' ') as sname from supplier;

 #5. Display all the Supplier names (with ‘la’ replaced by ‘ro’).
#HINT: REPLACE.
insert into supplier('S6','laxman','45','Pune');
select replace(sname,'la','ro')  as sname from supplier;
commit;

#6. Implement the above command such that ‘l’ is replaced with ‘r’ and ‘a’ is replaced with ‘o’.
select translate(sname,'la','ro')  as sname from supplier;
/*works in oracle*/
select replace(replace(sname,'l','r'),'a','o') as sname from supplier;

#7. Display the Supplier names and the lengths of the names.
select sname,length(sname) from supplier;

#8. Use the soundex function to search for a supplier by the name of ‘BLOKE’.
insert into supplier values('S7','Bloke','39','Loni');
select * from supplier where soundex(sname)=soundex('BLOKE');

#9. Display the Supplier name and the status (as Ten, Twenty, Thirty, etc.).
Select * from supplier;
select Sname, case
when Status = '10' then 'Ten'
when Status = '20' then 'Twenty'
when Status = '30' then 'Thirty'
when Status = '40' then 'Fourty'
when Status = '50' then 'Fifty'
else 'Others'
end as StatusText
from SUPPLIER;
 
#10. Display the current day (e.g. Thursday).
select dayname(curdate());