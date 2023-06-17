SQL> create table Employ_det(
  2  Eid number(5)primary key,
  3  Ename varchar2(15),
  4  Edept varchar2(10),
  5  Esal number(7));

Table created.

SQL> insert into Employ_det(Eid,Ename,Edept,Esal) values(1001,'venkat','software',35000);

1 row created.

SQL> insert into Employ_det(Eid,Ename,Edept,Esal) values(1002,'kiran','technical',25000);

1 row created.
SQL> insert into Employ_det(Eid,Ename,Edept,Esal) values(1003,'manikanta','dataEntry',40000);

1 row created.

SQL> delete from Employ_det where Eid=1003;

1 row deleted.

SQL> select*from Employ_det;

       EID ENAME           EDEPT            ESAL
---------- --------------- ---------- ----------
      1001 venkat          software        35000
      1002 kiran           technical       25000
SQL> insert into Employ_det(Eid,Ename,Edept,Esal) values(1003,'manikanta','dataEntry',40000);
insert into Employ_det(Eid,Ename,Edept,Esal) values(1003,'manikanta','dataEntry',40000)
*
ERROR at line 1:
ORA-00001: unique constraint (SYS.SYS_C007260) violated