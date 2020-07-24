Assignment – 12
Using the operators IN, ANY, and ALL.

use assignment1;
select * from customer;
select * from salespeople;
select * from orders;

1) Write a query that selects all customers whose ratings are equal to or greater than ANY of Serres’.

select * from customer
 where rating >=any 
 (select rating from customer where snum in 
	(select snum from salespeople where sname='Serres'));

2) Write a query using ANY or ALL that will find all salespeople who have no customers located in their city.

select snum,city from salespeople where snum !=any(select snum from customer);

3) Write a query that selects all orders for amounts greater than any for the customers in London.

select * from orders where amt >any (select amt from orders where cnum in(select cnum from customer where city='London'));

4) Write the above query using MIN or MAX.
 select max(amt) from orders where cnum in(select cnum from customer where city='London');
or
select min(amt) from orders where cnum in(select cnum from customer where city='London');
