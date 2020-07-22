#Assignment – 9
#Querying Multiple Tables at Once.
use assignment1;
show tables;
select * from orders;
select * from customer;
select * from salespeople;

#1) Write a query that lists each order number followed by the name of the customer who made the order.
 
select onum, cname from orders o ,customer c where c.cnum=o.cnum ;

#2) Write a query that gives the names of both the salesperson and the customer for each order along with the order number.

select sname,cname,onum from orders as o,salespeople as s,customer as c where o.snum=s.snum and o.snum=c.snum;

#3) Write a query that produces all customers serviced by salespeople with a commission above 12%. Output the customer’s name, the salesperson’s name, and the salesperson’s rate of commission.

select customer.cname,salespeople.sname,salespeople.comm*100 as comm from customer,salespeople where customer.snum=salespeople.snum and comm>0.12;

#4) Write a query that calculates the amount of the salesperson’s commission on each order by a customer with a rating above 100.

select amt,comm from salespeople join customer using (snum) join orders using(snum) where rating > 100;
