MariaDB [(none)]> shoe tables;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'shoe tables' at line 1
MariaDB [(none)]> show tables;
ERROR 1046 (3D000): No database selected
MariaDB [(none)]> use CSD2204S18;
Database changed
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
10 rows in set (0.05 sec)

MariaDB [CSD2204S18]> select * from customer order by name ASC;
ERROR 1054 (42S22): Unknown column 'name' in 'order clause'
MariaDB [CSD2204S18]> select * from customer order by cust_name ASC;
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

MariaDB [CSD2204S18]> select * from customer order by cust_name,city ASC;
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

MariaDB [CSD2204S18]> select * from customer order by cust_name desc,city ASC;
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

MariaDB [CSD2204S18]> select * from customer limit 3;
+---------+-----------------+----------+----------+--------+------+
| cust_id | cust_name       | nickname | city     | pcode  | age  |
+---------+-----------------+----------+----------+--------+------+
| C01     | Ashley          | Ash      | WDC      | 321200 |   34 |
| C02     | Bob Marley      | Bm       | Toronto  | 100100 |   23 |
| C03     | Cherlies Theron | Cher     | New York | 120134 |   20 |
+---------+-----------------+----------+----------+--------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer limit order by cust_id desc limit 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'order by cust_id desc limit 3' at line 1
MariaDB [CSD2204S18]> select * from customer order by cust_id desc limit 3;
+---------+---------------+----------+------------+--------+------+
| cust_id | cust_name     | nickname | city       | pcode  | age  |
+---------+---------------+----------+------------+--------+------+
| C10     | Jack Sp       | Sparroe  | New Jersey | 102301 |   35 |
| C09     | Tony Special  | Specie   | GTA        | 418921 |   62 |
| C08     | Ashko Charles | AK       | USA        | 421044 |   72 |
+---------+---------------+----------+------------+--------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer desc order by cust_id limit 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'desc order by cust_id limit 3' at line 1
MariaDB [CSD2204S18]> select * from customer order by desc  cust_id limit 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'desc  cust_id limit 3' at line 1
MariaDB [CSD2204S18]> select desc * from customer order by cust_id limit 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'desc * from customer order by cust_id limit 3' at line 1
MariaDB [CSD2204S18]> select * dedc from customer order by cust_id limit 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'dedc from customer order by cust_id limit 3' at line 1
MariaDB [CSD2204S18]> select * desc from customer order by cust_id limit 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'desc from customer order by cust_id limit 3' at line 1
MariaDB [CSD2204S18]> select * from customer desc order by cust_id limit 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'desc order by cust_id limit 3' at line 1
MariaDB [CSD2204S18]> select * from customer order by cust_id limit 3 desc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'desc' at line 1
MariaDB [CSD2204S18]> select * from (select * from customer order by cust_id)desc limit 3 ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'desc limit 3' at line 1
MariaDB [CSD2204S18]> select * from (select * from customer order by cust_id desc) limit 3 ;
ERROR 1248 (42000): Every derived table must have its own alias
MariaDB [CSD2204S18]> select * from (select * from customer limit 3) order by cust_id ;
ERROR 1248 (42000): Every derived table must have its own alias
MariaDB [CSD2204S18]> select * from (select * from customer order by cust_id desc limit 3)t  order by cust_id asc;
+---------+---------------+----------+------------+--------+------+
| cust_id | cust_name     | nickname | city       | pcode  | age  |
+---------+---------------+----------+------------+--------+------+
| C08     | Ashko Charles | AK       | USA        | 421044 |   72 |
| C09     | Tony Special  | Specie   | GTA        | 418921 |   62 |
| C10     | Jack Sp       | Sparroe  | New Jersey | 102301 |   35 |
+---------+---------------+----------+------------+--------+------+
3 rows in set (0.08 sec)

MariaDB [CSD2204S18]> select * from customer group by city;
+---------+-----------------+----------+------------+--------+------+
| cust_id | cust_name       | nickname | city       | pcode  | age  |
+---------+-----------------+----------+------------+--------+------+
| C04     | Denial Jack     | DJ       | Brazil     | 341020 |   25 |
| C09     | Tony Special    | Specie   | GTA        | 418921 |   62 |
| C10     | Jack Sp         | Sparroe  | New Jersey | 102301 |   35 |
| C03     | Cherlies Theron | Cher     | New York   | 120134 |   20 |
| C02     | Bob Marley      | Bm       | Toronto    | 100100 |   23 |
| C08     | Ashko Charles   | AK       | USA        | 421044 |   72 |
| C01     | Ashley          | Ash      | WDC        | 321200 |   34 |
+---------+-----------------+----------+------------+--------+------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select city from customer group by city;
+------------+
| city       |
+------------+
| Brazil     |
| GTA        |
| New Jersey |
| New York   |
| Toronto    |
| USA        |
| WDC        |
+------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select count(city)"cities" from customer group by city;
+--------+
| cities |
+--------+
|      1 |
|      1 |
|      1 |
|      2 |
|      3 |
|      1 |
|      1 |
+--------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select city,count(city)"customers" from customer group by city;
+------------+-----------+
| city       | customers |
+------------+-----------+
| Brazil     |         1 |
| GTA        |         1 |
| New Jersey |         1 |
| New York   |         2 |
| Toronto    |         3 |
| USA        |         1 |
| WDC        |         1 |
+------------+-----------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select disinct count(city)"customers" from customer group by city;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'count(city)"customers" from customer group by city' at line 1
MariaDB [CSD2204S18]> select  count(city)"customers" from customer group by city distinct;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'distinct' at line 1
MariaDB [CSD2204S18]> select count(*)"cities" from customer group by city;
+--------+
| cities |
+--------+
|      1 |
|      1 |
|      1 |
|      2 |
|      3 |
|      1 |
|      1 |
+--------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select distinct(city) from customer;
+------------+
| city       |
+------------+
| WDC        |
| Toronto    |
| New York   |
| Brazil     |
| USA        |
| GTA        |
| New Jersey |
+------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select  count(city)"customers" from customer where city like 'New%' group by city distinct;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'distinct' at line 1
MariaDB [CSD2204S18]> select  count(city)"customers" from customer group by city having city like 'New%';
+-----------+
| customers |
+-----------+
|         1 |
|         2 |
+-----------+
2 rows in set (0.01 sec)

MariaDB [CSD2204S18]> select city, count(city)"customers" from customer group by city having city like 'New%';
+------------+-----------+
| city       | customers |
+------------+-----------+
| New Jersey |         1 |
| New York   |         2 |
+------------+-----------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select city, count(city)"customers" from customer group by city having city like 'New%' or city='Toronto';
+------------+-----------+
| city       | customers |
+------------+-----------+
| New Jersey |         1 |
| New York   |         2 |
| Toronto    |         3 |
+------------+-----------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select city, count(city)"customers" from customer group by city having count(city)>2;
+---------+-----------+
| city    | customers |
+---------+-----------+
| Toronto |         3 |
+---------+-----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where name regexp '^D';
ERROR 1054 (42S22): Unknown column 'name' in 'where clause'
MariaDB [CSD2204S18]> select * from customer where cust_name regexp '^D';
+---------+--------------+----------+---------+--------+------+
| cust_id | cust_name    | nickname | city    | pcode  | age  |
+---------+--------------+----------+---------+--------+------+
| C04     | Denial Jack  | DJ       | Brazil  | 341020 |   25 |
| C05     | Donna newman | New      | Toronto | 130120 |   50 |
+---------+--------------+----------+---------+--------+------+
2 rows in set (0.07 sec)

MariaDB [CSD2204S18]> select * from customer where cust_name regexp 'n$';
+---------+-----------------+----------+----------+--------+------+
| cust_id | cust_name       | nickname | city     | pcode  | age  |
+---------+-----------------+----------+----------+--------+------+
| C03     | Cherlies Theron | Cher     | New York | 120134 |   20 |
| C05     | Donna newman    | New      | Toronto  | 130120 |   50 |
+---------+-----------------+----------+----------+--------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where cust_name regexp '^..a';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where cust_name regexp '^..i';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where cust_name regexp '^..n';
+---------+--------------+----------+---------+--------+------+
| cust_id | cust_name    | nickname | city    | pcode  | age  |
+---------+--------------+----------+---------+--------+------+
| C04     | Denial Jack  | DJ       | Brazil  | 341020 |   25 |
| C05     | Donna newman | New      | Toronto | 130120 |   50 |
| C09     | Tony Special | Specie   | GTA     | 418921 |   62 |
+---------+--------------+----------+---------+--------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where pcode regexp '^[0-9]';
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

MariaDB [CSD2204S18]> select * from customer where pcode regexp '^[A-Z]';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where nickname regexp '^[A*]';
+---------+---------------+----------+------+--------+------+
| cust_id | cust_name     | nickname | city | pcode  | age  |
+---------+---------------+----------+------+--------+------+
| C01     | Ashley        | Ash      | WDC  | 321200 |   34 |
| C08     | Ashko Charles | AK       | USA  | 421044 |   72 |
+---------+---------------+----------+------+--------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where nickname regexp '^A*';
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

MariaDB [CSD2204S18]> select * from customer where nickname regexp '^A+';
+---------+---------------+----------+------+--------+------+
| cust_id | cust_name     | nickname | city | pcode  | age  |
+---------+---------------+----------+------+--------+------+
| C01     | Ashley        | Ash      | WDC  | 321200 |   34 |
| C08     | Ashko Charles | AK       | USA  | 421044 |   72 |
+---------+---------------+----------+------+--------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where city regexp '^{4}';
ERROR 1139 (42000): Got error 'nothing to repeat at offset 3' from regexp
MariaDB [CSD2204S18]> select * from customer where city regexp '^.{4}';
+---------+-----------------+----------+------------+--------+------+
| cust_id | cust_name       | nickname | city       | pcode  | age  |
+---------+-----------------+----------+------------+--------+------+
| C02     | Bob Marley      | Bm       | Toronto    | 100100 |   23 |
| C03     | Cherlies Theron | Cher     | New York   | 120134 |   20 |
| C04     | Denial Jack     | DJ       | Brazil     | 341020 |   25 |
| C05     | Donna newman    | New      | Toronto    | 130120 |   50 |
| C06     | Eston M.        | M.       | Toronto    | 201023 |   65 |
| C07     | Bobby Chacko    | Chac     | New York   | 320300 |   70 |
| C10     | Jack Sp         | Sparroe  | New Jersey | 102301 |   35 |
+---------+-----------------+----------+------------+--------+------+
7 rows in set (0.02 sec)

MariaDB [CSD2204S18]> select * from customer where city like '^.{4}';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where city rlike '^.{4}';
+---------+-----------------+----------+------------+--------+------+
| cust_id | cust_name       | nickname | city       | pcode  | age  |
+---------+-----------------+----------+------------+--------+------+
| C02     | Bob Marley      | Bm       | Toronto    | 100100 |   23 |
| C03     | Cherlies Theron | Cher     | New York   | 120134 |   20 |
| C04     | Denial Jack     | DJ       | Brazil     | 341020 |   25 |
| C05     | Donna newman    | New      | Toronto    | 130120 |   50 |
| C06     | Eston M.        | M.       | Toronto    | 201023 |   65 |
| C07     | Bobby Chacko    | Chac     | New York   | 320300 |   70 |
| C10     | Jack Sp         | Sparroe  | New Jersey | 102301 |   35 |
+---------+-----------------+----------+------------+--------+------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where nickname rlike '^A+';
+---------+---------------+----------+------+--------+------+
| cust_id | cust_name     | nickname | city | pcode  | age  |
+---------+---------------+----------+------+--------+------+
| C01     | Ashley        | Ash      | WDC  | 321200 |   34 |
| C08     | Ashko Charles | AK       | USA  | 421044 |   72 |
+---------+---------------+----------+------+--------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where nickname rlike '^[A*]';
+---------+---------------+----------+------+--------+------+
| cust_id | cust_name     | nickname | city | pcode  | age  |
+---------+---------------+----------+------+--------+------+
| C01     | Ashley        | Ash      | WDC  | 321200 |   34 |
| C08     | Ashko Charles | AK       | USA  | 421044 |   72 |
+---------+---------------+----------+------+--------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select curdate();
+------------+
| curdate()  |
+------------+
| 2018-05-14 |
+------------+
1 row in set (0.03 sec)

MariaDB [CSD2204S18]> select now();
+---------------------+
| now()               |
+---------------------+
| 2018-05-14 09:15:15 |
+---------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> alter table customer add column dob DATE;
Query OK, 0 rows affected (0.66 sec)
Records: 0  Duplicates: 0  Warnings: 0

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
| dob       | date        | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
7 rows in set (0.02 sec)

MariaDB [CSD2204S18]> update customer set dob = '1991-01-01' where cust_id='c01';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set dob = '1996-15-04' where cust_id='c02';
Query OK, 1 row affected, 1 warning (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 1

MariaDB [CSD2204S18]> update customer set dob = '1994-09-05' where cust_id='c02';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set dob = '1995-11-03' where cust_id='c02';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set dob = '1996-15-04' where cust_id='c02';
Query OK, 1 row affected, 1 warning (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 1

MariaDB [CSD2204S18]> update customer set dob = '1994-09-05' where cust_id='c03';
Query OK, 1 row affected (0.16 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set dob = '1996-15-04' where cust_id='c04';
Query OK, 1 row affected, 1 warning (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 1

MariaDB [CSD2204S18]> update customer set dob = '1996-07-09' where cust_id='c05';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set dob = '1996-12-02' where cust_id='c06';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set dob = '1996-14-06' where cust_id='c07';
Query OK, 1 row affected, 1 warning (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 1

MariaDB [CSD2204S18]> update customer set dob = '1995-17-07' where cust_id='c08';
Query OK, 1 row affected, 1 warning (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 1

MariaDB [CSD2204S18]> update customer set dob = '1992-14-10' where cust_id='c09';
Query OK, 1 row affected, 1 warning (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 1

MariaDB [CSD2204S18]> update customer set dob = '1990-02-02' where cust_id='c10';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> desc cutomer;
ERROR 1146 (42S02): Table 'csd2204s18.cutomer' doesn't exist
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
| dob       | date        | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
7 rows in set (0.02 sec)

MariaDB [CSD2204S18]> show customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'customer' at line 1
MariaDB [CSD2204S18]> select * from customer;
+---------+-----------------+----------+------------+--------+------+------------+
| cust_id | cust_name       | nickname | city       | pcode  | age  | dob        |
+---------+-----------------+----------+------------+--------+------+------------+
| C01     | Ashley          | Ash      | WDC        | 321200 |   34 | 1991-01-01 |
| C02     | Bob Marley      | Bm       | Toronto    | 100100 |   23 | 0000-00-00 |
| C03     | Cherlies Theron | Cher     | New York   | 120134 |   20 | 1994-09-05 |
| C04     | Denial Jack     | DJ       | Brazil     | 341020 |   25 | 0000-00-00 |
| C05     | Donna newman    | New      | Toronto    | 130120 |   50 | 1996-07-09 |
| C06     | Eston M.        | M.       | Toronto    | 201023 |   65 | 1996-12-02 |
| C07     | Bobby Chacko    | Chac     | New York   | 320300 |   70 | 0000-00-00 |
| C08     | Ashko Charles   | AK       | USA        | 421044 |   72 | 0000-00-00 |
| C09     | Tony Special    | Specie   | GTA        | 418921 |   62 | 0000-00-00 |
| C10     | Jack Sp         | Sparroe  | New Jersey | 102301 |   35 | 1990-02-02 |
+---------+-----------------+----------+------------+--------+------+------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> update customer set dob = '1990-02-02' where cust_id='c02';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> select * from customer;
+---------+-----------------+----------+------------+--------+------+------------+
| cust_id | cust_name       | nickname | city       | pcode  | age  | dob        |
+---------+-----------------+----------+------------+--------+------+------------+
| C01     | Ashley          | Ash      | WDC        | 321200 |   34 | 1991-01-01 |
| C02     | Bob Marley      | Bm       | Toronto    | 100100 |   23 | 1990-02-02 |
| C03     | Cherlies Theron | Cher     | New York   | 120134 |   20 | 1994-09-05 |
| C04     | Denial Jack     | DJ       | Brazil     | 341020 |   25 | 0000-00-00 |
| C05     | Donna newman    | New      | Toronto    | 130120 |   50 | 1996-07-09 |
| C06     | Eston M.        | M.       | Toronto    | 201023 |   65 | 1996-12-02 |
| C07     | Bobby Chacko    | Chac     | New York   | 320300 |   70 | 0000-00-00 |
| C08     | Ashko Charles   | AK       | USA        | 421044 |   72 | 0000-00-00 |
| C09     | Tony Special    | Specie   | GTA        | 418921 |   62 | 0000-00-00 |
| C10     | Jack Sp         | Sparroe  | New Jersey | 102301 |   35 | 1990-02-02 |
+---------+-----------------+----------+------------+--------+------+------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> update customer set dob = '1990-02-02' where cust_id='c04';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set dob = '1990-02-02' where cust_id='c07';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set dob = '1990-02-02' where cust_id='c08';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set dob = '1990-02-02' where cust_id='c09';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> select * from customer;
+---------+-----------------+----------+------------+--------+------+------------+
| cust_id | cust_name       | nickname | city       | pcode  | age  | dob        |
+---------+-----------------+----------+------------+--------+------+------------+
| C01     | Ashley          | Ash      | WDC        | 321200 |   34 | 1991-01-01 |
| C02     | Bob Marley      | Bm       | Toronto    | 100100 |   23 | 1990-02-02 |
| C03     | Cherlies Theron | Cher     | New York   | 120134 |   20 | 1994-09-05 |
| C04     | Denial Jack     | DJ       | Brazil     | 341020 |   25 | 1990-02-02 |
| C05     | Donna newman    | New      | Toronto    | 130120 |   50 | 1996-07-09 |
| C06     | Eston M.        | M.       | Toronto    | 201023 |   65 | 1996-12-02 |
| C07     | Bobby Chacko    | Chac     | New York   | 320300 |   70 | 1990-02-02 |
| C08     | Ashko Charles   | AK       | USA        | 421044 |   72 | 1990-02-02 |
| C09     | Tony Special    | Specie   | GTA        | 418921 |   62 | 1990-02-02 |
| C10     | Jack Sp         | Sparroe  | New Jersey | 102301 |   35 | 1990-02-02 |
+---------+-----------------+----------+------------+--------+------+------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select name, dob, TIMESTAMPDIFF(YEAR, dob,curdate()) from customer;
ERROR 1054 (42S22): Unknown column 'name' in 'field list'
MariaDB [CSD2204S18]> select cust_name, dob, TIMESTAMPDIFF(YEAR, dob,curdate()) from customer;
+-----------------+------------+------------------------------------+
| cust_name       | dob        | TIMESTAMPDIFF(YEAR, dob,curdate()) |
+-----------------+------------+------------------------------------+
| Ashley          | 1991-01-01 |                                 27 |
| Bob Marley      | 1990-02-02 |                                 28 |
| Cherlies Theron | 1994-09-05 |                                 23 |
| Denial Jack     | 1990-02-02 |                                 28 |
| Donna newman    | 1996-07-09 |                                 21 |
| Eston M.        | 1996-12-02 |                                 21 |
| Bobby Chacko    | 1990-02-02 |                                 28 |
| Ashko Charles   | 1990-02-02 |                                 28 |
| Tony Special    | 1990-02-02 |                                 28 |
| Jack Sp         | 1990-02-02 |                                 28 |
+-----------------+------------+------------------------------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select cust_name, dob, TIMESTAMPDIFF(YEAR, dob,curdate())"age" from customer;
+-----------------+------------+------+
| cust_name       | dob        | age  |
+-----------------+------------+------+
| Ashley          | 1991-01-01 |   27 |
| Bob Marley      | 1990-02-02 |   28 |
| Cherlies Theron | 1994-09-05 |   23 |
| Denial Jack     | 1990-02-02 |   28 |
| Donna newman    | 1996-07-09 |   21 |
| Eston M.        | 1996-12-02 |   21 |
| Bobby Chacko    | 1990-02-02 |   28 |
| Ashko Charles   | 1990-02-02 |   28 |
| Tony Special    | 1990-02-02 |   28 |
| Jack Sp         | 1990-02-02 |   28 |
+-----------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select cust_name, dob, TIMESTAMPDIFF(DAY, dob,curdate())"age" from customer;
+-----------------+------------+-------+
| cust_name       | dob        | age   |
+-----------------+------------+-------+
| Ashley          | 1991-01-01 |  9995 |
| Bob Marley      | 1990-02-02 | 10328 |
| Cherlies Theron | 1994-09-05 |  8652 |
| Denial Jack     | 1990-02-02 | 10328 |
| Donna newman    | 1996-07-09 |  7979 |
| Eston M.        | 1996-12-02 |  7833 |
| Bobby Chacko    | 1990-02-02 | 10328 |
| Ashko Charles   | 1990-02-02 | 10328 |
| Tony Special    | 1990-02-02 | 10328 |
| Jack Sp         | 1990-02-02 | 10328 |
+-----------------+------------+-------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select cust_name, dob, TIMESTAMPDIFF(YEAR, dob,curdate())"age" from customer having age=22;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> select cust_name, dob, TIMESTAMPDIFF(YEAR, dob,curdate())"age" from customer having age=21;
+--------------+------------+------+
| cust_name    | dob        | age  |
+--------------+------------+------+
| Donna newman | 1996-07-09 |   21 |
| Eston M.     | 1996-12-02 |   21 |
+--------------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select cust_name, dob, TIMESTAMPDIFF(YEAR, dob,curdate())"age" from customer whereTIMESTAMPSIFF =21;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '=21' at line 1
MariaDB [CSD2204S18]> select cust_name, dob, TIMESTAMPDIFF(YEAR, dob,curdate())"age" from customer where TIMESTAMPSIFF =21;
ERROR 1054 (42S22): Unknown column 'TIMESTAMPSIFF' in 'where clause'
MariaDB [CSD2204S18]> select cust_name, dob, TIMESTAMPDIFF(YEAR, dob,curdate())"age" from customer where TIMESTAMPDIFF =21;
ERROR 1054 (42S22): Unknown column 'TIMESTAMPDIFF' in 'where clause'
MariaDB [CSD2204S18]> select cust_name, dob, TIMESTAMPDIFF(YEAR, dob,curdate())"age" from customer where age =21;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> select cust_name, dob, TIMESTAMPDIFF(YEAR, dob,curdate())"age" from customer where age =22;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> select cust_name, dob, TIMESTAMPDIFF(YEAR, dob,curdate())"age" from customer where TIMESTAMPDIFF(YEAR,dob,curdate()) =22;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> exit;
