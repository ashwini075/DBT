1. Display the Supplier table in the descending order of CITY.
->
 Select city from supplier order by city desc;
+--------+
| city   |
+--------+
| Paris  |
| london |
| london |
| Athens |
| Athens |
+--------+

2.Display the Part Table in the ascending order of CITY and within the city in the ascending order of Part names.
->
select city from parts order by city asc;
+--------+
| city   |
+--------+
| Gondia |
| London |
| paris  |
| pune   |
+--------+

3. Display all the Suppliers with a status between 10 and 20.

-> select * from supplier where status between 10 and 20;
+------+--------+--------+--------+
| S#   | SNAME  | STATUS | CITY   |
+------+--------+--------+--------+
| S3   | oswald | 12     | london |
| S4   | Jay    | 10     | Athens |
+------+--------+--------+--------+

4. Display all the Parts and their Weight, which are not in the range of 10 and 15.
->
select * from parts where weight not between 10 and 15;
+------+-------+-------+--------+--------+
| P#   | PNAME | COLOR | WEIGHT | CITY   |
+------+-------+-------+--------+--------+
| P1   | koko  | white |     20 | Gondia |
+------+-------+-------+--------+--------+

5. Display all the Part names starting with the letter ‘S’.
->
select * from parts where pname like 'S%';
 
 +------+-------+-------+--------+------+
| P#   | PNAME | COLOR | WEIGHT | CITY |
+------+-------+-------+--------+------+
| p5   | Suji  | blue  |     24 | kyuv |
+------+-------+-------+--------+------+

6. Display all the Suppliers, belonging to cities starting with the letter ‘L’.
->select * from supplier where city like 'L%';
+------+--------+--------+--------+
| S#   | SNAME  | STATUS | CITY   |
+------+--------+--------+--------+
| S1   | bob    | 25     | london |
| S3   | oswald | 12     | london |
+------+--------+--------+--------+

7. Display all the Projects, with the third letter in JNAME as ‘n
->Select * from projects where jname like '___n%';
+------+-------+-------+
| J#   | JNAME | CITY  |
+------+-------+-------+
| J4   | Aman  | Tokyo |
+------+-------+-------+
1 row in set (0.00 sec)