SQL> create table emp(
  2  eno number(10),
  3  ename varchar2(10),
  4  esal number(10));

Table created.

SQL> insert into emp values('&eno','&ename','&esal');
Enter value for eno: 001
Enter value for ename: venkat
Enter value for esal: 35000
old   1: insert into emp values('&eno','&ename','&esal')
new   1: insert into emp values('001','venkat','35000')

1 row created.

SQL> /
Enter value for eno: 002
Enter value for ename: sreeni
Enter value for esal: 70000
old   1: insert into emp values('&eno','&ename','&esal')
new   1: insert into emp values('002','sreeni','70000')

1 row created.

SQL> /
Enter value for eno: 003
Enter value for ename: komal
Enter value for esal: 40000
old   1: insert into emp values('&eno','&ename','&esal')
new   1: insert into emp values('003','komal','40000')

1 row created.

SQL> /
Enter value for eno: 004
Enter value for ename: kumar
Enter value for esal: 33000
old   1: insert into emp values('&eno','&ename','&esal')
new   1: insert into emp values('004','kumar','33000')

1 row created.

SQL> /
Enter value for eno: 005
Enter value for ename: devi
Enter value for esal: 67000
old   1: insert into emp values('&eno','&ename','&esal')
new   1: insert into emp values('005','devi','67000')

1 row created.

SQL> select*from emp;

       ENO ENAME            ESAL
---------- ---------- ----------
         1 venkat          35000
         2 sreeni          70000
         3 komal           40000
         4 kumar           33000
         5 devi            67000


<--- Aggregate functions --->


SQL> select sum(esal)from emp;

 SUM(ESAL)
----------
    245000

SQL> select avg(esal)from emp;

 AVG(ESAL)
----------
     49000

SQL> select min(esal)from emp;

 MIN(ESAL)
----------
     33000

SQL> select max(esal)from emp;

 MAX(ESAL)
----------
     70000

SQL> select count(esal)from emp;

COUNT(ESAL)
-----------
          5