MariaDB [(none)]> create table person (
    -> ID integer(3),
    -> lname varchar(225) NOT NULL,
    -> fname varchar(225) NOT NULL,
    -> Age integer(3),
    -> CONSTRAINT PK_PERSON primary key (ID,lname)
    -> );
ERROR 1046 (3D000): No database selected
MariaDB [(none)]> use CSD2204S18
Database changed
MariaDB [CSD2204S18]> create table person (
    -> ID integer(3),
    -> lname varchar(225) NOT NULL,
    -> fname varchar(225) NOT NULL,\
    -> ';
    '> );
    '> ";
    '> ';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '';
);
";
'' at line 5
MariaDB [CSD2204S18]> create table person (
    -> ID integer(3),
    -> lname varchar(225) NOT NULL,
    -> fname varchar(225) NOT NULL,
    -> Age integer(3),
    -> CONSTRAINT PK_PERSON primary key (ID,lname)
    -> );
Query OK, 0 rows affected (0.31 sec)

MariaDB [CSD2204S18]> DESC person;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| ID    | int(3)       | NO   | PRI | NULL    |       |
| lname | varchar(225) | NO   | PRI | NULL    |       |
| fname | varchar(225) | NO   |     | NULL    |       |
| Age   | int(3)       | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
4 rows in set (0.03 sec)

MariaDB [CSD2204S18]> show index from person;
+--------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table  | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+--------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| person |          0 | PRIMARY  |            1 | ID          | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| person |          0 | PRIMARY  |            2 | lname       | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
+--------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.01 sec)

MariaDB [CSD2204S18]> CREATE TABLE Orders (
    ->  OrderID integer(3) NOT NULL,
    ->  OrderNumber integer(3) NOT NULL,
    ->  PersonID integer(3),
    ->  PRIMARY KEY (OrderID),
    ->  CONSTRAINT FK_PersonOrder FOREIGN KEY (P
    -> ersonID)
    ->  REFERENCES Persons(PersonID)
    ->  );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'ersonID)
 REFERENCES Persons(PersonID)
 )' at line 7
MariaDB [CSD2204S18]> CREATE TABLE Orders (
    ->  OrderID integer(3) NOT NULL,
    ->  OrderNumber integer(3) NOT NULL,
    ->  personID integer(3),
    ->  PRIMARY KEY(OrderID),
    ->  CONSTRAINT FK_PersonOrder FOREIGN KEY (personID)
    ->  REFERENCES person(PersonID)
    -> );
ERROR 1005 (HY000): Can't create table `csd2204s18`.`orders` (errno: 150 "Foreign key constraint is incorrectly formed")
MariaDB [CSD2204S18]> CREATE TABLE Orders (
    ->  OrderID integer(3) NOT NULL,
    ->  OrderNumber integer(3) NOT NULL,
    ->  PersonID integer(3),
    ->  PRIMARY KEY (OrderID),
    ->  CONSTRAINT FK_PersonOrder FOREIGN KEY (ID)
    ->  CONSTRAINT FK_PersonOrder FOREIGN KEY (personID));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'CONSTRAINT FK_PersonOrder FOREIGN KEY (personID))' at line 7
MariaDB [CSD2204S18]> CREATE TABLE Orders (
    ->  OrderID integer(3) NOT NULL,
    ->  OrderNumber integer(3) NOT NULL,
    ->  PersonID integer(3),
    ->  PRIMARY KEY (OrderID),
    ->  CONSTRAINT FK_PersonOrder FOREIGN KEY (personID)
    ->  REFERENCES person(ID));
Query OK, 0 rows affected (0.19 sec)

MariaDB [CSD2204S18]> show index from Orders;
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table  | Non_unique | Key_name       | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| orders |          0 | PRIMARY        |            1 | OrderID     | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| orders |          1 | FK_PersonOrder |            1 | PersonID    | A         |           0 |     NULL | NULL   | YES  | BTREE      |         |               |
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> desc customer;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cust_id   | varchar(5)  | NO   | PRI | NULL    |       |
| cust_name | varchar(20) | YES  |     | NULL    |       |
| nickname  | varchar(10) | YES  |     | NULL    |       |
| city      | varchar(20) | YES  |     | NULL    |       |
| pcode     | varchar(10) | YES  |     | NULL    |       |
| age       | int(3)      | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.03 sec)

MariaDB [CSD2204S18]> create table c1 as select * from customer;
Query OK, 10 rows affected (0.25 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> create table c2 as select cust_name,pcode from customer where city='Toronto';
Query OK, 3 rows affected (0.22 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c1;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cust_id   | varchar(5)  | NO   |     | NULL    |       |
| cust_name | varchar(20) | YES  |     | NULL    |       |
| nickname  | varchar(10) | YES  |     | NULL    |       |
| city      | varchar(20) | YES  |     | NULL    |       |
| pcode     | varchar(10) | YES  |     | NULL    |       |
| age       | int(3)      | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.02 sec)

MariaDB [CSD2204S18]> desc c2;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cust_name | varchar(20) | YES  |     | NULL    |       |
| pcode     | varchar(10) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from c1;
+---------+-----------------+----------+------------+--------+------+
| cust_id | cust_name       | nickname | city       | pcode  | age  |
+---------+-----------------+----------+------------+--------+------+
| C01     | Ashley          | Ash      | WDC        | 321200 |   34 |
| C02     | Bob Marley      | Bm       | Toronto    | 100100 |   23 |
| C03     | Cherlies Theron | Cher     | New York   | 120134 |   20 |
| C04     | Denial Jack     | DJ       | Brazil     | 341020 |   25 |
| C05     | Donna newman    | New      | Toronto    | 130120 |   50 |
| C06     | Eston M.        | M.       | Toronto    | 201023 |   65 |
| C07     | Bobby Chacko    | Chac     | New York   | 320300 |   70 |
| C08     | Ashko Charles   | AK       | USA        | 421044 |   72 |
| C09     | Tony Special    | Specie   | GTA        | 418921 |   62 |
| C10     | Jack Sp         | Sparroe  | New Jersey | 102301 |   35 |
+---------+-----------------+----------+------------+--------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from c2;
+--------------+--------+
| cust_name    | pcode  |
+--------------+--------+
| Bob Marley   | 100100 |
| Donna newman | 130120 |
| Eston M.     | 201023 |
+--------------+--------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| c2                   |
| customer             |
| orders               |
| person               |
+----------------------+
5 rows in set (0.01 sec)

MariaDB [CSD2204S18]> create table c3 like customer;
Query OK, 0 rows affected (0.17 sec)

MariaDB [CSD2204S18]> desc c3;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cust_id   | varchar(5)  | NO   | PRI | NULL    |       |
| cust_name | varchar(20) | YES  |     | NULL    |       |
| nickname  | varchar(10) | YES  |     | NULL    |       |
| city      | varchar(20) | YES  |     | NULL    |       |
| pcode     | varchar(10) | YES  |     | NULL    |       |
| age       | int(3)      | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

MariaDB [CSD2204S18]> select * from c3;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> insert into c3 select * from customer;
Query OK, 10 rows affected (0.03 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> select * from c3;
+---------+-----------------+----------+------------+--------+------+
| cust_id | cust_name       | nickname | city       | pcode  | age  |
+---------+-----------------+----------+------------+--------+------+
| C01     | Ashley          | Ash      | WDC        | 321200 |   34 |
| C02     | Bob Marley      | Bm       | Toronto    | 100100 |   23 |
| C03     | Cherlies Theron | Cher     | New York   | 120134 |   20 |
| C04     | Denial Jack     | DJ       | Brazil     | 341020 |   25 |
| C05     | Donna newman    | New      | Toronto    | 130120 |   50 |
| C06     | Eston M.        | M.       | Toronto    | 201023 |   65 |
| C07     | Bobby Chacko    | Chac     | New York   | 320300 |   70 |
| C08     | Ashko Charles   | AK       | USA        | 421044 |   72 |
| C09     | Tony Special    | Specie   | GTA        | 418921 |   62 |
| C10     | Jack Sp         | Sparroe  | New Jersey | 102301 |   35 |
+---------+-----------------+----------+------------+--------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c3 add column country varchar(100);
Query OK, 0 rows affected (0.34 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| cust_id   | varchar(5)   | NO   | PRI | NULL    |       |
| cust_name | varchar(20)  | YES  |     | NULL    |       |
| nickname  | varchar(10)  | YES  |     | NULL    |       |
| city      | varchar(20)  | YES  |     | NULL    |       |
| pcode     | varchar(10)  | YES  |     | NULL    |       |
| age       | int(3)       | YES  |     | NULL    |       |
| country   | varchar(100) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c3 modify column country varchar(40);
Query OK, 10 rows affected (0.52 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cust_id   | varchar(5)  | NO   | PRI | NULL    |       |
| cust_name | varchar(20) | YES  |     | NULL    |       |
| nickname  | varchar(10) | YES  |     | NULL    |       |
| city      | varchar(20) | YES  |     | NULL    |       |
| pcode     | varchar(10) | YES  |     | NULL    |       |
| age       | int(3)      | YES  |     | NULL    |       |
| country   | varchar(40) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

MariaDB [CSD2204S18]> alter table c3 modify column Country varchar(40);
Query OK, 0 rows affected (0.00 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cust_id   | varchar(5)  | NO   | PRI | NULL    |       |
| cust_name | varchar(20) | YES  |     | NULL    |       |
| nickname  | varchar(10) | YES  |     | NULL    |       |
| city      | varchar(20) | YES  |     | NULL    |       |
| pcode     | varchar(10) | YES  |     | NULL    |       |
| age       | int(3)      | YES  |     | NULL    |       |
| Country   | varchar(40) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c3 change column pcode zipcode varchar(10);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cust_id   | varchar(5)  | NO   | PRI | NULL    |       |
| cust_name | varchar(20) | YES  |     | NULL    |       |
| nickname  | varchar(10) | YES  |     | NULL    |       |
| city      | varchar(20) | YES  |     | NULL    |       |
| zipcode   | varchar(10) | YES  |     | NULL    |       |
| age       | int(3)      | YES  |     | NULL    |       |
| Country   | varchar(40) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c3 change column cust_id cid varchar(5);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cid       | varchar(5)  | NO   | PRI | NULL    |       |
| cust_name | varchar(20) | YES  |     | NULL    |       |
| nickname  | varchar(10) | YES  |     | NULL    |       |
| city      | varchar(20) | YES  |     | NULL    |       |
| zipcode   | varchar(10) | YES  |     | NULL    |       |
| age       | int(3)      | YES  |     | NULL    |       |
| Country   | varchar(40) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c3 drop column nickname varchar(10);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'varchar(10)' at line 1
MariaDB [CSD2204S18]> alter table c3 drop column nickname;
Query OK, 0 rows affected (0.25 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cid       | varchar(5)  | NO   | PRI | NULL    |       |
| cust_name | varchar(20) | YES  |     | NULL    |       |
| city      | varchar(20) | YES  |     | NULL    |       |
| zipcode   | varchar(10) | YES  |     | NULL    |       |
| age       | int(3)      | YES  |     | NULL    |       |
| Country   | varchar(40) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c3 modify cust_ name varchar(20) NOT NULL;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'name varchar(20) NOT NULL' at line 1
MariaDB [CSD2204S18]> alter table c3 modify cust_name varchar(20) NOT NULL;
Query OK, 10 rows affected (1.64 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cid       | varchar(5)  | NO   | PRI | NULL    |       |
| cust_name | varchar(20) | NO   |     | NULL    |       |
| city      | varchar(20) | YES  |     | NULL    |       |
| zipcode   | varchar(10) | YES  |     | NULL    |       |
| age       | int(3)      | YES  |     | NULL    |       |
| Country   | varchar(40) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

MariaDB [CSD2204S18]> alter table c1 add primary key ()country varchar(100);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')country varchar(100)' at line 1
MariaDB [CSD2204S18]> show c1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'c1' at line 1
MariaDB [CSD2204S18]> desc c1;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cust_id   | varchar(5)  | NO   |     | NULL    |       |
| cust_name | varchar(20) | YES  |     | NULL    |       |
| nickname  | varchar(10) | YES  |     | NULL    |       |
| city      | varchar(20) | YES  |     | NULL    |       |
| pcode     | varchar(10) | YES  |     | NULL    |       |
| age       | int(3)      | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c1 add primary key (cust_id);
Query OK, 0 rows affected (0.23 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c1;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cust_id   | varchar(5)  | NO   | PRI | NULL    |       |
| cust_name | varchar(20) | YES  |     | NULL    |       |
| nickname  | varchar(10) | YES  |     | NULL    |       |
| city      | varchar(20) | YES  |     | NULL    |       |
| pcode     | varchar(10) | YES  |     | NULL    |       |
| age       | int(3)      | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> how to drop primary key!
    -> ';
    '> );
    '> ";
    '> !;
    '> ';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'how to drop primary key!
';
);
";
!;
'' at line 1
MariaDB [CSD2204S18]> show version;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'version' at line 1
MariaDB [CSD2204S18]> show variables like 'version';
+---------------+-----------------+
| Variable_name | Value           |
+---------------+-----------------+
| version       | 10.1.21-MariaDB |
+---------------+-----------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c1 drop primary key;
Query OK, 10 rows affected (0.76 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c1;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cust_id   | varchar(5)  | NO   |     | NULL    |       |
| cust_name | varchar(20) | YES  |     | NULL    |       |
| nickname  | varchar(10) | YES  |     | NULL    |       |
| city      | varchar(20) | YES  |     | NULL    |       |
| pcode     | varchar(10) | YES  |     | NULL    |       |
| age       | int(3)      | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> show index from person;
+--------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table  | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+--------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| person |          0 | PRIMARY  |            1 | ID          | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| person |          0 | PRIMARY  |            2 | lname       | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
+--------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> rop index PK_Person on person;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'rop index PK_Person on person' at line 1
MariaDB [CSD2204S18]> select * from c3;
+-----+-----------------+------------+---------+------+---------+
| cid | cust_name       | city       | zipcode | age  | Country |
+-----+-----------------+------------+---------+------+---------+
| C01 | Ashley          | WDC        | 321200  |   34 | NULL    |
| C02 | Bob Marley      | Toronto    | 100100  |   23 | NULL    |
| C03 | Cherlies Theron | New York   | 120134  |   20 | NULL    |
| C04 | Denial Jack     | Brazil     | 341020  |   25 | NULL    |
| C05 | Donna newman    | Toronto    | 130120  |   50 | NULL    |
| C06 | Eston M.        | Toronto    | 201023  |   65 | NULL    |
| C07 | Bobby Chacko    | New York   | 320300  |   70 | NULL    |
| C08 | Ashko Charles   | USA        | 421044  |   72 | NULL    |
| C09 | Tony Special    | GTA        | 418921  |   62 | NULL    |
| C10 | Jack Sp         | New Jersey | 102301  |   35 | NULL    |
+-----+-----------------+------------+---------+------+---------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> update c3 set country='UA';
Query OK, 10 rows affected (0.06 sec)
Rows matched: 10  Changed: 10  Warnings: 0

MariaDB [CSD2204S18]> select * from c3;
+-----+-----------------+------------+---------+------+---------+
| cid | cust_name       | city       | zipcode | age  | Country |
+-----+-----------------+------------+---------+------+---------+
| C01 | Ashley          | WDC        | 321200  |   34 | UA      |
| C02 | Bob Marley      | Toronto    | 100100  |   23 | UA      |
| C03 | Cherlies Theron | New York   | 120134  |   20 | UA      |
| C04 | Denial Jack     | Brazil     | 341020  |   25 | UA      |
| C05 | Donna newman    | Toronto    | 130120  |   50 | UA      |
| C06 | Eston M.        | Toronto    | 201023  |   65 | UA      |
| C07 | Bobby Chacko    | New York   | 320300  |   70 | UA      |
| C08 | Ashko Charles   | USA        | 421044  |   72 | UA      |
| C09 | Tony Special    | GTA        | 418921  |   62 | UA      |
| C10 | Jack Sp         | New Jersey | 102301  |   35 | UA      |
+-----+-----------------+------------+---------+------+---------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> update c3 set country='USA';
Query OK, 10 rows affected (0.05 sec)
Rows matched: 10  Changed: 10  Warnings: 0

MariaDB [CSD2204S18]> select * from c3;
+-----+-----------------+------------+---------+------+---------+
| cid | cust_name       | city       | zipcode | age  | Country |
+-----+-----------------+------------+---------+------+---------+
| C01 | Ashley          | WDC        | 321200  |   34 | USA     |
| C02 | Bob Marley      | Toronto    | 100100  |   23 | USA     |
| C03 | Cherlies Theron | New York   | 120134  |   20 | USA     |
| C04 | Denial Jack     | Brazil     | 341020  |   25 | USA     |
| C05 | Donna newman    | Toronto    | 130120  |   50 | USA     |
| C06 | Eston M.        | Toronto    | 201023  |   65 | USA     |
| C07 | Bobby Chacko    | New York   | 320300  |   70 | USA     |
| C08 | Ashko Charles   | USA        | 421044  |   72 | USA     |
| C09 | Tony Special    | GTA        | 418921  |   62 | USA     |
| C10 | Jack Sp         | New Jersey | 102301  |   35 | USA     |
+-----+-----------------+------------+---------+------+---------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> update c3 set country='CANADA' where city=('Toronto','GTA');
ERROR 1241 (21000): Operand should contain 1 column(s)
MariaDB [CSD2204S18]> update c3 set country='CANADA' where city='Toronto';
Query OK, 3 rows affected (0.06 sec)
Rows matched: 3  Changed: 3  Warnings: 0

MariaDB [CSD2204S18]> update c3 set country='CANADA' where city in ('Toronto','GTA');
Query OK, 1 row affected (0.05 sec)
Rows matched: 4  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> select * from c3;
+-----+-----------------+------------+---------+------+---------+
| cid | cust_name       | city       | zipcode | age  | Country |
+-----+-----------------+------------+---------+------+---------+
| C01 | Ashley          | WDC        | 321200  |   34 | USA     |
| C02 | Bob Marley      | Toronto    | 100100  |   23 | CANADA  |
| C03 | Cherlies Theron | New York   | 120134  |   20 | USA     |
| C04 | Denial Jack     | Brazil     | 341020  |   25 | USA     |
| C05 | Donna newman    | Toronto    | 130120  |   50 | CANADA  |
| C06 | Eston M.        | Toronto    | 201023  |   65 | CANADA  |
| C07 | Bobby Chacko    | New York   | 320300  |   70 | USA     |
| C08 | Ashko Charles   | USA        | 421044  |   72 | USA     |
| C09 | Tony Special    | GTA        | 418921  |   62 | CANADA  |
| C10 | Jack Sp         | New Jersey | 102301  |   35 | USA     |
+-----+-----------------+------------+---------+------+---------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> update c3 set country='BRAZIL' WHERE CITY='South America';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

MariaDB [CSD2204S18]> select * from c3;
+-----+-----------------+------------+---------+------+---------+
| cid | cust_name       | city       | zipcode | age  | Country |
+-----+-----------------+------------+---------+------+---------+
| C01 | Ashley          | WDC        | 321200  |   34 | USA     |
| C02 | Bob Marley      | Toronto    | 100100  |   23 | CANADA  |
| C03 | Cherlies Theron | New York   | 120134  |   20 | USA     |
| C04 | Denial Jack     | Brazil     | 341020  |   25 | USA     |
| C05 | Donna newman    | Toronto    | 130120  |   50 | CANADA  |
| C06 | Eston M.        | Toronto    | 201023  |   65 | CANADA  |
| C07 | Bobby Chacko    | New York   | 320300  |   70 | USA     |
| C08 | Ashko Charles   | USA        | 421044  |   72 | USA     |
| C09 | Tony Special    | GTA        | 418921  |   62 | CANADA  |
| C10 | Jack Sp         | New Jersey | 102301  |   35 | USA     |
+-----+-----------------+------------+---------+------+---------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> delete from c2 where cust_name like 'Bob%';
Query OK, 1 row affected (0.05 sec)

MariaDB [CSD2204S18]> select * from c2;
+--------------+--------+
| cust_name    | pcode  |
+--------------+--------+
| Donna newman | 130120 |
| Eston M.     | 201023 |
+--------------+--------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> delete from c2;
Query OK, 2 rows affected (0.05 sec)

MariaDB [CSD2204S18]> select * from c2;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> drop table c2;
Query OK, 0 rows affected (0.17 sec)

MariaDB [CSD2204S18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| c3                   |
| customer             |
| orders               |
| person               |
+----------------------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from c1;
+---------+-----------------+----------+------------+--------+------+
| cust_id | cust_name       | nickname | city       | pcode  | age  |
+---------+-----------------+----------+------------+--------+------+
| C01     | Ashley          | Ash      | WDC        | 321200 |   34 |
| C02     | Bob Marley      | Bm       | Toronto    | 100100 |   23 |
| C03     | Cherlies Theron | Cher     | New York   | 120134 |   20 |
| C04     | Denial Jack     | DJ       | Brazil     | 341020 |   25 |
| C05     | Donna newman    | New      | Toronto    | 130120 |   50 |
| C06     | Eston M.        | M.       | Toronto    | 201023 |   65 |
| C07     | Bobby Chacko    | Chac     | New York   | 320300 |   70 |
| C08     | Ashko Charles   | AK       | USA        | 421044 |   72 |
| C09     | Tony Special    | Specie   | GTA        | 418921 |   62 |
| C10     | Jack Sp         | Sparroe  | New Jersey | 102301 |   35 |
+---------+-----------------+----------+------------+--------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> update c1 se cust_id =1 where age>=50;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'cust_id =1 where age>=50' at line 1
MariaDB [CSD2204S18]> update c1 set cust_id=1 where age >= 50;
Query OK, 5 rows affected (0.05 sec)
Rows matched: 5  Changed: 5  Warnings: 0

MariaDB [CSD2204S18]> select * from c1;
+---------+-----------------+----------+------------+--------+------+
| cust_id | cust_name       | nickname | city       | pcode  | age  |
+---------+-----------------+----------+------------+--------+------+
| C01     | Ashley          | Ash      | WDC        | 321200 |   34 |
| C02     | Bob Marley      | Bm       | Toronto    | 100100 |   23 |
| C03     | Cherlies Theron | Cher     | New York   | 120134 |   20 |
| C04     | Denial Jack     | DJ       | Brazil     | 341020 |   25 |
| 1       | Donna newman    | New      | Toronto    | 130120 |   50 |
| 1       | Eston M.        | M.       | Toronto    | 201023 |   65 |
| 1       | Bobby Chacko    | Chac     | New York   | 320300 |   70 |
| 1       | Ashko Charles   | AK       | USA        | 421044 |   72 |
| 1       | Tony Special    | Specie   | GTA        | 418921 |   62 |
| C10     | Jack Sp         | Sparroe  | New Jersey | 102301 |   35 |
+---------+-----------------+----------+------------+--------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> update c1 set cust_id=1 where age >= 50;
Query OK, 0 rows affected (0.03 sec)
Rows matched: 5  Changed: 0  Warnings: 0

MariaDB [CSD2204S18]> select * from c1;
+---------+-----------------+----------+------------+--------+------+
| cust_id | cust_name       | nickname | city       | pcode  | age  |
+---------+-----------------+----------+------------+--------+------+
| C01     | Ashley          | Ash      | WDC        | 321200 |   34 |
| C02     | Bob Marley      | Bm       | Toronto    | 100100 |   23 |
| C03     | Cherlies Theron | Cher     | New York   | 120134 |   20 |
| C04     | Denial Jack     | DJ       | Brazil     | 341020 |   25 |
| 1       | Donna newman    | New      | Toronto    | 130120 |   50 |
| 1       | Eston M.        | M.       | Toronto    | 201023 |   65 |
| 1       | Bobby Chacko    | Chac     | New York   | 320300 |   70 |
| 1       | Ashko Charles   | AK       | USA        | 421044 |   72 |
| 1       | Tony Special    | Specie   | GTA        | 418921 |   62 |
| C10     | Jack Sp         | Sparroe  | New Jersey | 102301 |   35 |
+---------+-----------------+----------+------------+--------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> exit;
