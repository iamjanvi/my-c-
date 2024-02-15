create table passenger
  2  (
  3   Pid number(4) primary key,
  4   Pname varchar2(30) not null,
  5  Age int
  6  );


SQL> create table bus
  2  (
  3   Bid number(3) primary key,
  4   Color varchar2(15) check ( Color in('red','yellow','blue'))
  5  );



SQL> insert into passenger values(&id,'&name',&age);
Enter value for id: 1
Enter value for name: janvi
Enter value for age: 19



SQL> /
Enter value for id: 2
Enter value for name: krishna
Enter value for age: 20


SQL> /
Enter value for id: 3
Enter value for name: kush
Enter value for age: 19


SQL> /
Enter value for id: 4
Enter value for name: yagnesh
Enter value for age: 19

SQL> /
Enter value for id: 5
Enter value for name: jaid
Enter value for age: 21

SQL> insert into bus values(&id,'&color');
Enter value for id: 1
Enter value for color: yellow

SQL> 2
SP2-0226: Invalid line number
SQL> /
Enter value for id: 2
Enter value for color: red

SQL> /
Enter value for id: 3
Enter value for color: blue


SQL> /
Enter value for id: 4
Enter value for color: yellow

SQL> /
Enter value for id: 5
Enter value for color: red

SQL> select * from passenger ;

       PID PNAME                                 AGE
---------- ------------------------------ ----------
         1 janvi                                  19
         2 krishna                                20
         3 kush                                   19
         4 yagnesh                                19
         5 jaid                                   21

SQL> select * from bus ;

       BID COLOR
---------- ---------------
         1 yellow
         2 red
         3 blue
         4 yellow
         5 red

SQL> alter table passenger
  2  add( gender varchar2(5) check (gender in('m','f'))
  3  );


SQL> update passenger set gender ='f' where Pid =1;


SQL> update passenger set gender ='f' where Pid =2;


SQL> update passenger set gender ='m' where Pid =3;


SQL> update passenger set gender ='m' where Pid =4;


SQL> update passenger set gender ='m' where Pid =5;


SQL> select * from passenger;

       PID PNAME                                 AGE GENDE
---------- ------------------------------ ---------- -----
         1 janvi                                  19 f
         2 krishna                                20 f
         3 kush                                   19 m
         4 yagnesh                                19 m
         5 jaid                                   21 m

SQL> alter table bus
  2  modify ( Color varchar2(20));


SQL> desc bus;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 BID                                       NOT NULL NUMBER(3)
 COLOR                                              VARCHAR2(20)

SQL> insert into bus values(&id,'&color');
Enter value for id: 11
Enter value for color: red
old   1: insert into bus values(&id,'&color')
new   1: insert into bus values(11,'red')


SQL> update bus set Color = 'blue' where Bid = 11;


SQL> select * from bus;

       BID COLOR
---------- --------------------
         1 yellow
         2 red
         3 blue
         4 yellow
         5 red
        11 blue




SQL> select Pname from passenger where age between 20 and 30;

PNAME
------------------------------
krishna
jaid

SQL> select * from bus where Color ='blue';

       BID COLOR
---------- --------------------
         3 blue
        11 blue