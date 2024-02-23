 create table doctor
  2  ( did number(4) primary key,
  3    dname varchar2(20) not null,
  4    dept varchar2(20) ,
  5    qualification  varchar2(30) check(qualification in('MBBS','MS','ortho')),
  6    salary number(9,2) ,
  7  );
)
*
ERROR at line 7:
ORA-00904: : invalid identifier


SQL> ed
Wrote file afiedt.buf

  1  create table doctor
  2  ( did number(4) primary key,
  3    dname varchar2(20) not null,
  4    dept varchar2(20) ,
  5    qualification  varchar2(30) check(qualification in('MBBS','MS','ortho')),
  6    salary number(9,2)
  7* )
SQL> /

Table created.

SQL> create table patient
  2  ( pid  number(3) primary key,
  3    pname varchar2(20) not null,
  4    disease varchar2(25) ,
  5    charges number(5) default 100,
  6   did number(4) references doctor(did)
  7  );

Table created.

SQL> insert into doctor values ( &did,'&dname','&dept','&quali',&salary);
Enter value for did: 1
Enter value for dname: sunil shah
Enter value for dept: skin care
Enter value for quali: MBBS
Enter value for salary: 50000
old   1: insert into doctor values ( &did,'&dname','&dept','&quali',&salary)
new   1: insert into doctor values ( 1,'sunil shah','skin care','MBBS',50000)

1 row created.

SQL> /
Enter value for did: 2
Enter value for dname: jaid desai
Enter value for dept: Heart specialist
Enter value for quali: MS
Enter value for salary: 80000
old   1: insert into doctor values ( &did,'&dname','&dept','&quali',&salary)
new   1: insert into doctor values ( 2,'jaid desai','Heart specialist','MS',80000)

1 row created.

SQL> /
Enter value for did: 3
Enter value for dname: kush kotadiya
Enter value for dept: brain specialist
Enter value for quali: MBBS
Enter value for salary: 120000
old   1: insert into doctor values ( &did,'&dname','&dept','&quali',&salary)
new   1: insert into doctor values ( 3,'kush kotadiya','brain specialist','MBBS',120000)

1 row created.

SQL> /
Enter value for did: 4
Enter value for dname: Rupal patel
Enter value for dept: general clinic
Enter value for quali: MBBS
Enter value for salary: 10000
old   1: insert into doctor values ( &did,'&dname','&dept','&quali',&salary)
new   1: insert into doctor values ( 4,'Rupal patel','general clinic','MBBS',10000)

1 row created.

SQL> /
Enter value for did: 5
Enter value for dname: pratipal sinh
Enter value for dept: facture
Enter value for quali: ortho
Enter value for salary: 40000
old   1: insert into doctor values ( &did,'&dname','&dept','&quali',&salary)
new   1: insert into doctor values ( 5,'pratipal sinh','facture','ortho',40000)

1 row created.

SQL> /
Enter value for did: 6
Enter value for dname: yug joshi
Enter value for dept: dentist
Enter value for quali: MS
Enter value for salary: 30000
old   1: insert into doctor values ( &did,'&dname','&dept','&quali',&salary)
new   1: insert into doctor values ( 6,'yug joshi','dentist','MS',30000)

1 row created.

SQL> /
Enter value for did: 7
Enter value for dname: dhruv solanki
Enter value for dept: cardiologist
Enter value for quali: ortho
Enter value for salary: 10000
old   1: insert into doctor values ( &did,'&dname','&dept','&quali',&salary)
new   1: insert into doctor values ( 7,'dhruv solanki','cardiologist','ortho',10000)

1 row created.

SQL> /
Enter value for did: 8
Enter value for dname: marun mehta
Enter value for dept: general
Enter value for quali: MS
Enter value for salary: 70000
old   1: insert into doctor values ( &did,'&dname','&dept','&quali',&salary)
new   1: insert into doctor values ( 8,'marun mehta','general','MS',70000)

1 row created.

SQL> /
Enter value for did: 9
Enter value for dname: akash patel
Enter value for dept: kidney specialist
Enter value for quali: MBBS
Enter value for salary: 60000
old   1: insert into doctor values ( &did,'&dname','&dept','&quali',&salary)
new   1: insert into doctor values ( 9,'akash patel','kidney specialist','MBBS',60000)

1 row created.

SQL> /
Enter value for did: 10
Enter value for dname: krishna mariwad
Enter value for dept: soni graphy
Enter value for quali: MS
Enter value for salary: 50000
old   1: insert into doctor values ( &did,'&dname','&dept','&quali',&salary)
new   1: insert into doctor values ( 10,'krishna mariwad','soni graphy','MS ',50000)
insert into doctor values ( 10,'krishna mariwad','soni graphy','MS ',50000)
*
ERROR at line 1:
ORA-02290: check constraint (SYSTEM.SYS_C007021) violated


SQL> /
Enter value for did: 10
Enter value for dname: krishna mariwad
Enter value for dept: animal dr
Enter value for quali: MBBS
Enter value for salary: 40000
old   1: insert into doctor values ( &did,'&dname','&dept','&quali',&salary)
new   1: insert into doctor values ( 10,'krishna mariwad','animal dr','MBBS',40000)

1 row created.

SQL> insert into patient values(&pid,'&pname','&disease',&charges,'&did);
Enter value for pid: 101
Enter value for pname: piyush
Enter value for disease: fever
Enter value for charges: 120
Enter value for did: 8
old   1: insert into patient values(&pid,'&pname','&disease',&charges,'&did)
new   1: insert into patient values(101,'piyush','fever',120,'8)
ERROR:
ORA-01756: quoted string not properly terminated


SQL> insert into patient values(&pid,'&pname','&disease',&charges,&did);
Enter value for pid: 101
Enter value for pname: piyush
Enter value for disease: fever
Enter value for charges: 120
Enter value for did: 8
old   1: insert into patient values(&pid,'&pname','&disease',&charges,&did)
new   1: insert into patient values(101,'piyush','fever',120,8)

1 row created.

SQL> /
Enter value for pid: 102
Enter value for pname: husky
Enter value for disease: hair lose
Enter value for charges: 500
Enter value for did: 10
old   1: insert into patient values(&pid,'&pname','&disease',&charges,&did)
new   1: insert into patient values(102,'husky','hair lose',500,10)

1 row created.

SQL> /
Enter value for pid: 103
Enter value for pname: dhruvi modi
Enter value for disease: head ache
Enter value for charges: 200
Enter value for did: 7
old   1: insert into patient values(&pid,'&pname','&disease',&charges,&did)
new   1: insert into patient values(103,'dhruvi modi','head ache ',200,7)

1 row created.

SQL> /
Enter value for pid: 104
Enter value for pname: bhagyashree
Enter value for disease: water in kidney
Enter value for charges: 20000
Enter value for did: 9
old   1: insert into patient values(&pid,'&pname','&disease',&charges,&did)
new   1: insert into patient values(104,'bhagyashree','water in kidney',20000,9)

1 row created.

SQL> /
Enter value for pid: 105
Enter value for pname: kajal makwana
Enter value for disease: hath facture
Enter value for charges: 2000
Enter value for did: 5
old   1: insert into patient values(&pid,'&pname','&disease',&charges,&did)
new   1: insert into patient values(105,'kajal makwana','hath facture',2000,5)

1 row created.

SQL> /
Enter value for pid: 106
Enter value for pname: nazma
Enter value for disease: heart attack
Enter value for charges: 10000
Enter value for did: 2
old   1: insert into patient values(&pid,'&pname','&disease',&charges,&did)
new   1: insert into patient values(106,'nazma','heart attack ',10000,2)

1 row created.

SQL> /
Enter value for pid: 107
Enter value for pname: krinshi
Enter value for disease: brain tumour
Enter value for charges: 80000
Enter value for did: 3
old   1: insert into patient values(&pid,'&pname','&disease',&charges,&did)
new   1: insert into patient values(107,'krinshi','brain tumour',80000,3)

1 row created.

SQL> /
Enter value for pid: 108
Enter value for pname: radhika
Enter value for disease: cavity
Enter value for charges: 1500
Enter value for did: 6
old   1: insert into patient values(&pid,'&pname','&disease',&charges,&did)
new   1: insert into patient values(108,'radhika','cavity',1500,6)

1 row created.

SQL> /
Enter value for pid: 109
Enter value for pname: rambhai
Enter value for disease: fever
Enter value for charges: 100
Enter value for did: 4
old   1: insert into patient values(&pid,'&pname','&disease',&charges,&did)
new   1: insert into patient values(109,'rambhai','fever',100,4)

1 row created.

SQL> /
Enter value for pid: 110
Enter value for pname: jency
Enter value for disease: cough
Enter value for charges: 200
Enter value for did: 1
old   1: insert into patient values(&pid,'&pname','&disease',&charges,&did)
new   1: insert into patient values(110,'jency','cough',200,1)

1 row created.

SQL> select * from doctor;

       DID DNAME                DEPT
---------- -------------------- --------------------
QUALIFICATION                      SALARY
------------------------------ ----------
         1 sunil shah           skin care
MBBS                                50000

         2 jaid desai           Heart specialist
MS                                  80000

         3 kush kotadiya        brain specialist
MBBS                               120000


       DID DNAME                DEPT
---------- -------------------- --------------------
QUALIFICATION                      SALARY
------------------------------ ----------
         4 Rupal patel          general clinic
MBBS                                10000

         5 pratipal sinh        facture
ortho                               40000

         6 yug joshi            dentist
MS                                  30000


       DID DNAME                DEPT
---------- -------------------- --------------------
QUALIFICATION                      SALARY
------------------------------ ----------
         7 dhruv solanki        cardiologist
ortho                               10000

         8 marun mehta          general
MS                                  70000

         9 akash patel          kidney specialist
MBBS                                60000


       DID DNAME                DEPT
---------- -------------------- --------------------
QUALIFICATION                      SALARY
------------------------------ ----------
        10 krishna mariwad      animal dr
MBBS                                40000


10 rows selected.

SQL> select * from patient;

       PID PNAME                DISEASE                      CHARGES        DID
---------- -------------------- ------------------------- ---------- ----------
       101 piyush               fever                            120          8
       102 husky                hair lose                        500         10
       103 dhruvi modi          head ache                        200          7
       104 bhagyashree          water in kidney                20000          9
       105 kajal makwana        hath facture                    2000          5
       106 nazma                heart attack                   10000          2
       107 krinshi              brain tumour                   80000          3
       108 radhika              cavity                          1500          6
       109 rambhai              fever                            100          4
       110 jency                cough                            200          1

10 rows selected.

SQL> select dname , qualification, salary from doctor;

DNAME                QUALIFICATION                      SALARY
-------------------- ------------------------------ ----------
sunil shah           MBBS                                50000
jaid desai           MS                                  80000
kush kotadiya        MBBS                               120000
Rupal patel          MBBS                                10000
pratipal sinh        ortho                               40000
yug joshi            MS                                  30000
dhruv solanki        ortho                               10000
marun mehta          MS                                  70000
akash patel          MBBS                                60000
krishna mariwad      MBBS                                40000

10 rows selected.

SQL> select pid,pname,charges from patient;

       PID PNAME                   CHARGES
---------- -------------------- ----------
       101 piyush                      120
       102 husky                       500
       103 dhruvi modi                 200
       104 bhagyashree               20000
       105 kajal makwana              2000
       106 nazma                     10000
       107 krinshi                   80000
       108 radhika                    1500
       109 rambhai                     100
       110 jency                       200

10 rows selected.

SQL> update patient set charges = 5000 where disease='brain tumour';

1 row updated.

SQL> select pid,pname,charges from patient;

       PID PNAME                   CHARGES
---------- -------------------- ----------
       101 piyush                      120
       102 husky                       500
       103 dhruvi modi                 200
       104 bhagyashree               20000
       105 kajal makwana              2000
       106 nazma                     10000
       107 krinshi                    5000
       108 radhika                    1500
       109 rambhai                     100
       110 jency                       200

10 rows selected.

SQL> commit;

Commit complete.

SQL>