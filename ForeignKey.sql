SQL> create table Employ_det(
  2  edi number(5)primary key,
  3  ename varchar2(15),
  4  edetName varchar2(10),
  5  esal number(5));

Table created.

SQL> insert into Employ_det(edi,ename,edetName,esal)values(101,'venkata kumar','software',35000);

1 row created.

SQL> insert into Employ_det(edi,ename,edetName,esal)values(102,'sreenivasulu','software',70000);

1 row created.
SQL> insert into Employ_det(edi,ename,edetName,esal)values(103,'shahabax','design',25000);

1 row created.

SQL> insert into Employ_det(edi,ename,edetName,esal)values(104,'konmal','hardware',45000);

1 row created.

SQL> insert into Employ_det(edi,ename,edetName,esal)values(105,'raj','security',53000);

1 row created.

SQL> insert into Employ_det(edi,ename,edetName,esal)values(105,'kamal','business',23000);
insert into Employ_det(edi,ename,edetName,esal)values(105,'kamal','business',23000)
*
ERROR at line 1:
ORA-00001: unique constraint (SYS.SYS_C007269) violated

SQL> select*from Employ_det;

       EDI ENAME           EDETNAME         ESAL
---------- --------------- ---------- ----------
       101 venkata kumar   software        35000
       102 sreenivasulu    software        70000
       103 shahabax        design          25000
       104 konmal          hardware        45000
       105 raj             security        53000


<----------------------------------------- Foreign Key ------------------------------------------->

SQL> create table dt_emp(
  2  dno number(5)primary key,
  3  dname varchar(10),foreign key(dno)references Employ_det(edi));

Table created.

SQL> insert into dt_emp(dno,dname)values(101,'lakshmi');

1 row created.

SQL> insert into dt_emp(dno,dname)values(102,'kamal');

1 row created.

SQL> insert into dt_emp(dno,dname)values(102,'laksmi');
insert into dt_emp(dno,dname)values(102,'laksmi')
*
ERROR at line 1:
ORA-00001: unique constraint (SYS.SYS_C007270) violated
SQL> insert into dt_emp(dno,dname)values(104,'konmal');

1 row created.

SQL> slect*from dt_emp;
SP2-0734: unknown command beginning "slect*from..." - rest of line ignored.
SQL> select*from dt_emp;

       DNO DNAME
---------- ----------
       101 lakshmi
       102 kamal
       104 konmal
