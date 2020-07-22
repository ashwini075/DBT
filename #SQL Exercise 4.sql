#SQL Exercise 4
use e1;
show tables;
select * from supplier;
select * from projects;
select * from supplier_parts_project;
#1. Display the minimum Status in the Supplier table.

select min(status) from supplier;

#2. Display the maximum Weight in the Parts table.
select * from parts;
select max(weight) from parts;

#3. Display the average Weight of the Parts.
select * from parts;
select avg(weight) from parts;

#4. Display the total Quantity sold for part ‘P1’.

select * from supplier_parts_project;
select `P#`,qty from supplier_parts_project where `p#`= 'P1';

#5. Display the total Quantity sold for each part.

select `P#`,count(qty )from supplier_parts_project group by `P#`;

#6. Display the average Quantity sold for each part.

select `P#`,avg(qty) from supplier_parts_project group by `P#`;

#7. Display the maximum Quantity sold for each part, provided the maximum Quantity is greater than 800.

insert into supplier_parts_project values('S','P5','J7',900);
select max(qty) from supplier_parts_project  group by `P#` having max(qty) >800;

#8. Display the Status and the count of Suppliers with that Status.

select status ,count(*) from supplier group by status;

#9. Display the count of Projects going on in different cities.
select distinct(city) ,count(city) from  projects group by city;
select * from projects;

#10. What is the difference between COUNT(Status) and COUNT(*) ?
/*
count (status)-->shows number of stauts count without null values present over there.
count(*)---->shows all rows present in table.
*/
select count(status) from supplier;
select count(*) from supplier;

/*11. Display the Status and the Count of Suppliers with that Status in the following format as shown below:-
Status Count
Ten 1
Twenty 2
Thirty 3   */
Select * from supplier;
select case
when Status = '10' then 'Ten'
when Status = '20' then 'Twenty'
when Status = '30' then 'Thirty'
when Status = '40' then 'Fourty'
when Status = '50' then 'Fifty'
else 'Others'
end status,count(sname)
from supplier group by status
order by sname;
