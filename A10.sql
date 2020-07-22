#Assignment – 10
#Joining a Table to Itself.

#1) Write a query that produces all pairs of salespeople who are living in the same city. Exclude combinations of salespeople with themselves as well as duplicate rows with the order reversed.

select s1.sname,s2.sname,s1.city from salespeople s1,salespeople s2 where s1.city=s2.city and s1.sname< s2.sname;

#2) Write a query that produces the names and cities of all customers with the same rating as Hoffman.
select cname,city from customer where rating=(select rating from customer where cname='Hoffman');
    