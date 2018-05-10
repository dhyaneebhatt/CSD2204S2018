MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| csd2204s18         |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.00 sec)

MariaDB [(none)]> USE CSD2204S18;
Database changed
MariaDB [CSD2204S18]> SHOW TABLES;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             |
+----------------------+
1 row in set (0.03 sec)

MariaDB [CSD2204S18]> SELECT * FROM customer;
Empty set (0.06 sec)

MariaDB [CSD2204S18]> DESC customer;
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
6 rows in set (0.08 sec)

MariaDB [CSD2204S18]> INSERT INTO customer VALUES('C01','Ashley','Ash','WDC','321200',34);
Query OK, 1 row affected (0.13 sec)

MariaDB [CSD2204S18]> select * from customer;
+---------+-----------+----------+------+--------+------+
| cust_id | cust_name | nickname | city | pcode  | age  |
+---------+-----------+----------+------+--------+------+
| C01     | Ashley    | Ash      | WDC  | 321200 |   34 |
+---------+-----------+----------+------+--------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> INSERT INTO customer VALUES('C02','Bob Marley','Bm','Toronto','100100',23);
Query OK, 1 row affected (0.06 sec)

MariaDB [CSD2204S18]> INSERT INTO customer VALUES('C03','Cherlies Theron','Cher','New York','120134',20);
Query OK, 1 row affected (0.02 sec)

MariaDB [CSD2204S18]> INSERT INTO customer VALUES('C04','Denial Jack','DJ','Brazil','341020',25);
Query OK, 1 row affected (0.01 sec)

MariaDB [CSD2204S18]> INSERT INTO customer VALUES('C05','Donna newman','New','Toronto','130120',50);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> INSERT INTO customer VALUES('C06','Eston M.','M.','Toronto','201023',65);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> INSERT INTO customer VALUES('C07','Bobby Chacko','Chac','New York','320300',70);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> INSERT INTO customer VALUES('C08','Ashko Charles','AK','USA','421044',72);
Query OK, 1 row affected (0.02 sec)

MariaDB [CSD2204S18]> INSERT INTO customer VALUES('C09','Tony Special','Specie','GTA','418921',62);
Query OK, 1 row affected (0.02 sec)

MariaDB [CSD2204S18]> INSERT INTO customer VALUES('C10','Jack Sp','Sparroe','New Jersey','102301',35);
Query OK, 1 row affected (0.01 sec)

MariaDB [CSD2204S18]> select * from customer;
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

MariaDB [CSD2204S18]> select cust_name,nick name from customer;
ERROR 1054 (42S22): Unknown column 'nick' in 'field list'
MariaDB [CSD2204S18]> select cust_name, nickname from customer;
+-----------------+----------+
| cust_name       | nickname |
+-----------------+----------+
| Ashley          | Ash      |
| Bob Marley      | Bm       |
| Cherlies Theron | Cher     |
| Denial Jack     | DJ       |
| Donna newman    | New      |
| Eston M.        | M.       |
| Bobby Chacko    | Chac     |
| Ashko Charles   | AK       |
| Tony Special    | Specie   |
| Jack Sp         | Sparroe  |
+-----------------+----------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select city, pcode from customer;
+------------+--------+
| city       | pcode  |
+------------+--------+
| WDC        | 321200 |
| Toronto    | 100100 |
| New York   | 120134 |
| Brazil     | 341020 |
| Toronto    | 130120 |
| Toronto    | 201023 |
| New York   | 320300 |
| USA        | 421044 |
| GTA        | 418921 |
| New Jersey | 102301 |
+------------+--------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where cust_name='Ashley';
+---------+-----------+----------+------+--------+------+
| cust_id | cust_name | nickname | city | pcode  | age  |
+---------+-----------+----------+------+--------+------+
| C01     | Ashley    | Ash      | WDC  | 321200 |   34 |
+---------+-----------+----------+------+--------+------+
1 row in set (0.03 sec)

MariaDB [CSD2204S18]> select * from customer where nickname='AK';
+---------+---------------+----------+------+--------+------+
| cust_id | cust_name     | nickname | city | pcode  | age  |
+---------+---------------+----------+------+--------+------+
| C08     | Ashko Charles | AK       | USA  | 421044 |   72 |
+---------+---------------+----------+------+--------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select city from customet where cust_name='Eston M.';
ERROR 1146 (42S02): Table 'csd2204s18.customet' doesn't exist
MariaDB [CSD2204S18]> select city from customer where cust_name='Eston M.';
+---------+
| city    |
+---------+
| Toronto |
+---------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select cust_name,city from customer where cust_name='Eston M.';
+-----------+---------+
| cust_name | city    |
+-----------+---------+
| Eston M.  | Toronto |
+-----------+---------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select cust_name,city from customer where city='Toronto';
+--------------+---------+
| cust_name    | city    |
+--------------+---------+
| Bob Marley   | Toronto |
| Donna newman | Toronto |
| Eston M.     | Toronto |
+--------------+---------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select cust_name,city from customer where city=!'Toronto';
Empty set, 11 warnings (0.05 sec)

MariaDB [CSD2204S18]> select cust_name,city from customer where city!='Toronto';
+-----------------+------------+
| cust_name       | city       |
+-----------------+------------+
| Ashley          | WDC        |
| Cherlies Theron | New York   |
| Denial Jack     | Brazil     |
| Bobby Chacko    | New York   |
| Ashko Charles   | USA        |
| Tony Special    | GTA        |
| Jack Sp         | New Jersey |
+-----------------+------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select cust_name,city from customer where city<>'Toronto';
+-----------------+------------+
| cust_name       | city       |
+-----------------+------------+
| Ashley          | WDC        |
| Cherlies Theron | New York   |
| Denial Jack     | Brazil     |
| Bobby Chacko    | New York   |
| Ashko Charles   | USA        |
| Tony Special    | GTA        |
| Jack Sp         | New Jersey |
+-----------------+------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select cust_name,city from customer where age=50;
+--------------+---------+
| cust_name    | city    |
+--------------+---------+
| Donna newman | Toronto |
+--------------+---------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select cust_name,city from customer where age>50;
+---------------+----------+
| cust_name     | city     |
+---------------+----------+
| Eston M.      | Toronto  |
| Bobby Chacko  | New York |
| Ashko Charles | USA      |
| Tony Special  | GTA      |
+---------------+----------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select cust_name,city from customer where age<50;
+-----------------+------------+
| cust_name       | city       |
+-----------------+------------+
| Ashley          | WDC        |
| Bob Marley      | Toronto    |
| Cherlies Theron | New York   |
| Denial Jack     | Brazil     |
| Jack Sp         | New Jersey |
+-----------------+------------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select cust_name,city,age from customer where age<50;
+-----------------+------------+------+
| cust_name       | city       | age  |
+-----------------+------------+------+
| Ashley          | WDC        |   34 |
| Bob Marley      | Toronto    |   23 |
| Cherlies Theron | New York   |   20 |
| Denial Jack     | Brazil     |   25 |
| Jack Sp         | New Jersey |   35 |
+-----------------+------------+------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select cust_name,city,age from customer where age>50;
+---------------+----------+------+
| cust_name     | city     | age  |
+---------------+----------+------+
| Eston M.      | Toronto  |   65 |
| Bobby Chacko  | New York |   70 |
| Ashko Charles | USA      |   72 |
| Tony Special  | GTA      |   62 |
+---------------+----------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select cust_name,city,age from customer where cust_name>'Ashley';
+-----------------+------------+------+
| cust_name       | city       | age  |
+-----------------+------------+------+
| Bob Marley      | Toronto    |   23 |
| Cherlies Theron | New York   |   20 |
| Denial Jack     | Brazil     |   25 |
| Donna newman    | Toronto    |   50 |
| Eston M.        | Toronto    |   65 |
| Bobby Chacko    | New York   |   70 |
| Tony Special    | GTA        |   62 |
| Jack Sp         | New Jersey |   35 |
+-----------------+------------+------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select cust_name,city,age from customer where cust_name<'Denial Jack';
+-----------------+----------+------+
| cust_name       | city     | age  |
+-----------------+----------+------+
| Ashley          | WDC      |   34 |
| Bob Marley      | Toronto  |   23 |
| Cherlies Theron | New York |   20 |
| Bobby Chacko    | New York |   70 |
| Ashko Charles   | USA      |   72 |
+-----------------+----------+------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where cust_name='Ashley' and city='toronto';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where cust_name='Ashley' or city='toronto';
+---------+--------------+----------+---------+--------+------+
| cust_id | cust_name    | nickname | city    | pcode  | age  |
+---------+--------------+----------+---------+--------+------+
| C01     | Ashley       | Ash      | WDC     | 321200 |   34 |
| C02     | Bob Marley   | Bm       | Toronto | 100100 |   23 |
| C05     | Donna newman | New      | Toronto | 130120 |   50 |
| C06     | Eston M.     | M.       | Toronto | 201023 |   65 |
+---------+--------------+----------+---------+--------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where cust_name='Ashley' || city='toronto';
+---------+--------------+----------+---------+--------+------+
| cust_id | cust_name    | nickname | city    | pcode  | age  |
+---------+--------------+----------+---------+--------+------+
| C01     | Ashley       | Ash      | WDC     | 321200 |   34 |
| C02     | Bob Marley   | Bm       | Toronto | 100100 |   23 |
| C05     | Donna newman | New      | Toronto | 130120 |   50 |
| C06     | Eston M.     | M.       | Toronto | 201023 |   65 |
+---------+--------------+----------+---------+--------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where city='New York'|| city='toronto';
+---------+-----------------+----------+----------+--------+------+
| cust_id | cust_name       | nickname | city     | pcode  | age  |
+---------+-----------------+----------+----------+--------+------+
| C02     | Bob Marley      | Bm       | Toronto  | 100100 |   23 |
| C03     | Cherlies Theron | Cher     | New York | 120134 |   20 |
| C05     | Donna newman    | New      | Toronto  | 130120 |   50 |
| C06     | Eston M.        | M.       | Toronto  | 201023 |   65 |
| C07     | Bobby Chacko    | Chac     | New York | 320300 |   70 |
+---------+-----------------+----------+----------+--------+------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where city='toronto'and age>50;
+---------+-----------+----------+---------+--------+------+
| cust_id | cust_name | nickname | city    | pcode  | age  |
+---------+-----------+----------+---------+--------+------+
| C06     | Eston M.  | M.       | Toronto | 201023 |   65 |
+---------+-----------+----------+---------+--------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where city='toronto'&& age>50;
+---------+-----------+----------+---------+--------+------+
| cust_id | cust_name | nickname | city    | pcode  | age  |
+---------+-----------+----------+---------+--------+------+
| C06     | Eston M.  | M.       | Toronto | 201023 |   65 |
+---------+-----------+----------+---------+--------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where city='toronto';
+---------+--------------+----------+---------+--------+------+
| cust_id | cust_name    | nickname | city    | pcode  | age  |
+---------+--------------+----------+---------+--------+------+
| C02     | Bob Marley   | Bm       | Toronto | 100100 |   23 |
| C05     | Donna newman | New      | Toronto | 130120 |   50 |
| C06     | Eston M.     | M.       | Toronto | 201023 |   65 |
+---------+--------------+----------+---------+--------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select count (*) from customer where city='toronto';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '*) from customer where city='toronto'' at line 1
MariaDB [CSD2204S18]> select count(*) from customer where city='toronto';
+----------+
| count(*) |
+----------+
|        3 |
+----------+
1 row in set (0.03 sec)

MariaDB [CSD2204S18]> select count(*)"No. of customers in Toronto" from customer where city='toronto';
+-----------------------------+
| No. of customers in Toronto |
+-----------------------------+
|                           3 |
+-----------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select count(*)"No. of customers age>50" from customer where age>50;
+-------------------------+
| No. of customers age>50 |
+-------------------------+
|                       4 |
+-------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select count(*)"No. of customers age>50" from customer where 30>age>70;
+-------------------------+
| No. of customers age>50 |
+-------------------------+
|                       0 |
+-------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select count(*)"No. of customers age between 30-70" from customer where age>30 and age<70;
+------------------------------------+
| No. of customers age between 30-70 |
+------------------------------------+
|                                  5 |
+------------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select count(*)"No. of customers age between 30-70" from customer where age between 30 and 70;
+------------------------------------+
| No. of customers age between 30-70 |
+------------------------------------+
|                                  6 |
+------------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select count(*)"No. of customers age between 30-70" from customer where age not between 30 and 70;
+------------------------------------+
| No. of customers age between 30-70 |
+------------------------------------+
|                                  4 |
+------------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select count(*)"No. of customers age between 30-70" from customer where not age between 30 and 70;
+------------------------------------+
| No. of customers age between 30-70 |
+------------------------------------+
|                                  4 |
+------------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer order by age;
+---------+-----------------+----------+------------+--------+------+
| cust_id | cust_name       | nickname | city       | pcode  | age  |
+---------+-----------------+----------+------------+--------+------+
| C03     | Cherlies Theron | Cher     | New York   | 120134 |   20 |
| C02     | Bob Marley      | Bm       | Toronto    | 100100 |   23 |
| C04     | Denial Jack     | DJ       | Brazil     | 341020 |   25 |
| C01     | Ashley          | Ash      | WDC        | 321200 |   34 |
| C10     | Jack Sp         | Sparroe  | New Jersey | 102301 |   35 |
| C05     | Donna newman    | New      | Toronto    | 130120 |   50 |
| C09     | Tony Special    | Specie   | GTA        | 418921 |   62 |
| C06     | Eston M.        | M.       | Toronto    | 201023 |   65 |
| C07     | Bobby Chacko    | Chac     | New York   | 320300 |   70 |
| C08     | Ashko Charles   | AK       | USA        | 421044 |   72 |
+---------+-----------------+----------+------------+--------+------+
10 rows in set (0.03 sec)

MariaDB [CSD2204S18]> select name,max(age) from customer;
ERROR 1054 (42S22): Unknown column 'name' in 'field list'
MariaDB [CSD2204S18]> select cust_name,max(age) from customer;
+-----------+----------+
| cust_name | max(age) |
+-----------+----------+
| Ashley    |       72 |
+-----------+----------+
1 row in set (0.02 sec)

MariaDB [CSD2204S18]> select cust_name from customer where age=max(age);
ERROR 1111 (HY000): Invalid use of group function
MariaDB [CSD2204S18]> select max(age) from customer;
+----------+
| max(age) |
+----------+
|       72 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select min(age) from customer;
+----------+
| min(age) |
+----------+
|       20 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select avg(age) from customer;
+----------+
| avg(age) |
+----------+
|  45.6000 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where cust_name='B&';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where cust_name='B%';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where cust_name like'B%';
+---------+--------------+----------+----------+--------+------+
| cust_id | cust_name    | nickname | city     | pcode  | age  |
+---------+--------------+----------+----------+--------+------+
| C02     | Bob Marley   | Bm       | Toronto  | 100100 |   23 |
| C07     | Bobby Chacko | Chac     | New York | 320300 |   70 |
+---------+--------------+----------+----------+--------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where cust_name not like'B%';
+---------+-----------------+----------+------------+--------+------+
| cust_id | cust_name       | nickname | city       | pcode  | age  |
+---------+-----------------+----------+------------+--------+------+
| C01     | Ashley          | Ash      | WDC        | 321200 |   34 |
| C03     | Cherlies Theron | Cher     | New York   | 120134 |   20 |
| C04     | Denial Jack     | DJ       | Brazil     | 341020 |   25 |
| C05     | Donna newman    | New      | Toronto    | 130120 |   50 |
| C06     | Eston M.        | M.       | Toronto    | 201023 |   65 |
| C08     | Ashko Charles   | AK       | USA        | 421044 |   72 |
| C09     | Tony Special    | Specie   | GTA        | 418921 |   62 |
| C10     | Jack Sp         | Sparroe  | New Jersey | 102301 |   35 |
+---------+-----------------+----------+------------+--------+------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where cust_name not like'%n';
+---------+---------------+----------+------------+--------+------+
| cust_id | cust_name     | nickname | city       | pcode  | age  |
+---------+---------------+----------+------------+--------+------+
| C01     | Ashley        | Ash      | WDC        | 321200 |   34 |
| C02     | Bob Marley    | Bm       | Toronto    | 100100 |   23 |
| C04     | Denial Jack   | DJ       | Brazil     | 341020 |   25 |
| C06     | Eston M.      | M.       | Toronto    | 201023 |   65 |
| C07     | Bobby Chacko  | Chac     | New York   | 320300 |   70 |
| C08     | Ashko Charles | AK       | USA        | 421044 |   72 |
| C09     | Tony Special  | Specie   | GTA        | 418921 |   62 |
| C10     | Jack Sp       | Sparroe  | New Jersey | 102301 |   35 |
+---------+---------------+----------+------------+--------+------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where cust_name like'%n';
+---------+-----------------+----------+----------+--------+------+
| cust_id | cust_name       | nickname | city     | pcode  | age  |
+---------+-----------------+----------+----------+--------+------+
| C03     | Cherlies Theron | Cher     | New York | 120134 |   20 |
| C05     | Donna newman    | New      | Toronto  | 130120 |   50 |
+---------+-----------------+----------+----------+--------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where city like 'new%';
+---------+-----------------+----------+------------+--------+------+
| cust_id | cust_name       | nickname | city       | pcode  | age  |
+---------+-----------------+----------+------------+--------+------+
| C03     | Cherlies Theron | Cher     | New York   | 120134 |   20 |
| C07     | Bobby Chacko    | Chac     | New York   | 320300 |   70 |
| C10     | Jack Sp         | Sparroe  | New Jersey | 102301 |   35 |
+---------+-----------------+----------+------------+--------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where city like '2%n%';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where city like '%%n%';
+---------+-----------------+----------+------------+--------+------+
| cust_id | cust_name       | nickname | city       | pcode  | age  |
+---------+-----------------+----------+------------+--------+------+
| C02     | Bob Marley      | Bm       | Toronto    | 100100 |   23 |
| C03     | Cherlies Theron | Cher     | New York   | 120134 |   20 |
| C05     | Donna newman    | New      | Toronto    | 130120 |   50 |
| C06     | Eston M.        | M.       | Toronto    | 201023 |   65 |
| C07     | Bobby Chacko    | Chac     | New York   | 320300 |   70 |
| C10     | Jack Sp         | Sparroe  | New Jersey | 102301 |   35 |
+---------+-----------------+----------+------------+--------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where cust_name like '__n%';
+---------+--------------+----------+---------+--------+------+
| cust_id | cust_name    | nickname | city    | pcode  | age  |
+---------+--------------+----------+---------+--------+------+
| C04     | Denial Jack  | DJ       | Brazil  | 341020 |   25 |
| C05     | Donna newman | New      | Toronto | 130120 |   50 |
| C09     | Tony Special | Specie   | GTA     | 418921 |   62 |
+---------+--------------+----------+---------+--------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where cust_name like '__n_a%';
+---------+--------------+----------+---------+--------+------+
| cust_id | cust_name    | nickname | city    | pcode  | age  |
+---------+--------------+----------+---------+--------+------+
| C04     | Denial Jack  | DJ       | Brazil  | 341020 |   25 |
| C05     | Donna newman | New      | Toronto | 130120 |   50 |
+---------+--------------+----------+---------+--------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer;
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

MariaDB [CSD2204S18]> select * from customer limit 4;
+---------+-----------------+----------+----------+--------+------+
| cust_id | cust_name       | nickname | city     | pcode  | age  |
+---------+-----------------+----------+----------+--------+------+
| C01     | Ashley          | Ash      | WDC      | 321200 |   34 |
| C02     | Bob Marley      | Bm       | Toronto  | 100100 |   23 |
| C03     | Cherlies Theron | Cher     | New York | 120134 |   20 |
| C04     | Denial Jack     | DJ       | Brazil   | 341020 |   25 |
+---------+-----------------+----------+----------+--------+------+
4 rows in set (0.01 sec)

MariaDB [CSD2204S18]> select * from customer where age=20||25||65||72;
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

MariaDB [CSD2204S18]> select * from customer where age in (20,65,72,25);
+---------+-----------------+----------+----------+--------+------+
| cust_id | cust_name       | nickname | city     | pcode  | age  |
+---------+-----------------+----------+----------+--------+------+
| C03     | Cherlies Theron | Cher     | New York | 120134 |   20 |
| C04     | Denial Jack     | DJ       | Brazil   | 341020 |   25 |
| C06     | Eston M.        | M.       | Toronto  | 201023 |   65 |
| C08     | Ashko Charles   | AK       | USA      | 421044 |   72 |
+---------+-----------------+----------+----------+--------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where city in ('Toronto','Bazil','GTA','USA');
+---------+---------------+----------+---------+--------+------+
| cust_id | cust_name     | nickname | city    | pcode  | age  |
+---------+---------------+----------+---------+--------+------+
| C02     | Bob Marley    | Bm       | Toronto | 100100 |   23 |
| C05     | Donna newman  | New      | Toronto | 130120 |   50 |
| C06     | Eston M.      | M.       | Toronto | 201023 |   65 |
| C08     | Ashko Charles | AK       | USA     | 421044 |   72 |
| C09     | Tony Special  | Specie   | GTA     | 418921 |   62 |
+---------+---------------+----------+---------+--------+------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where city in ('T%','B%','G%','U%');
Empty set (0.00 sec)

MariaDB [CSD2204S18]> select distinct(city)'Unique Cities' from customer;'
+---------------+
| Unique Cities |
+---------------+
| WDC           |
| Toronto       |
| New York      |
| Brazil        |
| USA           |
| GTA           |
| New Jersey    |
+---------------+
7 rows in set (0.00 sec)

    '> ';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''
'' at line 1
MariaDB [CSD2204S18]> select distinct(city) as 'Unique Cities' from customer;
+---------------+
| Unique Cities |
+---------------+
| WDC           |
| Toronto       |
| New York      |
| Brazil        |
| USA           |
| GTA           |
| New Jersey    |
+---------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> count(distinct(city)) as 'Unique Cities' from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'count(distinct(city)) as 'Unique Cities' from customer' at line 1
MariaDB [CSD2204S18]> select count(distinct(city)) as 'Unique Cities' from customer;
+---------------+
| Unique Cities |
+---------------+
|             7 |
+---------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer order by cust_name; 
+---------+-----------------+----------+------------+--------+------+
| cust_id | cust_name       | nickname | city       | pcode  | age  |
+---------+-----------------+----------+------------+--------+------+
| C08     | Ashko Charles   | AK       | USA        | 421044 |   72 |
| C01     | Ashley          | Ash      | WDC        | 321200 |   34 |
| C02     | Bob Marley      | Bm       | Toronto    | 100100 |   23 |
| C07     | Bobby Chacko    | Chac     | New York   | 320300 |   70 |
| C03     | Cherlies Theron | Cher     | New York   | 120134 |   20 |
| C04     | Denial Jack     | DJ       | Brazil     | 341020 |   25 |
| C05     | Donna newman    | New      | Toronto    | 130120 |   50 |
| C06     | Eston M.        | M.       | Toronto    | 201023 |   65 |
| C10     | Jack Sp         | Sparroe  | New Jersey | 102301 |   35 |
| C09     | Tony Special    | Specie   | GTA        | 418921 |   62 |
+---------+-----------------+----------+------------+--------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer order by cust_name desc; 
+---------+-----------------+----------+------------+--------+------+
| cust_id | cust_name       | nickname | city       | pcode  | age  |
+---------+-----------------+----------+------------+--------+------+
| C09     | Tony Special    | Specie   | GTA        | 418921 |   62 |
| C10     | Jack Sp         | Sparroe  | New Jersey | 102301 |   35 |
| C06     | Eston M.        | M.       | Toronto    | 201023 |   65 |
| C05     | Donna newman    | New      | Toronto    | 130120 |   50 |
| C04     | Denial Jack     | DJ       | Brazil     | 341020 |   25 |
| C03     | Cherlies Theron | Cher     | New York   | 120134 |   20 |
| C07     | Bobby Chacko    | Chac     | New York   | 320300 |   70 |
| C02     | Bob Marley      | Bm       | Toronto    | 100100 |   23 |
| C01     | Ashley          | Ash      | WDC        | 321200 |   34 |
| C08     | Ashko Charles   | AK       | USA        | 421044 |   72 |
+---------+-----------------+----------+------------+--------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer order by age desc; 
+---------+-----------------+----------+------------+--------+------+
| cust_id | cust_name       | nickname | city       | pcode  | age  |
+---------+-----------------+----------+------------+--------+------+
| C08     | Ashko Charles   | AK       | USA        | 421044 |   72 |
| C07     | Bobby Chacko    | Chac     | New York   | 320300 |   70 |
| C06     | Eston M.        | M.       | Toronto    | 201023 |   65 |
| C09     | Tony Special    | Specie   | GTA        | 418921 |   62 |
| C05     | Donna newman    | New      | Toronto    | 130120 |   50 |
| C10     | Jack Sp         | Sparroe  | New Jersey | 102301 |   35 |
| C01     | Ashley          | Ash      | WDC        | 321200 |   34 |
| C04     | Denial Jack     | DJ       | Brazil     | 341020 |   25 |
| C02     | Bob Marley      | Bm       | Toronto    | 100100 |   23 |
| C03     | Cherlies Theron | Cher     | New York   | 120134 |   20 |
+---------+-----------------+----------+------------+--------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer order by age desc limit 1; 
+---------+---------------+----------+------+--------+------+
| cust_id | cust_name     | nickname | city | pcode  | age  |
+---------+---------------+----------+------+--------+------+
| C08     | Ashko Charles | AK       | USA  | 421044 |   72 |
+---------+---------------+----------+------+--------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer order by age desc limit 2; 
+---------+---------------+----------+----------+--------+------+
| cust_id | cust_name     | nickname | city     | pcode  | age  |
+---------+---------------+----------+----------+--------+------+
| C08     | Ashko Charles | AK       | USA      | 421044 |   72 |
| C07     | Bobby Chacko  | Chac     | New York | 320300 |   70 |
+---------+---------------+----------+----------+--------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from (select* from customer order by age desc limit 2 )as t order by age ASC limit 1; 
+---------+--------------+----------+----------+--------+------+
| cust_id | cust_name    | nickname | city     | pcode  | age  |
+---------+--------------+----------+----------+--------+------+
| C07     | Bobby Chacko | Chac     | New York | 320300 |   70 |
+---------+--------------+----------+----------+--------+------+
1 row in set (0.02 sec)

MariaDB [CSD2204S18]> select * from (select* from customer order by age asc limit 2 )as t order by age desc limit 1; 
+---------+------------+----------+---------+--------+------+
| cust_id | cust_name  | nickname | city    | pcode  | age  |
+---------+------------+----------+---------+--------+------+
| C02     | Bob Marley | Bm       | Toronto | 100100 |   23 |
+---------+------------+----------+---------+--------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select max(age)*100 from customer;
+--------------+
| max(age)*100 |
+--------------+
|         7200 |
+--------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select max(age)+10*20/2 from customer;
+------------------+
| max(age)+10*20/2 |
+------------------+
|         172.0000 |
+------------------+
1 row in set (0.03 sec)

MariaDB [CSD2204S18]> exit;
