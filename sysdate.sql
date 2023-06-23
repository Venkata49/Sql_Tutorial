
SQL> select sysdate from dual;

SYSDATE
---------
23-JUN-23

SQL> select sysdate,sysdate+10 from dual;

SYSDATE   SYSDATE+1
--------- ---------
23-JUN-23 03-JUL-23

SQL> select sysdate,sysdate+48/24 from dual;

SYSDATE   SYSDATE+4
--------- ---------
23-JUN-23 25-JUN-23

SQL> select ename,hiredate,hiredate+10 from dual;
select ename,hiredate,hiredate+10 from dual
                      *
ERROR at line 1:
ORA-00904: "HIREDATE": invalid identifier


SQL> select ename,hiredate,hiredate+10 from emp;

ENAME      HIREDATE  HIREDATE+
---------- --------- ---------
SMITH      17-DEC-80 27-DEC-80
ALLEN      20-FEB-81 02-MAR-81
ward       22-FEB-81 04-MAR-81
BLAKE      09-JUN-83 19-JUN-83
ADAMS      12-APR-90 22-APR-90

SQL> select ename,hiredate,hiredate-10 from emp;

ENAME      HIREDATE  HIREDATE-
---------- --------- ---------
SMITH      17-DEC-80 07-DEC-80
ALLEN      20-FEB-81 10-FEB-81
ward       22-FEB-81 12-FEB-81
BLAKE      09-JUN-83 30-MAY-83
ADAMS      12-APR-90 02-APR-90

SQL> select ename,hiredate,sysdate-hiredate"exofemps"from emp;

ENAME      HIREDATE    exofemps
---------- --------- ----------
SMITH      17-DEC-80 15528.4012
ALLEN      20-FEB-81 15463.4012
ward       22-FEB-81 15461.4012
BLAKE      09-JUN-83 14624.4012
ADAMS      12-APR-90 12125.4012

SQL> select empno,hiredate,round((sysdate-hiredate)/365)from emp;

     EMPNO HIREDATE  ROUND((SYSDATE-HIREDATE)/365)
---------- --------- -----------------------------
      7396 17-DEC-80                            43
      7499 20-FEB-81                            42
      7521 22-FEB-81                            42
      7698 09-JUN-83                            40
      7999 12-APR-90                            33
