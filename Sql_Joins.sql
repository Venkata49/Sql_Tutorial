
SQL> create table loan(
  2  loanno number(10),
  3  cusname varchar(10));

Table created.

SQL> insert into loan values('&loanno','&cusname');
Enter value for loanno: 001
Enter value for cusname: venkat
old   1: insert into loan values('&loanno','&cusname')
new   1: insert into loan values('001','venkat')

1 row created.

SQL> /
Enter value for loanno: 002
Enter value for cusname: sreenu
old   1: insert into loan values('&loanno','&cusname')
new   1: insert into loan values('002','sreenu')

1 row created.

SQL> /
Enter value for loanno: 003
Enter value for cusname: shaik
old   1: insert into loan values('&loanno','&cusname')
new   1: insert into loan values('003','shaik')

1 row created.

SQL> /
Enter value for loanno: 004
Enter value for cusname: pallavi
old   1: insert into loan values('&loanno','&cusname')
new   1: insert into loan values('004','pallavi')

1 row created.

SQL> /
Enter value for loanno: 005
Enter value for cusname: raj
old   1: insert into loan values('&loanno','&cusname')
new   1: insert into loan values('005','raj')

1 row created.

SQL> select*from loan;

    LOANNO CUSNAME
---------- ----------
         1 venkat
         2 sreenu
         3 shaik
         4 pallavi
         5 raj

SQL> create table borrower(
  2  loanno number(10),
  3  branchname varchar2(10),
  4  amount number(10));

Table created.

SQL> insert into borrower values('&loanno','&branchname','&amount');
Enter value for loanno: 001
Enter value for branchname: sbi
Enter value for amount: 35000
old   1: insert into borrower values('&loanno','&branchname','&amount')
new   1: insert into borrower values('001','sbi','35000')

1 row created.

SQL> /
Enter value for loanno: 002
Enter value for branchname: icici
Enter value for amount: 40000
old   1: insert into borrower values('&loanno','&branchname','&amount')
new   1: insert into borrower values('002','icici','40000')

1 row created.

SQL> /
Enter value for loanno: 003
Enter value for branchname: kenara
Enter value for amount: 60000
old   1: insert into borrower values('&loanno','&branchname','&amount')
new   1: insert into borrower values('003','kenara','60000')

1 row created.

SQL> /
Enter value for loanno: 007
Enter value for branchname: hdfc
Enter value for amount: 67000
old   1: insert into borrower values('&loanno','&branchname','&amount')
new   1: insert into borrower values('007','hdfc','67000')

1 row created.

SQL> /
Enter value for loanno: 008
Enter value for branchname: gov
Enter value for amount: 73000
old   1: insert into borrower values('&loanno','&branchname','&amount')
new   1: insert into borrower values('008','gov','73000')

1 row created.

SQL> select*from borrower;

    LOANNO BRANCHNAME     AMOUNT
---------- ---------- ----------
         1 sbi             35000
         2 icici           40000
         3 kenara          60000
         7 hdfc            67000
         8 gov             73000

SQL> select*from loan inner join borrower on loan.loanno=borrower.loanno;

    LOANNO CUSNAME        LOANNO BRANCHNAME     AMOUNT
---------- ---------- ---------- ---------- ----------
         1 venkat              1 sbi             35000
         2 sreenu              2 icici           40000
         3 shaik               3 kenara          60000

SQL> select*from loan left outer join borrower on loan.loanno=borrower.loanno;

    LOANNO CUSNAME        LOANNO BRANCHNAME     AMOUNT
---------- ---------- ---------- ---------- ----------
         1 venkat              1 sbi             35000
         2 sreenu              2 icici           40000
         3 shaik               3 kenara          60000
         5 raj
         4 pallavi

SQL> select*from loan right outer join borrower on loan.loanno=borrower.loanno;

    LOANNO CUSNAME        LOANNO BRANCHNAME     AMOUNT
---------- ---------- ---------- ---------- ----------
         1 venkat              1 sbi             35000
         2 sreenu              2 icici           40000
         3 shaik               3 kenara          60000
                               7 hdfc            67000
                               8 gov             73000

SQL> select*from loan full outer join borrower on loan.loanno=borrower.loanno;

    LOANNO CUSNAME        LOANNO BRANCHNAME     AMOUNT
---------- ---------- ---------- ---------- ----------
         1 venkat              1 sbi             35000
         2 sreenu              2 icici           40000
         3 shaik               3 kenara          60000
                               7 hdfc            67000
                               8 gov             73000
         5 raj
         4 pallavi

7 rows selected.
