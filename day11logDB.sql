MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| assignmentdb       |
| csd2204s18         |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
7 rows in set (0.00 sec)

MariaDB [(none)]> use csd2204s18;
Database changed
MariaDB [csd2204s18]> create view v1 as select * from products;
Query OK, 0 rows affected (0.18 sec)

MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| c3                   |
| countries            |
| customer             |
| departments          |
| employees            |
| job_history          |
| jobs                 |
| locations            |
| m1                   |
| manu                 |
| movies               |
| orders               |
| person               |
| products             |
| regions              |
| v1                   |
+----------------------+
17 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from v1;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
+------+-----------------+-------+--------------+
13 rows in set (0.00 sec)

MariaDB [csd2204s18]> create view v1 as select * from products where price > 100;
ERROR 1050 (42S01): Table 'v1' already exists
MariaDB [csd2204s18]> create or replace view v1 as select * from products where price>100;
Query OK, 0 rows affected (0.03 sec)

MariaDB [csd2204s18]> select * from v1;
+------+------------+-------+--------------+
| Code | Name       | Price | Manufacturer |
+------+------------+-------+--------------+
|    1 | Hard drive |   240 |            5 |
|    2 | Memory     |   120 |            6 |
|    3 | ZIP drive  |   150 |            4 |
|    5 | Monitor    |   240 |            1 |
|    6 | DVD drive  |   180 |            2 |
|    8 | Printer    |   270 |            3 |
|   10 | DVD burner |   180 |            2 |
+------+------------+-------+--------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> insert into v1 values(20,'USB port',89,2)
    -> ;
Query OK, 1 row affected (0.08 sec)

MariaDB [csd2204s18]> select * from v1;
+------+------------+-------+--------------+
| Code | Name       | Price | Manufacturer |
+------+------------+-------+--------------+
|    1 | Hard drive |   240 |            5 |
|    2 | Memory     |   120 |            6 |
|    3 | ZIP drive  |   150 |            4 |
|    5 | Monitor    |   240 |            1 |
|    6 | DVD drive  |   180 |            2 |
|    8 | Printer    |   270 |            3 |
|   10 | DVD burner |   180 |            2 |
+------+------------+-------+--------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
|   20 | USB port        |    89 |            2 |
+------+-----------------+-------+--------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> delete from v1 where Code=20;
Query OK, 0 rows affected (0.01 sec)

MariaDB [csd2204s18]> select * from products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
|   20 | USB port        |    89 |            2 |
+------+-----------------+-------+--------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> select Name,Price from products where Name like '%drive';
+------------+-------+
| Name       | Price |
+------------+-------+
| Hard drive |   240 |
| ZIP drive  |   150 |
| DVD drive  |   180 |
| CD drive   |    90 |
+------------+-------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> create or replace view v2 as select Name,Price from products where Name like '%drive'
    -> ;
Query OK, 0 rows affected (0.01 sec)

MariaDB [csd2204s18]> select * from v2;
+------------+-------+
| Name       | Price |
+------------+-------+
| Hard drive |   240 |
| ZIP drive  |   150 |
| DVD drive  |   180 |
| CD drive   |    90 |
+------------+-------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| c3                   |
| countries            |
| customer             |
| departments          |
| employees            |
| job_history          |
| jobs                 |
| locations            |
| m1                   |
| manu                 |
| movies               |
| orders               |
| person               |
| products             |
| regions              |
| v1                   |
| v2                   |
+----------------------+
18 rows in set (0.00 sec)

MariaDB [csd2204s18]> select products.CODE, product.NAME "Products", manu.NAME"Manufacturer" from manufacturer inner join products on products.MANUFACTURER= manu.code; 
ERROR 1146 (42S02): Table 'csd2204s18.manufacturer' doesn't exist
MariaDB [csd2204s18]> select products.CODE, product.NAME "Products", manu.NAME"Manufacturer" from manufacturer inner join products on products.MANUFACTURER= manu.code; 
ERROR 1146 (42S02): Table 'csd2204s18.manufacturer' doesn't exist
MariaDB [csd2204s18]> select products.CODE, products.NAME "Products", manu.NAME"Manufacturer" from manufacturer inner join products on products.MANUFACTURER= manu.code; 
ERROR 1146 (42S02): Table 'csd2204s18.manufacturer' doesn't exist
MariaDB [csd2204s18]> select products.CODE, products.NAME "Products", manu.NAME"Manufacturer" from manu inner join products on products.MANUFACTURER = manu.code; 
+------+-----------------+-------------------+
| CODE | Products        | Manufacturer      |
+------+-----------------+-------------------+
|    1 | Hard drive      | Fujitsu           |
|    2 | Memory          | Winchester        |
|    3 | ZIP drive       | Iomega            |
|    4 | Floppy disk     | Winchester        |
|    5 | Monitor         | Sony              |
|    6 | DVD drive       | Creative Labs     |
|    7 | CD drive        | Creative Labs     |
|    8 | Printer         | Hewlett-Packard   |
|    9 | Toner cartridge | Hewlett-Packard   |
|   10 | DVD burner      | Creative Labs     |
|   11 | Printer         | moxDroid Labs Inc |
|   12 | Toner cartridge | moxDroid Labs Inc |
|   13 | DVD burner      | moxDroid Labs Inc |
|   20 | USB port        | Creative Labs     |
+------+-----------------+-------------------+
14 rows in set (0.01 sec)

MariaDB [csd2204s18]> create or replace view v3 as select products.CODE, products.NAME "Products", manu.NAME"Manufacturer" from manu inner join products on products.MANUFACTURER = manu.code;
Query OK, 0 rows affected (0.19 sec)

MariaDB [csd2204s18]> select * from v3;
+------+-----------------+-------------------+
| CODE | Products        | Manufacturer      |
+------+-----------------+-------------------+
|    1 | Hard drive      | Fujitsu           |
|    2 | Memory          | Winchester        |
|    3 | ZIP drive       | Iomega            |
|    4 | Floppy disk     | Winchester        |
|    5 | Monitor         | Sony              |
|    6 | DVD drive       | Creative Labs     |
|    7 | CD drive        | Creative Labs     |
|    8 | Printer         | Hewlett-Packard   |
|    9 | Toner cartridge | Hewlett-Packard   |
|   10 | DVD burner      | Creative Labs     |
|   11 | Printer         | moxDroid Labs Inc |
|   12 | Toner cartridge | moxDroid Labs Inc |
|   13 | DVD burner      | moxDroid Labs Inc |
|   20 | USB port        | Creative Labs     |
+------+-----------------+-------------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> create or replace view v4 as select first_name,last_name,salary from employees where salary>ALL(select avg(salary) from employees group by department_id);
Query OK, 0 rows affected (0.05 sec)

MariaDB [csd2204s18]> select * from v4;
+------------+-----------+----------+
| first_name | last_name | salary   |
+------------+-----------+----------+
| Steven     | King      | 24000.00 |
+------------+-----------+----------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> drop view v5;
ERROR 1051 (42S02): Unknown table 'csd2204s18.v5'
MariaDB [csd2204s18]> drop view if exists v5;
Query OK, 0 rows affected, 1 warning (0.00 sec)

MariaDB [csd2204s18]> drop view if exists v1;
Query OK, 0 rows affected (0.00 sec)

MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| c3                   |
| countries            |
| customer             |
| departments          |
| employees            |
| job_history          |
| jobs                 |
| locations            |
| m1                   |
| manu                 |
| movies               |
| orders               |
| person               |
| products             |
| regions              |
| v2                   |
| v3                   |
| v4                   |
+----------------------+
19 rows in set (0.00 sec)

MariaDB [csd2204s18]> exit;
