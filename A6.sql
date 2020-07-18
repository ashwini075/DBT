Assignment –6

Using Special Operators in Conditions. 

1) Write two different queries that would produce all orders taken on October 3rd or 4th, 1990.
->
        1.select * from orders where odate='90-10-03' or odate='90-10-04';
            +------+---------+------------+------+------+
            | Onum | Amt     | Odate      | Cnum | Snum |
            +------+---------+------------+------+------+
            | 3001 |   18.69 | 1990-10-03 | 2008 | 1007 |
            | 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
            | 3002 | 1900.10 | 1990-10-03 | 2007 | 1004 |
            | 3005 | 5160.45 | 1990-10-03 | 2003 | 1002 |
            | 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
            | 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
            | 3007 |   75.75 | 1990-10-04 | 2004 | 1002 |
            +------+---------+------------+------+------+
or
        2.select * from orders where odate in('90-10-03' , '90-10-04');
            +------+---------+------------+------+------+
            | Onum | Amt     | Odate      | Cnum | Snum |
            +------+---------+------------+------+------+
            | 3001 |   18.69 | 1990-10-03 | 2008 | 1007 |
            | 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
            | 3002 | 1900.10 | 1990-10-03 | 2007 | 1004 |
            | 3005 | 5160.45 | 1990-10-03 | 2003 | 1002 |
            | 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
            | 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
            | 3007 |   75.75 | 1990-10-04 | 2004 | 1002 |
            +------+---------+------------+------+------+

2) Write a query that selects all of the customers serviced by Peel or Motika.
(Hint: the snum field relates the two tables to one another).
->select * from customer where snum IN (SELECT snum
     FROM salespeople
     WHERE sname='Peel'
       OR sname='Motika');
         ------+---------+--------+--------+------+
        | Cnum | Cname   | City   | Rating | Snum |
        +------+---------+--------+--------+------+
        | 2001 | Hoffman | London |    100 | 1001 |
        | 2006 | Clemens | London |    100 | 1001 |
        | 2007 | Pereira | Rome   |    100 | 1004 |
        +------+---------+--------+--------+------+
3 rows in set (0.15 sec)

3) Write a query that will produce all the customers whose names begin with a letter from ‘A’ to ‘G’.
->SELECT *
FROM customer
WHERE cname LIKE 'A%'
  OR cname LIKE 'B%'
  OR cname LIKE 'C%'
  OR cname LIKE 'D%'
  OR cname LIKE 'E%'
  OR cname LIKE 'F%'
  OR cname LIKE 'G%' ; 
  ------+----------+----------+--------+------+
| Cnum | Cname    | City     | Rating | Snum |
+------+----------+----------+--------+------+
| 2002 | Giovanni | Rome     |    200 | 1003 |
| 2004 | Grass    | Berlin   |    300 | 1002 |
| 2006 | Clemens  | London   |    100 | 1001 |
| 2008 | Cisneros | San jose |    300 | 1007 |
+------+----------+----------+--------+------+

4) Write a query that selects all customers whose names begin with the letter ‘C’.
->  select * from customer where cname like 'C%';
    +------+----------+----------+--------+------+
    | Cnum | Cname    | City     | Rating | Snum |
    +------+----------+----------+--------+------+
    | 2006 | Clemens  | London   |    100 | 1001 |
    | 2008 | Cisneros | San jose |    300 | 1007 |
    +------+----------+----------+--------+------+

5) Write a query that selects all orders except those with zeroes or NULLs in the amt field.
->select * from orders where (amt is not null and amt <> 0);
+------+---------+------------+------+------+
| Onum | Amt     | Odate      | Cnum | Snum |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1990-10-03 | 2008 | 1007 |
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3002 | 1900.10 | 1990-10-03 | 2007 | 1004 |
| 3005 | 5160.45 | 1990-10-03 | 2003 | 1002 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
| 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
| 3007 |   75.75 | 1990-10-04 | 2004 | 1002 |
| 3008 | 4723.00 | 1990-10-05 | 2006 | 1001 |
| 3010 | 1309.95 | 1990-10-06 | 2004 | 1002 |
| 3011 | 9891.88 | 1990-10-06 | 2006 | 1001 |
+------+---------+------------+------+------+
or 
select * from orders;
+------+---------+------------+------+------+
| Onum | Amt     | Odate      | Cnum | Snum |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1990-10-03 | 2008 | 1007 |
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3002 | 1900.10 | 1990-10-03 | 2007 | 1004 |
| 3005 | 5160.45 | 1990-10-03 | 2003 | 1002 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
| 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
| 3007 |   75.75 | 1990-10-04 | 2004 | 1002 |
| 3008 | 4723.00 | 1990-10-05 | 2006 | 1001 |
| 3010 | 1309.95 | 1990-10-06 | 2004 | 1002 |
| 3011 | 9891.88 | 1990-10-06 | 2006 | 1001 |
+------+---------+------------+------+------+
or 
select * from orders where amt is not null;