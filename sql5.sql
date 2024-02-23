 create table vendor
  2  ( v_id number(3) primary key,
  3    v_name varchar2(20) not null
  4  );

Table created.

SQL> create table product
  2  ( p_id  number(3) primary key,
  3    p_name varchar2(20) not null,
  4    p_price  number(4,2) ,
  5    mfgdt date ,
  6    p_qty number(3) check(p_qty >10),
  7    p_type varchar2(20) check( p_type in('food','stationery','electronics'),
  8    v_id  number(3) references vendor(v_id)
  9  );
  p_type varchar2(20) check( p_type in('food','stationery','electronics'),
                                                                         *
ERROR at line 7:
ORA-00907: missing right parenthesis


SQL> ed
Wrote file afiedt.buf

  1  create table product
  2  ( p_id  number(3) primary key,
  3    p_name varchar2(20) not null,
  4    p_price  number(4,2) ,
  5    mfgdt date ,
  6    p_qty number(3) check(p_qty >10),
  7    p_type varchar2(20) check( p_type in('food','stationery','electronics')),
  8    v_id  number(3) references vendor(v_id)
  9* )
SQL> /

Table created.

SQL> insert into vendor values(101,'jaid');

1 row created.

SQL> insert into vendor values(102,'dhruv');

1 row created.

SQL> insert into vendor values(103,'pratipal');

1 row created.

SQL> insert into vendor values(104,'yug');

1 row created.

SQL> insert into vendor values(105,'kush');

1 row created.

SQL> insert into product (&pid,'&pname',&price,'&mfgdt',&qty,'&ptype',&vid);
Enter value for pid: 1
Enter value for pname: burger
Enter value for price: 70
Enter value for mfgdt: 22-feb-2024
Enter value for qty: 10
Enter value for ptype: food
Enter value for vid: 101
old   1: insert into product (&pid,'&pname',&price,'&mfgdt',&qty,'&ptype',&vid)
new   1: insert into product (1,'burger',70,'22-feb-2024',10,'food',101)
insert into product (1,'burger',70,'22-feb-2024',10,'food',101)
                     *
ERROR at line 1:
ORA-00928: missing SELECT keyword


SQL> insert into product values (&pid,'&pname',&price,'&mfgdt',&qty,'&ptype',&vid);
Enter value for pid: 1
Enter value for pname: burger
Enter value for price: 70
Enter value for mfgdt: 22-feb-2024
Enter value for qty: 10
Enter value for ptype: food
Enter value for vid: 101
old   1: insert into product values (&pid,'&pname',&price,'&mfgdt',&qty,'&ptype',&vid)
new   1: insert into product values (1,'burger',70,'22-feb-2024',10,'food',101)
insert into product values (1,'burger',70,'22-feb-2024',10,'food',101)
*
ERROR at line 1:
ORA-02290: check constraint (SYSTEM.SYS_C007016) violated


SQL> insert into product (&pid,'&pname',&price,'&mfgdt',&qty,'&ptype',&vid);
Enter value for pid: 1
Enter value for pname: burger
Enter value for price: 70
Enter value for mfgdt: 22-feb-2024
Enter value for qty: 11
Enter value for ptype: food
Enter value for vid: 101
old   1: insert into product (&pid,'&pname',&price,'&mfgdt',&qty,'&ptype',&vid)
new   1: insert into product (1,'burger',70,'22-feb-2024',11,'food',101)
insert into product (1,'burger',70,'22-feb-2024',11,'food',101)
                     *
ERROR at line 1:
ORA-00928: missing SELECT keyword


SQL> insert into product values (&pid,'&pname',&price,'&mfgdt',&qty,'&ptype',&vid);
Enter value for pid: 1
Enter value for pname: burger
Enter value for price: 70
Enter value for mfgdt: 22-feb-2024
Enter value for qty: 11
Enter value for ptype: food
Enter value for vid: 101
old   1: insert into product values (&pid,'&pname',&price,'&mfgdt',&qty,'&ptype',&vid)
new   1: insert into product values (1,'burger',70,'22-feb-2024',11,'food',101)

1 row created.

SQL> /
Enter value for pid: 2
Enter value for pname: pencil
Enter value for price: 10
Enter value for mfgdt: 18-oct-2023
Enter value for qty: 15
Enter value for ptype: stationery
Enter value for vid: 102
old   1: insert into product values (&pid,'&pname',&price,'&mfgdt',&qty,'&ptype',&vid)
new   1: insert into product values (2,'pencil',10,'18-oct-2023',15,'stationery',102)

1 row created.

SQL> /
Enter value for pid: 3
Enter value for pname: wires
Enter value for price: 150
Enter value for mfgdt: 21-mar-2024
Enter value for qty: 45
Enter value for ptype: electronics
Enter value for vid: 103
old   1: insert into product values (&pid,'&pname',&price,'&mfgdt',&qty,'&ptype',&vid)
new   1: insert into product values (3,'wires',150,'21-mar-2024',45,'electronics',103)
insert into product values (3,'wires',150,'21-mar-2024',45,'electronics',103)
                                      *
ERROR at line 1:
ORA-01438: value larger than specified precision allowed for this column


SQL> /
Enter value for pid: 3
Enter value for pname: wires
Enter value for price: 80
Enter value for mfgdt: 21-mar-2024
Enter value for qty: 45
Enter value for ptype: electronics
Enter value for vid: 103
old   1: insert into product values (&pid,'&pname',&price,'&mfgdt',&qty,'&ptype',&vid)
new   1: insert into product values (3,'wires',80,'21-mar-2024',45,'electronics',103)

1 row created.

SQL> /
Enter value for pid: 4
Enter value for pname: pizza
Enter value for price: 60
Enter value for mfgdt: 12-sep-2022
Enter value for qty: 15
Enter value for ptype: food
Enter value for vid: 104
old   1: insert into product values (&pid,'&pname',&price,'&mfgdt',&qty,'&ptype',&vid)
new   1: insert into product values (4,'pizza',60,'12-sep-2022',15,'food',104)

1 row created.

SQL> /
Enter value for pid: hifi
Enter value for pname:
Enter value for price:
Enter value for mfgdt:
Enter value for qty:
Enter value for ptype:
Enter value for vid:
old   1: insert into product values (&pid,'&pname',&price,'&mfgdt',&qty,'&ptype',&vid)
new   1: insert into product values (hifi,'',,'',,'',)
insert into product values (hifi,'',,'',,'',)
                                    *
ERROR at line 1:
ORA-00936: missing expression


SQL>
SQL> /
Enter value for pid: 5
Enter value for pname: hifi
Enter value for price: 50
Enter value for mfgdt: 11-dec-2004
Enter value for qty: 50
Enter value for ptype: electronics
Enter value for vid: 105
old   1: insert into product values (&pid,'&pname',&price,'&mfgdt',&qty,'&ptype',&vid)
new   1: insert into product values (5,'hifi',50,'11-dec-2004',50,'electronics',105)

1 row created.

SQL> /
Enter value for pid: 6
Enter value for pname: kampas
Enter value for price: 90
Enter value for mfgdt: 20-aug-2009
Enter value for qty: 34
Enter value for ptype: stationery
Enter value for vid: 101
old   1: insert into product values (&pid,'&pname',&price,'&mfgdt',&qty,'&ptype',&vid)
new   1: insert into product values (6,'kampas',90,'20-aug-2009',34,'stationery',101)

1 row created.

SQL> /
Enter value for pid: 7
Enter value for pname: sino trio
Enter value for price: 12
Enter value for mfgdt: 19-jul-2010
Enter value for qty: 18
Enter value for ptype: stationery
Enter value for vid: 105
old   1: insert into product values (&pid,'&pname',&price,'&mfgdt',&qty,'&ptype',&vid)
new   1: insert into product values (7,'sino trio',12,'19-jul-2010',18,'stationery',105)

1 row created.

SQL> /
Enter value for pid: 8
Enter value for pname: butterflue
Enter value for price: 20
Enter value for mfgdt: 23-nov-2005
Enter value for qty: 12
Enter value for ptype: stationery
Enter value for vid: 104
old   1: insert into product values (&pid,'&pname',&price,'&mfgdt',&qty,'&ptype',&vid)
new   1: insert into product values (8,'butterflue',20,'23-nov-2005',12,'stationery',104)

1 row created.

SQL> /
Enter value for pid: 9
Enter value for pname: fans
Enter value for price: 79
Enter value for mfgdt: 12-dec-2004
Enter value for qty: 50
Enter value for ptype: electronics
Enter value for vid: 103
old   1: insert into product values (&pid,'&pname',&price,'&mfgdt',&qty,'&ptype',&vid)
new   1: insert into product values (9,'fans',79,'12-dec-2004',50,'electronics',103)

1 row created.

SQL> /
Enter value for pid: 10
Enter value for pname: manchurian
Enter value for price: 49
Enter value for mfgdt: 23-feb-2024
Enter value for qty: 18
Enter value for ptype: food
Enter value for vid: 102
old   1: insert into product values (&pid,'&pname',&price,'&mfgdt',&qty,'&ptype',&vid)
new   1: insert into product values (10,'manchurian',49,'23-feb-2024',18,'food',102)

1 row created.

SQL> select * from vendor;

      V_ID V_NAME
---------- --------------------
       101 jaid
       102 dhruv
       103 pratipal
       104 yug
       105 kush

SQL> select * from product;

      P_ID P_NAME                  P_PRICE MFGDT          P_QTY
---------- -------------------- ---------- --------- ----------
P_TYPE                     V_ID
-------------------- ----------
         1 burger                       70 22-FEB-24         11
food                        101

         2 pencil                       10 18-OCT-23         15
stationery                  102

         3 wires                        80 21-MAR-24         45
electronics                 103


      P_ID P_NAME                  P_PRICE MFGDT          P_QTY
---------- -------------------- ---------- --------- ----------
P_TYPE                     V_ID
-------------------- ----------
         4 pizza                        60 12-SEP-22         15
food                        104

         5 hifi                         50 11-DEC-04         50
electronics                 105

         6 kampas                       90 20-AUG-09         34
stationery                  101


      P_ID P_NAME                  P_PRICE MFGDT          P_QTY
---------- -------------------- ---------- --------- ----------
P_TYPE                     V_ID
-------------------- ----------
         7 sino trio                    12 19-JUL-10         18
stationery                  105

         8 butterflue                   20 23-NOV-05         12
stationery                  104

         9 fans                         79 12-DEC-04         50
electronics                 103


      P_ID P_NAME                  P_PRICE MFGDT          P_QTY
---------- -------------------- ---------- --------- ----------
P_TYPE                     V_ID
-------------------- ----------
        10 manchurian                   49 23-FEB-24         18
food                        102


10 rows selected.

SQL> alter table product rename column p_type to stationery_item;

Table altered.

SQL> desc product;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 P_ID                                      NOT NULL NUMBER(3)
 P_NAME                                    NOT NULL VARCHAR2(20)
 P_PRICE                                            NUMBER(4,2)
 MFGDT                                              DATE
 P_QTY                                              NUMBER(3)
 STATIONERY_ITEM                                    VARCHAR2(20)
 V_ID                                               NUMBER(3)

SQL> select p_name , p_price, v_id from product;

P_NAME                  P_PRICE       V_ID
-------------------- ---------- ----------
burger                       70        101
pencil                       10        102
wires                        80        103
pizza                        60        104
hifi                         50        105
kampas                       90        101
sino trio                    12        105
butterflue                   20        104
fans                         79        103
manchurian                   49        102

10 rows selected.

SQL>
SQL> delete from product where p_id=2;

1 row deleted.

SQL> alter  table product
  2  modify( p_price number(9,2));

Table altered.

SQL> desc product;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 P_ID                                      NOT NULL NUMBER(3)
 P_NAME                                    NOT NULL VARCHAR2(20)
 P_PRICE                                            NUMBER(9,2)
 MFGDT                                              DATE
 P_QTY                                              NUMBER(3)
 STATIONERY_ITEM                                    VARCHAR2(20)
 V_ID                                               NUMBER(3)

SQL> update product set p_price=500 where p_id=1;

1 row updated.

SQL> select p_name , p_price, v_id from product;

P_NAME                  P_PRICE       V_ID
-------------------- ---------- ----------
burger                      500        101
wires                        80        103
pizza                        60        104
hifi                         50        105
kampas                       90        101
sino trio                    12        105
butterflue                   20        104
fans                         79        103
manchurian                   49        102

9 rows selected.

SQL> commit;

Commit complete.

SQL>