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
MariaDB [csd2204s18]> select salary from employees where last_name like 'Bell';
+---------+
| salary  |
+---------+
| 4000.00 |
+---------+
1 row in set (0.02 sec)

MariaDB [csd2204s18]> desc employees;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| EMPLOYEE_ID    | decimal(6,0) | NO   | PRI | 0       |       |
| FIRST_NAME     | varchar(20)  | YES  |     | NULL    |       |
| LAST_NAME      | varchar(25)  | NO   | MUL | NULL    |       |
| EMAIL          | varchar(25)  | NO   | UNI | NULL    |       |
| PHONE_NUMBER   | varchar(20)  | YES  |     | NULL    |       |
| HIRE_DATE      | date         | NO   |     | NULL    |       |
| JOB_ID         | varchar(10)  | NO   | MUL | NULL    |       |
| SALARY         | decimal(8,2) | YES  |     | NULL    |       |
| COMMISSION_PCT | decimal(2,2) | YES  |     | NULL    |       |
| MANAGER_ID     | decimal(6,0) | YES  | MUL | NULL    |       |
| DEPARTMENT_ID  | decimal(4,0) | YES  | MUL | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
11 rows in set (0.00 sec)

MariaDB [csd2204s18]> show tbles;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'tbles' at line 1
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
+----------------------+
16 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc jobs;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| JOB_ID     | varchar(10)  | NO   | PRI |         |       |
| JOB_TITLE  | varchar(35)  | NO   |     | NULL    |       |
| MIN_SALARY | decimal(6,0) | YES  |     | NULL    |       |
| MAX_SALARY | decimal(6,0) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
4 rows in set (0.05 sec)

MariaDB [csd2204s18]> select * from employees;
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
|         100 | Steven      | King        | SKING    | 515.123.4567       | 1987-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 |
|         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 1987-06-18 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 1987-06-19 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 1987-06-20 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 |
|         104 | Bruce       | Ernst       | BERNST   | 590.423.4568       | 1987-06-21 | IT_PROG    |  6000.00 |           0.00 |        103 |            60 |
|         105 | David       | Austin      | DAUSTIN  | 590.423.4569       | 1987-06-22 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         106 | Valli       | Pataballa   | VPATABAL | 590.423.4560       | 1987-06-23 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         107 | Diana       | Lorentz     | DLORENTZ | 590.423.5567       | 1987-06-24 | IT_PROG    |  4200.00 |           0.00 |        103 |            60 |
|         108 | Nancy       | Greenberg   | NGREENBE | 515.124.4569       | 1987-06-25 | FI_MGR     | 12000.00 |           0.00 |        101 |           100 |
|         109 | Daniel      | Faviet      | DFAVIET  | 515.124.4169       | 1987-06-26 | FI_ACCOUNT |  9000.00 |           0.00 |        108 |           100 |
|         110 | John        | Chen        | JCHEN    | 515.124.4269       | 1987-06-27 | FI_ACCOUNT |  8200.00 |           0.00 |        108 |           100 |
|         111 | Ismael      | Sciarra     | ISCIARRA | 515.124.4369       | 1987-06-28 | FI_ACCOUNT |  7700.00 |           0.00 |        108 |           100 |
|         112 | Jose Manuel | Urman       | JMURMAN  | 515.124.4469       | 1987-06-29 | FI_ACCOUNT |  7800.00 |           0.00 |        108 |           100 |
|         113 | Luis        | Popp        | LPOPP    | 515.124.4567       | 1987-06-30 | FI_ACCOUNT |  6900.00 |           0.00 |        108 |           100 |
|         114 | Den         | Raphaely    | DRAPHEAL | 515.127.4561       | 1987-07-01 | PU_MAN     | 11000.00 |           0.00 |        100 |            30 |
|         115 | Alexander   | Khoo        | AKHOO    | 515.127.4562       | 1987-07-02 | PU_CLERK   |  3100.00 |           0.00 |        114 |            30 |
|         116 | Shelli      | Baida       | SBAIDA   | 515.127.4563       | 1987-07-03 | PU_CLERK   |  2900.00 |           0.00 |        114 |            30 |
|         117 | Sigal       | Tobias      | STOBIAS  | 515.127.4564       | 1987-07-04 | PU_CLERK   |  2800.00 |           0.00 |        114 |            30 |
|         118 | Guy         | Himuro      | GHIMURO  | 515.127.4565       | 1987-07-05 | PU_CLERK   |  2600.00 |           0.00 |        114 |            30 |
|         119 | Karen       | Colmenares  | KCOLMENA | 515.127.4566       | 1987-07-06 | PU_CLERK   |  2500.00 |           0.00 |        114 |            30 |
|         120 | Matthew     | Weiss       | MWEISS   | 650.123.1234       | 1987-07-07 | ST_MAN     |  8000.00 |           0.00 |        100 |            50 |
|         121 | Adam        | Fripp       | AFRIPP   | 650.123.2234       | 1987-07-08 | ST_MAN     |  8200.00 |           0.00 |        100 |            50 |
|         122 | Payam       | Kaufling    | PKAUFLIN | 650.123.3234       | 1987-07-09 | ST_MAN     |  7900.00 |           0.00 |        100 |            50 |
|         123 | Shanta      | Vollman     | SVOLLMAN | 650.123.4234       | 1987-07-10 | ST_MAN     |  6500.00 |           0.00 |        100 |            50 |
|         124 | Kevin       | Mourgos     | KMOURGOS | 650.123.5234       | 1987-07-11 | ST_MAN     |  5800.00 |           0.00 |        100 |            50 |
|         125 | Julia       | Nayer       | JNAYER   | 650.124.1214       | 1987-07-12 | ST_CLERK   |  3200.00 |           0.00 |        120 |            50 |
|         126 | Irene       | Mikkilineni | IMIKKILI | 650.124.1224       | 1987-07-13 | ST_CLERK   |  2700.00 |           0.00 |        120 |            50 |
|         127 | James       | Landry      | JLANDRY  | 650.124.1334       | 1987-07-14 | ST_CLERK   |  2400.00 |           0.00 |        120 |            50 |
|         128 | Steven      | Markle      | SMARKLE  | 650.124.1434       | 1987-07-15 | ST_CLERK   |  2200.00 |           0.00 |        120 |            50 |
|         129 | Laura       | Bissot      | LBISSOT  | 650.124.5234       | 1987-07-16 | ST_CLERK   |  3300.00 |           0.00 |        121 |            50 |
|         130 | Mozhe       | Atkinson    | MATKINSO | 650.124.6234       | 1987-07-17 | ST_CLERK   |  2800.00 |           0.00 |        121 |            50 |
|         131 | James       | Marlow      | JAMRLOW  | 650.124.7234       | 1987-07-18 | ST_CLERK   |  2500.00 |           0.00 |        121 |            50 |
|         132 | TJ          | Olson       | TJOLSON  | 650.124.8234       | 1987-07-19 | ST_CLERK   |  2100.00 |           0.00 |        121 |            50 |
|         133 | Jason       | Mallin      | JMALLIN  | 650.127.1934       | 1987-07-20 | ST_CLERK   |  3300.00 |           0.00 |        122 |            50 |
|         134 | Michael     | Rogers      | MROGERS  | 650.127.1834       | 1987-07-21 | ST_CLERK   |  2900.00 |           0.00 |        122 |            50 |
|         135 | Ki          | Gee         | KGEE     | 650.127.1734       | 1987-07-22 | ST_CLERK   |  2400.00 |           0.00 |        122 |            50 |
|         136 | Hazel       | Philtanker  | HPHILTAN | 650.127.1634       | 1987-07-23 | ST_CLERK   |  2200.00 |           0.00 |        122 |            50 |
|         137 | Renske      | Ladwig      | RLADWIG  | 650.121.1234       | 1987-07-24 | ST_CLERK   |  3600.00 |           0.00 |        123 |            50 |
|         138 | Stephen     | Stiles      | SSTILES  | 650.121.2034       | 1987-07-25 | ST_CLERK   |  3200.00 |           0.00 |        123 |            50 |
|         139 | John        | Seo         | JSEO     | 650.121.2019       | 1987-07-26 | ST_CLERK   |  2700.00 |           0.00 |        123 |            50 |
|         140 | Joshua      | Patel       | JPATEL   | 650.121.1834       | 1987-07-27 | ST_CLERK   |  2500.00 |           0.00 |        123 |            50 |
|         141 | Trenna      | Rajs        | TRAJS    | 650.121.8009       | 1987-07-28 | ST_CLERK   |  3500.00 |           0.00 |        124 |            50 |
|         142 | Curtis      | Davies      | CDAVIES  | 650.121.2994       | 1987-07-29 | ST_CLERK   |  3100.00 |           0.00 |        124 |            50 |
|         143 | Randall     | Matos       | RMATOS   | 650.121.2874       | 1987-07-30 | ST_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         144 | Peter       | Vargas      | PVARGAS  | 650.121.2004       | 1987-07-31 | ST_CLERK   |  2500.00 |           0.00 |        124 |            50 |
|         145 | John        | Russell     | JRUSSEL  | 011.44.1344.429268 | 1987-08-01 | SA_MAN     | 14000.00 |           0.40 |        100 |            80 |
|         146 | Karen       | Partners    | KPARTNER | 011.44.1344.467268 | 1987-08-02 | SA_MAN     | 13500.00 |           0.30 |        100 |            80 |
|         147 | Alberto     | Errazuriz   | AERRAZUR | 011.44.1344.429278 | 1987-08-03 | SA_MAN     | 12000.00 |           0.30 |        100 |            80 |
|         148 | Gerald      | Cambrault   | GCAMBRAU | 011.44.1344.619268 | 1987-08-04 | SA_MAN     | 11000.00 |           0.30 |        100 |            80 |
|         149 | Eleni       | Zlotkey     | EZLOTKEY | 011.44.1344.429018 | 1987-08-05 | SA_MAN     | 10500.00 |           0.20 |        100 |            80 |
|         150 | Peter       | Tucker      | PTUCKER  | 011.44.1344.129268 | 1987-08-06 | SA_REP     | 10000.00 |           0.30 |        145 |            80 |
|         151 | David       | Bernstein   | DBERNSTE | 011.44.1344.345268 | 1987-08-07 | SA_REP     |  9500.00 |           0.25 |        145 |            80 |
|         152 | Peter       | Hall        | PHALL    | 011.44.1344.478968 | 1987-08-08 | SA_REP     |  9000.00 |           0.25 |        145 |            80 |
|         153 | Christopher | Olsen       | COLSEN   | 011.44.1344.498718 | 1987-08-09 | SA_REP     |  8000.00 |           0.20 |        145 |            80 |
|         154 | Nanette     | Cambrault   | NCAMBRAU | 011.44.1344.987668 | 1987-08-10 | SA_REP     |  7500.00 |           0.20 |        145 |            80 |
|         155 | Oliver      | Tuvault     | OTUVAULT | 011.44.1344.486508 | 1987-08-11 | SA_REP     |  7000.00 |           0.15 |        145 |            80 |
|         156 | Janette     | King        | JKING    | 011.44.1345.429268 | 1987-08-12 | SA_REP     | 10000.00 |           0.35 |        146 |            80 |
|         157 | Patrick     | Sully       | PSULLY   | 011.44.1345.929268 | 1987-08-13 | SA_REP     |  9500.00 |           0.35 |        146 |            80 |
|         158 | Allan       | McEwen      | AMCEWEN  | 011.44.1345.829268 | 1987-08-14 | SA_REP     |  9000.00 |           0.35 |        146 |            80 |
|         159 | Lindsey     | Smith       | LSMITH   | 011.44.1345.729268 | 1987-08-15 | SA_REP     |  8000.00 |           0.30 |        146 |            80 |
|         160 | Louise      | Doran       | LDORAN   | 011.44.1345.629268 | 1987-08-16 | SA_REP     |  7500.00 |           0.30 |        146 |            80 |
|         161 | Sarath      | Sewall      | SSEWALL  | 011.44.1345.529268 | 1987-08-17 | SA_REP     |  7000.00 |           0.25 |        146 |            80 |
|         162 | Clara       | Vishney     | CVISHNEY | 011.44.1346.129268 | 1987-08-18 | SA_REP     | 10500.00 |           0.25 |        147 |            80 |
|         163 | Danielle    | Greene      | DGREENE  | 011.44.1346.229268 | 1987-08-19 | SA_REP     |  9500.00 |           0.15 |        147 |            80 |
|         164 | Mattea      | Marvins     | MMARVINS | 011.44.1346.329268 | 1987-08-20 | SA_REP     |  7200.00 |           0.10 |        147 |            80 |
|         165 | David       | Lee         | DLEE     | 011.44.1346.529268 | 1987-08-21 | SA_REP     |  6800.00 |           0.10 |        147 |            80 |
|         166 | Sundar      | Ande        | SANDE    | 011.44.1346.629268 | 1987-08-22 | SA_REP     |  6400.00 |           0.10 |        147 |            80 |
|         167 | Amit        | Banda       | ABANDA   | 011.44.1346.729268 | 1987-08-23 | SA_REP     |  6200.00 |           0.10 |        147 |            80 |
|         168 | Lisa        | Ozer        | LOZER    | 011.44.1343.929268 | 1987-08-24 | SA_REP     | 11500.00 |           0.25 |        148 |            80 |
|         169 | Harrison    | Bloom       | HBLOOM   | 011.44.1343.829268 | 1987-08-25 | SA_REP     | 10000.00 |           0.20 |        148 |            80 |
|         170 | Tayler      | Fox         | TFOX     | 011.44.1343.729268 | 1987-08-26 | SA_REP     |  9600.00 |           0.20 |        148 |            80 |
|         171 | William     | Smith       | WSMITH   | 011.44.1343.629268 | 1987-08-27 | SA_REP     |  7400.00 |           0.15 |        148 |            80 |
|         172 | Elizabeth   | Bates       | EBATES   | 011.44.1343.529268 | 1987-08-28 | SA_REP     |  7300.00 |           0.15 |        148 |            80 |
|         173 | Sundita     | Kumar       | SKUMAR   | 011.44.1343.329268 | 1987-08-29 | SA_REP     |  6100.00 |           0.10 |        148 |            80 |
|         174 | Ellen       | Abel        | EABEL    | 011.44.1644.429267 | 1987-08-30 | SA_REP     | 11000.00 |           0.30 |        149 |            80 |
|         175 | Alyssa      | Hutton      | AHUTTON  | 011.44.1644.429266 | 1987-08-31 | SA_REP     |  8800.00 |           0.25 |        149 |            80 |
|         176 | Jonathon    | Taylor      | JTAYLOR  | 011.44.1644.429265 | 1987-09-01 | SA_REP     |  8600.00 |           0.20 |        149 |            80 |
|         177 | Jack        | Livingston  | JLIVINGS | 011.44.1644.429264 | 1987-09-02 | SA_REP     |  8400.00 |           0.20 |        149 |            80 |
|         178 | Kimberely   | Grant       | KGRANT   | 011.44.1644.429263 | 1987-09-03 | SA_REP     |  7000.00 |           0.15 |        149 |             0 |
|         179 | Charles     | Johnson     | CJOHNSON | 011.44.1644.429262 | 1987-09-04 | SA_REP     |  6200.00 |           0.10 |        149 |            80 |
|         180 | Winston     | Taylor      | WTAYLOR  | 650.507.9876       | 1987-09-05 | SH_CLERK   |  3200.00 |           0.00 |        120 |            50 |
|         181 | Jean        | Fleaur      | JFLEAUR  | 650.507.9877       | 1987-09-06 | SH_CLERK   |  3100.00 |           0.00 |        120 |            50 |
|         182 | Martha      | Sullivan    | MSULLIVA | 650.507.9878       | 1987-09-07 | SH_CLERK   |  2500.00 |           0.00 |        120 |            50 |
|         183 | Girard      | Geoni       | GGEONI   | 650.507.9879       | 1987-09-08 | SH_CLERK   |  2800.00 |           0.00 |        120 |            50 |
|         184 | Nandita     | Sarchand    | NSARCHAN | 650.509.1876       | 1987-09-09 | SH_CLERK   |  4200.00 |           0.00 |        121 |            50 |
|         185 | Alexis      | Bull        | ABULL    | 650.509.2876       | 1987-09-10 | SH_CLERK   |  4100.00 |           0.00 |        121 |            50 |
|         186 | Julia       | Dellinger   | JDELLING | 650.509.3876       | 1987-09-11 | SH_CLERK   |  3400.00 |           0.00 |        121 |            50 |
|         187 | Anthony     | Cabrio      | ACABRIO  | 650.509.4876       | 1987-09-12 | SH_CLERK   |  3000.00 |           0.00 |        121 |            50 |
|         188 | Kelly       | Chung       | KCHUNG   | 650.505.1876       | 1987-09-13 | SH_CLERK   |  3800.00 |           0.00 |        122 |            50 |
|         189 | Jennifer    | Dilly       | JDILLY   | 650.505.2876       | 1987-09-14 | SH_CLERK   |  3600.00 |           0.00 |        122 |            50 |
|         190 | Timothy     | Gates       | TGATES   | 650.505.3876       | 1987-09-15 | SH_CLERK   |  2900.00 |           0.00 |        122 |            50 |
|         191 | Randall     | Perkins     | RPERKINS | 650.505.4876       | 1987-09-16 | SH_CLERK   |  2500.00 |           0.00 |        122 |            50 |
|         192 | Sarah       | Bell        | SBELL    | 650.501.1876       | 1987-09-17 | SH_CLERK   |  4000.00 |           0.00 |        123 |            50 |
|         193 | Britney     | Everett     | BEVERETT | 650.501.2876       | 1987-09-18 | SH_CLERK   |  3900.00 |           0.00 |        123 |            50 |
|         194 | Samuel      | McCain      | SMCCAIN  | 650.501.3876       | 1987-09-19 | SH_CLERK   |  3200.00 |           0.00 |        123 |            50 |
|         195 | Vance       | Jones       | VJONES   | 650.501.4876       | 1987-09-20 | SH_CLERK   |  2800.00 |           0.00 |        123 |            50 |
|         196 | Alana       | Walsh       | AWALSH   | 650.507.9811       | 1987-09-21 | SH_CLERK   |  3100.00 |           0.00 |        124 |            50 |
|         197 | Kevin       | Feeney      | KFEENEY  | 650.507.9822       | 1987-09-22 | SH_CLERK   |  3000.00 |           0.00 |        124 |            50 |
|         198 | Donald      | OConnell    | DOCONNEL | 650.507.9833       | 1987-09-23 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         199 | Douglas     | Grant       | DGRANT   | 650.507.9844       | 1987-09-24 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         200 | Jennifer    | Whalen      | JWHALEN  | 515.123.4444       | 1987-09-25 | AD_ASST    |  4400.00 |           0.00 |        101 |            10 |
|         201 | Michael     | Hartstein   | MHARTSTE | 515.123.5555       | 1987-09-26 | MK_MAN     | 13000.00 |           0.00 |        100 |            20 |
|         202 | Pat         | Fay         | PFAY     | 603.123.6666       | 1987-09-27 | MK_REP     |  6000.00 |           0.00 |        201 |            20 |
|         203 | Susan       | Mavris      | SMAVRIS  | 515.123.7777       | 1987-09-28 | HR_REP     |  6500.00 |           0.00 |        101 |            40 |
|         204 | Hermann     | Baer        | HBAER    | 515.123.8888       | 1987-09-29 | PR_REP     | 10000.00 |           0.00 |        101 |            70 |
|         205 | Shelley     | Higgins     | SHIGGINS | 515.123.8080       | 1987-09-30 | AC_MGR     | 12000.00 |           0.00 |        101 |           110 |
|         206 | William     | Gietz       | WGIETZ   | 515.123.8181       | 1987-10-01 | AC_ACCOUNT |  8300.00 |           0.00 |        205 |           110 |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
107 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name,last_name,salary from employees where salary > (select slary from employees where last_name like 'Bell');
ERROR 1054 (42S22): Unknown column 'slary' in 'field list'
MariaDB [csd2204s18]> select first_name,last_name,salary from employees where salary > (select slary from employees where last_name like 'Bell');
ERROR 1054 (42S22): Unknown column 'slary' in 'field list'
MariaDB [csd2204s18]> select first_name,last_name,salary from employees where salary > (select salary from employees where last_name like 'Bell');
+-------------+------------+----------+
| first_name  | last_name  | salary   |
+-------------+------------+----------+
| Steven      | King       | 24000.00 |
| Neena       | Kochhar    | 17000.00 |
| Lex         | De Haan    | 17000.00 |
| Alexander   | Hunold     |  9000.00 |
| Bruce       | Ernst      |  6000.00 |
| David       | Austin     |  4800.00 |
| Valli       | Pataballa  |  4800.00 |
| Diana       | Lorentz    |  4200.00 |
| Nancy       | Greenberg  | 12000.00 |
| Daniel      | Faviet     |  9000.00 |
| John        | Chen       |  8200.00 |
| Ismael      | Sciarra    |  7700.00 |
| Jose Manuel | Urman      |  7800.00 |
| Luis        | Popp       |  6900.00 |
| Den         | Raphaely   | 11000.00 |
| Matthew     | Weiss      |  8000.00 |
| Adam        | Fripp      |  8200.00 |
| Payam       | Kaufling   |  7900.00 |
| Shanta      | Vollman    |  6500.00 |
| Kevin       | Mourgos    |  5800.00 |
| John        | Russell    | 14000.00 |
| Karen       | Partners   | 13500.00 |
| Alberto     | Errazuriz  | 12000.00 |
| Gerald      | Cambrault  | 11000.00 |
| Eleni       | Zlotkey    | 10500.00 |
| Peter       | Tucker     | 10000.00 |
| David       | Bernstein  |  9500.00 |
| Peter       | Hall       |  9000.00 |
| Christopher | Olsen      |  8000.00 |
| Nanette     | Cambrault  |  7500.00 |
| Oliver      | Tuvault    |  7000.00 |
| Janette     | King       | 10000.00 |
| Patrick     | Sully      |  9500.00 |
| Allan       | McEwen     |  9000.00 |
| Lindsey     | Smith      |  8000.00 |
| Louise      | Doran      |  7500.00 |
| Sarath      | Sewall     |  7000.00 |
| Clara       | Vishney    | 10500.00 |
| Danielle    | Greene     |  9500.00 |
| Mattea      | Marvins    |  7200.00 |
| David       | Lee        |  6800.00 |
| Sundar      | Ande       |  6400.00 |
| Amit        | Banda      |  6200.00 |
| Lisa        | Ozer       | 11500.00 |
| Harrison    | Bloom      | 10000.00 |
| Tayler      | Fox        |  9600.00 |
| William     | Smith      |  7400.00 |
| Elizabeth   | Bates      |  7300.00 |
| Sundita     | Kumar      |  6100.00 |
| Ellen       | Abel       | 11000.00 |
| Alyssa      | Hutton     |  8800.00 |
| Jonathon    | Taylor     |  8600.00 |
| Jack        | Livingston |  8400.00 |
| Kimberely   | Grant      |  7000.00 |
| Charles     | Johnson    |  6200.00 |
| Nandita     | Sarchand   |  4200.00 |
| Alexis      | Bull       |  4100.00 |
| Jennifer    | Whalen     |  4400.00 |
| Michael     | Hartstein  | 13000.00 |
| Pat         | Fay        |  6000.00 |
| Susan       | Mavris     |  6500.00 |
| Hermann     | Baer       | 10000.00 |
| Shelley     | Higgins    | 12000.00 |
| William     | Gietz      |  8300.00 |
+-------------+------------+----------+
64 rows in set (0.00 sec)

MariaDB [csd2204s18]> select MIN(min_salary)+1000 from jobs;
+----------------------+
| MIN(min_salary)+1000 |
+----------------------+
|                 3000 |
+----------------------+
1 row in set (0.02 sec)

MariaDB [csd2204s18]> select first_name,last_name.salary from employees where salary = (select MIN(min_salary)+1000 from jobs);
ERROR 1054 (42S22): Unknown column 'last_name.salary' in 'field list'
MariaDB [csd2204s18]> select first_name,last_name from employees where salary = (select MIN(min_salary)+1000 from jobs);
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Anthony    | Cabrio    |
| Kevin      | Feeney    |
+------------+-----------+
2 rows in set (0.02 sec)

MariaDB [csd2204s18]> select * from employees where salary > ALL(select avg(salary) from employees group by department_id);
+-------------+------------+-----------+-------+--------------+------------+---------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL | PHONE_NUMBER | HIRE_DATE  | JOB_ID  | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+-------+--------------+------------+---------+----------+----------------+------------+---------------+
|         100 | Steven     | King      | SKING | 515.123.4567 | 1987-06-17 | AD_PRES | 24000.00 |           0.00 |          0 |            90 |
+-------------+------------+-----------+-------+--------------+------------+---------+----------+----------------+------------+---------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from employees where salary >(select max(salary) from employees where job_id ='SH_CLERK')order by salary;
+-------------+-------------+------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME  | LAST_NAME  | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+-------------+------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
|         200 | Jennifer    | Whalen     | JWHALEN  | 515.123.4444       | 1987-09-25 | AD_ASST    |  4400.00 |           0.00 |        101 |            10 |
|         105 | David       | Austin     | DAUSTIN  | 590.423.4569       | 1987-06-22 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         106 | Valli       | Pataballa  | VPATABAL | 590.423.4560       | 1987-06-23 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         124 | Kevin       | Mourgos    | KMOURGOS | 650.123.5234       | 1987-07-11 | ST_MAN     |  5800.00 |           0.00 |        100 |            50 |
|         104 | Bruce       | Ernst      | BERNST   | 590.423.4568       | 1987-06-21 | IT_PROG    |  6000.00 |           0.00 |        103 |            60 |
|         202 | Pat         | Fay        | PFAY     | 603.123.6666       | 1987-09-27 | MK_REP     |  6000.00 |           0.00 |        201 |            20 |
|         173 | Sundita     | Kumar      | SKUMAR   | 011.44.1343.329268 | 1987-08-29 | SA_REP     |  6100.00 |           0.10 |        148 |            80 |
|         167 | Amit        | Banda      | ABANDA   | 011.44.1346.729268 | 1987-08-23 | SA_REP     |  6200.00 |           0.10 |        147 |            80 |
|         179 | Charles     | Johnson    | CJOHNSON | 011.44.1644.429262 | 1987-09-04 | SA_REP     |  6200.00 |           0.10 |        149 |            80 |
|         166 | Sundar      | Ande       | SANDE    | 011.44.1346.629268 | 1987-08-22 | SA_REP     |  6400.00 |           0.10 |        147 |            80 |
|         203 | Susan       | Mavris     | SMAVRIS  | 515.123.7777       | 1987-09-28 | HR_REP     |  6500.00 |           0.00 |        101 |            40 |
|         123 | Shanta      | Vollman    | SVOLLMAN | 650.123.4234       | 1987-07-10 | ST_MAN     |  6500.00 |           0.00 |        100 |            50 |
|         165 | David       | Lee        | DLEE     | 011.44.1346.529268 | 1987-08-21 | SA_REP     |  6800.00 |           0.10 |        147 |            80 |
|         113 | Luis        | Popp       | LPOPP    | 515.124.4567       | 1987-06-30 | FI_ACCOUNT |  6900.00 |           0.00 |        108 |           100 |
|         161 | Sarath      | Sewall     | SSEWALL  | 011.44.1345.529268 | 1987-08-17 | SA_REP     |  7000.00 |           0.25 |        146 |            80 |
|         155 | Oliver      | Tuvault    | OTUVAULT | 011.44.1344.486508 | 1987-08-11 | SA_REP     |  7000.00 |           0.15 |        145 |            80 |
|         178 | Kimberely   | Grant      | KGRANT   | 011.44.1644.429263 | 1987-09-03 | SA_REP     |  7000.00 |           0.15 |        149 |             0 |
|         164 | Mattea      | Marvins    | MMARVINS | 011.44.1346.329268 | 1987-08-20 | SA_REP     |  7200.00 |           0.10 |        147 |            80 |
|         172 | Elizabeth   | Bates      | EBATES   | 011.44.1343.529268 | 1987-08-28 | SA_REP     |  7300.00 |           0.15 |        148 |            80 |
|         171 | William     | Smith      | WSMITH   | 011.44.1343.629268 | 1987-08-27 | SA_REP     |  7400.00 |           0.15 |        148 |            80 |
|         154 | Nanette     | Cambrault  | NCAMBRAU | 011.44.1344.987668 | 1987-08-10 | SA_REP     |  7500.00 |           0.20 |        145 |            80 |
|         160 | Louise      | Doran      | LDORAN   | 011.44.1345.629268 | 1987-08-16 | SA_REP     |  7500.00 |           0.30 |        146 |            80 |
|         111 | Ismael      | Sciarra    | ISCIARRA | 515.124.4369       | 1987-06-28 | FI_ACCOUNT |  7700.00 |           0.00 |        108 |           100 |
|         112 | Jose Manuel | Urman      | JMURMAN  | 515.124.4469       | 1987-06-29 | FI_ACCOUNT |  7800.00 |           0.00 |        108 |           100 |
|         122 | Payam       | Kaufling   | PKAUFLIN | 650.123.3234       | 1987-07-09 | ST_MAN     |  7900.00 |           0.00 |        100 |            50 |
|         159 | Lindsey     | Smith      | LSMITH   | 011.44.1345.729268 | 1987-08-15 | SA_REP     |  8000.00 |           0.30 |        146 |            80 |
|         120 | Matthew     | Weiss      | MWEISS   | 650.123.1234       | 1987-07-07 | ST_MAN     |  8000.00 |           0.00 |        100 |            50 |
|         153 | Christopher | Olsen      | COLSEN   | 011.44.1344.498718 | 1987-08-09 | SA_REP     |  8000.00 |           0.20 |        145 |            80 |
|         121 | Adam        | Fripp      | AFRIPP   | 650.123.2234       | 1987-07-08 | ST_MAN     |  8200.00 |           0.00 |        100 |            50 |
|         110 | John        | Chen       | JCHEN    | 515.124.4269       | 1987-06-27 | FI_ACCOUNT |  8200.00 |           0.00 |        108 |           100 |
|         206 | William     | Gietz      | WGIETZ   | 515.123.8181       | 1987-10-01 | AC_ACCOUNT |  8300.00 |           0.00 |        205 |           110 |
|         177 | Jack        | Livingston | JLIVINGS | 011.44.1644.429264 | 1987-09-02 | SA_REP     |  8400.00 |           0.20 |        149 |            80 |
|         176 | Jonathon    | Taylor     | JTAYLOR  | 011.44.1644.429265 | 1987-09-01 | SA_REP     |  8600.00 |           0.20 |        149 |            80 |
|         175 | Alyssa      | Hutton     | AHUTTON  | 011.44.1644.429266 | 1987-08-31 | SA_REP     |  8800.00 |           0.25 |        149 |            80 |
|         158 | Allan       | McEwen     | AMCEWEN  | 011.44.1345.829268 | 1987-08-14 | SA_REP     |  9000.00 |           0.35 |        146 |            80 |
|         152 | Peter       | Hall       | PHALL    | 011.44.1344.478968 | 1987-08-08 | SA_REP     |  9000.00 |           0.25 |        145 |            80 |
|         103 | Alexander   | Hunold     | AHUNOLD  | 590.423.4567       | 1987-06-20 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 |
|         109 | Daniel      | Faviet     | DFAVIET  | 515.124.4169       | 1987-06-26 | FI_ACCOUNT |  9000.00 |           0.00 |        108 |           100 |
|         157 | Patrick     | Sully      | PSULLY   | 011.44.1345.929268 | 1987-08-13 | SA_REP     |  9500.00 |           0.35 |        146 |            80 |
|         163 | Danielle    | Greene     | DGREENE  | 011.44.1346.229268 | 1987-08-19 | SA_REP     |  9500.00 |           0.15 |        147 |            80 |
|         151 | David       | Bernstein  | DBERNSTE | 011.44.1344.345268 | 1987-08-07 | SA_REP     |  9500.00 |           0.25 |        145 |            80 |
|         170 | Tayler      | Fox        | TFOX     | 011.44.1343.729268 | 1987-08-26 | SA_REP     |  9600.00 |           0.20 |        148 |            80 |
|         204 | Hermann     | Baer       | HBAER    | 515.123.8888       | 1987-09-29 | PR_REP     | 10000.00 |           0.00 |        101 |            70 |
|         169 | Harrison    | Bloom      | HBLOOM   | 011.44.1343.829268 | 1987-08-25 | SA_REP     | 10000.00 |           0.20 |        148 |            80 |
|         156 | Janette     | King       | JKING    | 011.44.1345.429268 | 1987-08-12 | SA_REP     | 10000.00 |           0.35 |        146 |            80 |
|         150 | Peter       | Tucker     | PTUCKER  | 011.44.1344.129268 | 1987-08-06 | SA_REP     | 10000.00 |           0.30 |        145 |            80 |
|         149 | Eleni       | Zlotkey    | EZLOTKEY | 011.44.1344.429018 | 1987-08-05 | SA_MAN     | 10500.00 |           0.20 |        100 |            80 |
|         162 | Clara       | Vishney    | CVISHNEY | 011.44.1346.129268 | 1987-08-18 | SA_REP     | 10500.00 |           0.25 |        147 |            80 |
|         148 | Gerald      | Cambrault  | GCAMBRAU | 011.44.1344.619268 | 1987-08-04 | SA_MAN     | 11000.00 |           0.30 |        100 |            80 |
|         174 | Ellen       | Abel       | EABEL    | 011.44.1644.429267 | 1987-08-30 | SA_REP     | 11000.00 |           0.30 |        149 |            80 |
|         114 | Den         | Raphaely   | DRAPHEAL | 515.127.4561       | 1987-07-01 | PU_MAN     | 11000.00 |           0.00 |        100 |            30 |
|         168 | Lisa        | Ozer       | LOZER    | 011.44.1343.929268 | 1987-08-24 | SA_REP     | 11500.00 |           0.25 |        148 |            80 |
|         147 | Alberto     | Errazuriz  | AERRAZUR | 011.44.1344.429278 | 1987-08-03 | SA_MAN     | 12000.00 |           0.30 |        100 |            80 |
|         205 | Shelley     | Higgins    | SHIGGINS | 515.123.8080       | 1987-09-30 | AC_MGR     | 12000.00 |           0.00 |        101 |           110 |
|         108 | Nancy       | Greenberg  | NGREENBE | 515.124.4569       | 1987-06-25 | FI_MGR     | 12000.00 |           0.00 |        101 |           100 |
|         201 | Michael     | Hartstein  | MHARTSTE | 515.123.5555       | 1987-09-26 | MK_MAN     | 13000.00 |           0.00 |        100 |            20 |
|         146 | Karen       | Partners   | KPARTNER | 011.44.1344.467268 | 1987-08-02 | SA_MAN     | 13500.00 |           0.30 |        100 |            80 |
|         145 | John        | Russell    | JRUSSEL  | 011.44.1344.429268 | 1987-08-01 | SA_MAN     | 14000.00 |           0.40 |        100 |            80 |
|         102 | Lex         | De Haan    | LDEHAAN  | 515.123.4569       | 1987-06-19 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         101 | Neena       | Kochhar    | NKOCHHAR | 515.123.4568       | 1987-06-18 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         100 | Steven      | King       | SKING    | 515.123.4567       | 1987-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 |
+-------------+-------------+------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
61 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from employees where salary < any(select max(salary) from employees where job_id ='SH_CLERK')order by salary;
+-------------+------------+-------------+----------+--------------+------------+----------+---------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME   | EMAIL    | PHONE_NUMBER | HIRE_DATE  | JOB_ID   | SALARY  | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-------------+----------+--------------+------------+----------+---------+----------------+------------+---------------+
|         132 | TJ         | Olson       | TJOLSON  | 650.124.8234 | 1987-07-19 | ST_CLERK | 2100.00 |           0.00 |        121 |            50 |
|         136 | Hazel      | Philtanker  | HPHILTAN | 650.127.1634 | 1987-07-23 | ST_CLERK | 2200.00 |           0.00 |        122 |            50 |
|         128 | Steven     | Markle      | SMARKLE  | 650.124.1434 | 1987-07-15 | ST_CLERK | 2200.00 |           0.00 |        120 |            50 |
|         135 | Ki         | Gee         | KGEE     | 650.127.1734 | 1987-07-22 | ST_CLERK | 2400.00 |           0.00 |        122 |            50 |
|         127 | James      | Landry      | JLANDRY  | 650.124.1334 | 1987-07-14 | ST_CLERK | 2400.00 |           0.00 |        120 |            50 |
|         182 | Martha     | Sullivan    | MSULLIVA | 650.507.9878 | 1987-09-07 | SH_CLERK | 2500.00 |           0.00 |        120 |            50 |
|         131 | James      | Marlow      | JAMRLOW  | 650.124.7234 | 1987-07-18 | ST_CLERK | 2500.00 |           0.00 |        121 |            50 |
|         191 | Randall    | Perkins     | RPERKINS | 650.505.4876 | 1987-09-16 | SH_CLERK | 2500.00 |           0.00 |        122 |            50 |
|         119 | Karen      | Colmenares  | KCOLMENA | 515.127.4566 | 1987-07-06 | PU_CLERK | 2500.00 |           0.00 |        114 |            30 |
|         144 | Peter      | Vargas      | PVARGAS  | 650.121.2004 | 1987-07-31 | ST_CLERK | 2500.00 |           0.00 |        124 |            50 |
|         140 | Joshua     | Patel       | JPATEL   | 650.121.1834 | 1987-07-27 | ST_CLERK | 2500.00 |           0.00 |        123 |            50 |
|         199 | Douglas    | Grant       | DGRANT   | 650.507.9844 | 1987-09-24 | SH_CLERK | 2600.00 |           0.00 |        124 |            50 |
|         198 | Donald     | OConnell    | DOCONNEL | 650.507.9833 | 1987-09-23 | SH_CLERK | 2600.00 |           0.00 |        124 |            50 |
|         118 | Guy        | Himuro      | GHIMURO  | 515.127.4565 | 1987-07-05 | PU_CLERK | 2600.00 |           0.00 |        114 |            30 |
|         143 | Randall    | Matos       | RMATOS   | 650.121.2874 | 1987-07-30 | ST_CLERK | 2600.00 |           0.00 |        124 |            50 |
|         126 | Irene      | Mikkilineni | IMIKKILI | 650.124.1224 | 1987-07-13 | ST_CLERK | 2700.00 |           0.00 |        120 |            50 |
|         139 | John       | Seo         | JSEO     | 650.121.2019 | 1987-07-26 | ST_CLERK | 2700.00 |           0.00 |        123 |            50 |
|         130 | Mozhe      | Atkinson    | MATKINSO | 650.124.6234 | 1987-07-17 | ST_CLERK | 2800.00 |           0.00 |        121 |            50 |
|         195 | Vance      | Jones       | VJONES   | 650.501.4876 | 1987-09-20 | SH_CLERK | 2800.00 |           0.00 |        123 |            50 |
|         117 | Sigal      | Tobias      | STOBIAS  | 515.127.4564 | 1987-07-04 | PU_CLERK | 2800.00 |           0.00 |        114 |            30 |
|         183 | Girard     | Geoni       | GGEONI   | 650.507.9879 | 1987-09-08 | SH_CLERK | 2800.00 |           0.00 |        120 |            50 |
|         134 | Michael    | Rogers      | MROGERS  | 650.127.1834 | 1987-07-21 | ST_CLERK | 2900.00 |           0.00 |        122 |            50 |
|         190 | Timothy    | Gates       | TGATES   | 650.505.3876 | 1987-09-15 | SH_CLERK | 2900.00 |           0.00 |        122 |            50 |
|         116 | Shelli     | Baida       | SBAIDA   | 515.127.4563 | 1987-07-03 | PU_CLERK | 2900.00 |           0.00 |        114 |            30 |
|         197 | Kevin      | Feeney      | KFEENEY  | 650.507.9822 | 1987-09-22 | SH_CLERK | 3000.00 |           0.00 |        124 |            50 |
|         187 | Anthony    | Cabrio      | ACABRIO  | 650.509.4876 | 1987-09-12 | SH_CLERK | 3000.00 |           0.00 |        121 |            50 |
|         196 | Alana      | Walsh       | AWALSH   | 650.507.9811 | 1987-09-21 | SH_CLERK | 3100.00 |           0.00 |        124 |            50 |
|         181 | Jean       | Fleaur      | JFLEAUR  | 650.507.9877 | 1987-09-06 | SH_CLERK | 3100.00 |           0.00 |        120 |            50 |
|         115 | Alexander  | Khoo        | AKHOO    | 515.127.4562 | 1987-07-02 | PU_CLERK | 3100.00 |           0.00 |        114 |            30 |
|         142 | Curtis     | Davies      | CDAVIES  | 650.121.2994 | 1987-07-29 | ST_CLERK | 3100.00 |           0.00 |        124 |            50 |
|         138 | Stephen    | Stiles      | SSTILES  | 650.121.2034 | 1987-07-25 | ST_CLERK | 3200.00 |           0.00 |        123 |            50 |
|         125 | Julia      | Nayer       | JNAYER   | 650.124.1214 | 1987-07-12 | ST_CLERK | 3200.00 |           0.00 |        120 |            50 |
|         194 | Samuel     | McCain      | SMCCAIN  | 650.501.3876 | 1987-09-19 | SH_CLERK | 3200.00 |           0.00 |        123 |            50 |
|         180 | Winston    | Taylor      | WTAYLOR  | 650.507.9876 | 1987-09-05 | SH_CLERK | 3200.00 |           0.00 |        120 |            50 |
|         133 | Jason      | Mallin      | JMALLIN  | 650.127.1934 | 1987-07-20 | ST_CLERK | 3300.00 |           0.00 |        122 |            50 |
|         129 | Laura      | Bissot      | LBISSOT  | 650.124.5234 | 1987-07-16 | ST_CLERK | 3300.00 |           0.00 |        121 |            50 |
|         186 | Julia      | Dellinger   | JDELLING | 650.509.3876 | 1987-09-11 | SH_CLERK | 3400.00 |           0.00 |        121 |            50 |
|         141 | Trenna     | Rajs        | TRAJS    | 650.121.8009 | 1987-07-28 | ST_CLERK | 3500.00 |           0.00 |        124 |            50 |
|         137 | Renske     | Ladwig      | RLADWIG  | 650.121.1234 | 1987-07-24 | ST_CLERK | 3600.00 |           0.00 |        123 |            50 |
|         189 | Jennifer   | Dilly       | JDILLY   | 650.505.2876 | 1987-09-14 | SH_CLERK | 3600.00 |           0.00 |        122 |            50 |
|         188 | Kelly      | Chung       | KCHUNG   | 650.505.1876 | 1987-09-13 | SH_CLERK | 3800.00 |           0.00 |        122 |            50 |
|         193 | Britney    | Everett     | BEVERETT | 650.501.2876 | 1987-09-18 | SH_CLERK | 3900.00 |           0.00 |        123 |            50 |
|         192 | Sarah      | Bell        | SBELL    | 650.501.1876 | 1987-09-17 | SH_CLERK | 4000.00 |           0.00 |        123 |            50 |
|         185 | Alexis     | Bull        | ABULL    | 650.509.2876 | 1987-09-10 | SH_CLERK | 4100.00 |           0.00 |        121 |            50 |
+-------------+------------+-------------+----------+--------------+------------+----------+---------+----------------+------------+---------------+
44 rows in set (0.01 sec)

MariaDB [csd2204s18]> select * from employees where salary < any(select salary from employees where job_id ='SH_CLERK')order by salary;
+-------------+------------+-------------+----------+--------------+------------+----------+---------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME   | EMAIL    | PHONE_NUMBER | HIRE_DATE  | JOB_ID   | SALARY  | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-------------+----------+--------------+------------+----------+---------+----------------+------------+---------------+
|         132 | TJ         | Olson       | TJOLSON  | 650.124.8234 | 1987-07-19 | ST_CLERK | 2100.00 |           0.00 |        121 |            50 |
|         136 | Hazel      | Philtanker  | HPHILTAN | 650.127.1634 | 1987-07-23 | ST_CLERK | 2200.00 |           0.00 |        122 |            50 |
|         128 | Steven     | Markle      | SMARKLE  | 650.124.1434 | 1987-07-15 | ST_CLERK | 2200.00 |           0.00 |        120 |            50 |
|         135 | Ki         | Gee         | KGEE     | 650.127.1734 | 1987-07-22 | ST_CLERK | 2400.00 |           0.00 |        122 |            50 |
|         127 | James      | Landry      | JLANDRY  | 650.124.1334 | 1987-07-14 | ST_CLERK | 2400.00 |           0.00 |        120 |            50 |
|         182 | Martha     | Sullivan    | MSULLIVA | 650.507.9878 | 1987-09-07 | SH_CLERK | 2500.00 |           0.00 |        120 |            50 |
|         131 | James      | Marlow      | JAMRLOW  | 650.124.7234 | 1987-07-18 | ST_CLERK | 2500.00 |           0.00 |        121 |            50 |
|         191 | Randall    | Perkins     | RPERKINS | 650.505.4876 | 1987-09-16 | SH_CLERK | 2500.00 |           0.00 |        122 |            50 |
|         119 | Karen      | Colmenares  | KCOLMENA | 515.127.4566 | 1987-07-06 | PU_CLERK | 2500.00 |           0.00 |        114 |            30 |
|         144 | Peter      | Vargas      | PVARGAS  | 650.121.2004 | 1987-07-31 | ST_CLERK | 2500.00 |           0.00 |        124 |            50 |
|         140 | Joshua     | Patel       | JPATEL   | 650.121.1834 | 1987-07-27 | ST_CLERK | 2500.00 |           0.00 |        123 |            50 |
|         199 | Douglas    | Grant       | DGRANT   | 650.507.9844 | 1987-09-24 | SH_CLERK | 2600.00 |           0.00 |        124 |            50 |
|         198 | Donald     | OConnell    | DOCONNEL | 650.507.9833 | 1987-09-23 | SH_CLERK | 2600.00 |           0.00 |        124 |            50 |
|         118 | Guy        | Himuro      | GHIMURO  | 515.127.4565 | 1987-07-05 | PU_CLERK | 2600.00 |           0.00 |        114 |            30 |
|         143 | Randall    | Matos       | RMATOS   | 650.121.2874 | 1987-07-30 | ST_CLERK | 2600.00 |           0.00 |        124 |            50 |
|         126 | Irene      | Mikkilineni | IMIKKILI | 650.124.1224 | 1987-07-13 | ST_CLERK | 2700.00 |           0.00 |        120 |            50 |
|         139 | John       | Seo         | JSEO     | 650.121.2019 | 1987-07-26 | ST_CLERK | 2700.00 |           0.00 |        123 |            50 |
|         130 | Mozhe      | Atkinson    | MATKINSO | 650.124.6234 | 1987-07-17 | ST_CLERK | 2800.00 |           0.00 |        121 |            50 |
|         195 | Vance      | Jones       | VJONES   | 650.501.4876 | 1987-09-20 | SH_CLERK | 2800.00 |           0.00 |        123 |            50 |
|         117 | Sigal      | Tobias      | STOBIAS  | 515.127.4564 | 1987-07-04 | PU_CLERK | 2800.00 |           0.00 |        114 |            30 |
|         183 | Girard     | Geoni       | GGEONI   | 650.507.9879 | 1987-09-08 | SH_CLERK | 2800.00 |           0.00 |        120 |            50 |
|         134 | Michael    | Rogers      | MROGERS  | 650.127.1834 | 1987-07-21 | ST_CLERK | 2900.00 |           0.00 |        122 |            50 |
|         190 | Timothy    | Gates       | TGATES   | 650.505.3876 | 1987-09-15 | SH_CLERK | 2900.00 |           0.00 |        122 |            50 |
|         116 | Shelli     | Baida       | SBAIDA   | 515.127.4563 | 1987-07-03 | PU_CLERK | 2900.00 |           0.00 |        114 |            30 |
|         197 | Kevin      | Feeney      | KFEENEY  | 650.507.9822 | 1987-09-22 | SH_CLERK | 3000.00 |           0.00 |        124 |            50 |
|         187 | Anthony    | Cabrio      | ACABRIO  | 650.509.4876 | 1987-09-12 | SH_CLERK | 3000.00 |           0.00 |        121 |            50 |
|         196 | Alana      | Walsh       | AWALSH   | 650.507.9811 | 1987-09-21 | SH_CLERK | 3100.00 |           0.00 |        124 |            50 |
|         181 | Jean       | Fleaur      | JFLEAUR  | 650.507.9877 | 1987-09-06 | SH_CLERK | 3100.00 |           0.00 |        120 |            50 |
|         115 | Alexander  | Khoo        | AKHOO    | 515.127.4562 | 1987-07-02 | PU_CLERK | 3100.00 |           0.00 |        114 |            30 |
|         142 | Curtis     | Davies      | CDAVIES  | 650.121.2994 | 1987-07-29 | ST_CLERK | 3100.00 |           0.00 |        124 |            50 |
|         138 | Stephen    | Stiles      | SSTILES  | 650.121.2034 | 1987-07-25 | ST_CLERK | 3200.00 |           0.00 |        123 |            50 |
|         125 | Julia      | Nayer       | JNAYER   | 650.124.1214 | 1987-07-12 | ST_CLERK | 3200.00 |           0.00 |        120 |            50 |
|         194 | Samuel     | McCain      | SMCCAIN  | 650.501.3876 | 1987-09-19 | SH_CLERK | 3200.00 |           0.00 |        123 |            50 |
|         180 | Winston    | Taylor      | WTAYLOR  | 650.507.9876 | 1987-09-05 | SH_CLERK | 3200.00 |           0.00 |        120 |            50 |
|         133 | Jason      | Mallin      | JMALLIN  | 650.127.1934 | 1987-07-20 | ST_CLERK | 3300.00 |           0.00 |        122 |            50 |
|         129 | Laura      | Bissot      | LBISSOT  | 650.124.5234 | 1987-07-16 | ST_CLERK | 3300.00 |           0.00 |        121 |            50 |
|         186 | Julia      | Dellinger   | JDELLING | 650.509.3876 | 1987-09-11 | SH_CLERK | 3400.00 |           0.00 |        121 |            50 |
|         141 | Trenna     | Rajs        | TRAJS    | 650.121.8009 | 1987-07-28 | ST_CLERK | 3500.00 |           0.00 |        124 |            50 |
|         137 | Renske     | Ladwig      | RLADWIG  | 650.121.1234 | 1987-07-24 | ST_CLERK | 3600.00 |           0.00 |        123 |            50 |
|         189 | Jennifer   | Dilly       | JDILLY   | 650.505.2876 | 1987-09-14 | SH_CLERK | 3600.00 |           0.00 |        122 |            50 |
|         188 | Kelly      | Chung       | KCHUNG   | 650.505.1876 | 1987-09-13 | SH_CLERK | 3800.00 |           0.00 |        122 |            50 |
|         193 | Britney    | Everett     | BEVERETT | 650.501.2876 | 1987-09-18 | SH_CLERK | 3900.00 |           0.00 |        123 |            50 |
|         192 | Sarah      | Bell        | SBELL    | 650.501.1876 | 1987-09-17 | SH_CLERK | 4000.00 |           0.00 |        123 |            50 |
|         185 | Alexis     | Bull        | ABULL    | 650.509.2876 | 1987-09-10 | SH_CLERK | 4100.00 |           0.00 |        121 |            50 |
+-------------+------------+-------------+----------+--------------+------------+----------+---------+----------------+------------+---------------+
44 rows in set (0.00 sec)

MariaDB [csd2204s18]> select distinct(manager_id) from employees where manager_id!=0;
+------------+
| manager_id |
+------------+
|        100 |
|        101 |
|        102 |
|        103 |
|        108 |
|        114 |
|        120 |
|        121 |
|        122 |
|        123 |
|        124 |
|        145 |
|        146 |
|        147 |
|        148 |
|        149 |
|        201 |
|        205 |
+------------+
18 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from employees where employee_id not in (select distinct(manager_id) from employees where manager_id!=0);
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
|         104 | Bruce       | Ernst       | BERNST   | 590.423.4568       | 1987-06-21 | IT_PROG    |  6000.00 |           0.00 |        103 |            60 |
|         105 | David       | Austin      | DAUSTIN  | 590.423.4569       | 1987-06-22 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         106 | Valli       | Pataballa   | VPATABAL | 590.423.4560       | 1987-06-23 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         107 | Diana       | Lorentz     | DLORENTZ | 590.423.5567       | 1987-06-24 | IT_PROG    |  4200.00 |           0.00 |        103 |            60 |
|         109 | Daniel      | Faviet      | DFAVIET  | 515.124.4169       | 1987-06-26 | FI_ACCOUNT |  9000.00 |           0.00 |        108 |           100 |
|         110 | John        | Chen        | JCHEN    | 515.124.4269       | 1987-06-27 | FI_ACCOUNT |  8200.00 |           0.00 |        108 |           100 |
|         111 | Ismael      | Sciarra     | ISCIARRA | 515.124.4369       | 1987-06-28 | FI_ACCOUNT |  7700.00 |           0.00 |        108 |           100 |
|         112 | Jose Manuel | Urman       | JMURMAN  | 515.124.4469       | 1987-06-29 | FI_ACCOUNT |  7800.00 |           0.00 |        108 |           100 |
|         113 | Luis        | Popp        | LPOPP    | 515.124.4567       | 1987-06-30 | FI_ACCOUNT |  6900.00 |           0.00 |        108 |           100 |
|         115 | Alexander   | Khoo        | AKHOO    | 515.127.4562       | 1987-07-02 | PU_CLERK   |  3100.00 |           0.00 |        114 |            30 |
|         116 | Shelli      | Baida       | SBAIDA   | 515.127.4563       | 1987-07-03 | PU_CLERK   |  2900.00 |           0.00 |        114 |            30 |
|         117 | Sigal       | Tobias      | STOBIAS  | 515.127.4564       | 1987-07-04 | PU_CLERK   |  2800.00 |           0.00 |        114 |            30 |
|         118 | Guy         | Himuro      | GHIMURO  | 515.127.4565       | 1987-07-05 | PU_CLERK   |  2600.00 |           0.00 |        114 |            30 |
|         119 | Karen       | Colmenares  | KCOLMENA | 515.127.4566       | 1987-07-06 | PU_CLERK   |  2500.00 |           0.00 |        114 |            30 |
|         125 | Julia       | Nayer       | JNAYER   | 650.124.1214       | 1987-07-12 | ST_CLERK   |  3200.00 |           0.00 |        120 |            50 |
|         126 | Irene       | Mikkilineni | IMIKKILI | 650.124.1224       | 1987-07-13 | ST_CLERK   |  2700.00 |           0.00 |        120 |            50 |
|         127 | James       | Landry      | JLANDRY  | 650.124.1334       | 1987-07-14 | ST_CLERK   |  2400.00 |           0.00 |        120 |            50 |
|         128 | Steven      | Markle      | SMARKLE  | 650.124.1434       | 1987-07-15 | ST_CLERK   |  2200.00 |           0.00 |        120 |            50 |
|         129 | Laura       | Bissot      | LBISSOT  | 650.124.5234       | 1987-07-16 | ST_CLERK   |  3300.00 |           0.00 |        121 |            50 |
|         130 | Mozhe       | Atkinson    | MATKINSO | 650.124.6234       | 1987-07-17 | ST_CLERK   |  2800.00 |           0.00 |        121 |            50 |
|         131 | James       | Marlow      | JAMRLOW  | 650.124.7234       | 1987-07-18 | ST_CLERK   |  2500.00 |           0.00 |        121 |            50 |
|         132 | TJ          | Olson       | TJOLSON  | 650.124.8234       | 1987-07-19 | ST_CLERK   |  2100.00 |           0.00 |        121 |            50 |
|         133 | Jason       | Mallin      | JMALLIN  | 650.127.1934       | 1987-07-20 | ST_CLERK   |  3300.00 |           0.00 |        122 |            50 |
|         134 | Michael     | Rogers      | MROGERS  | 650.127.1834       | 1987-07-21 | ST_CLERK   |  2900.00 |           0.00 |        122 |            50 |
|         135 | Ki          | Gee         | KGEE     | 650.127.1734       | 1987-07-22 | ST_CLERK   |  2400.00 |           0.00 |        122 |            50 |
|         136 | Hazel       | Philtanker  | HPHILTAN | 650.127.1634       | 1987-07-23 | ST_CLERK   |  2200.00 |           0.00 |        122 |            50 |
|         137 | Renske      | Ladwig      | RLADWIG  | 650.121.1234       | 1987-07-24 | ST_CLERK   |  3600.00 |           0.00 |        123 |            50 |
|         138 | Stephen     | Stiles      | SSTILES  | 650.121.2034       | 1987-07-25 | ST_CLERK   |  3200.00 |           0.00 |        123 |            50 |
|         139 | John        | Seo         | JSEO     | 650.121.2019       | 1987-07-26 | ST_CLERK   |  2700.00 |           0.00 |        123 |            50 |
|         140 | Joshua      | Patel       | JPATEL   | 650.121.1834       | 1987-07-27 | ST_CLERK   |  2500.00 |           0.00 |        123 |            50 |
|         141 | Trenna      | Rajs        | TRAJS    | 650.121.8009       | 1987-07-28 | ST_CLERK   |  3500.00 |           0.00 |        124 |            50 |
|         142 | Curtis      | Davies      | CDAVIES  | 650.121.2994       | 1987-07-29 | ST_CLERK   |  3100.00 |           0.00 |        124 |            50 |
|         143 | Randall     | Matos       | RMATOS   | 650.121.2874       | 1987-07-30 | ST_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         144 | Peter       | Vargas      | PVARGAS  | 650.121.2004       | 1987-07-31 | ST_CLERK   |  2500.00 |           0.00 |        124 |            50 |
|         150 | Peter       | Tucker      | PTUCKER  | 011.44.1344.129268 | 1987-08-06 | SA_REP     | 10000.00 |           0.30 |        145 |            80 |
|         151 | David       | Bernstein   | DBERNSTE | 011.44.1344.345268 | 1987-08-07 | SA_REP     |  9500.00 |           0.25 |        145 |            80 |
|         152 | Peter       | Hall        | PHALL    | 011.44.1344.478968 | 1987-08-08 | SA_REP     |  9000.00 |           0.25 |        145 |            80 |
|         153 | Christopher | Olsen       | COLSEN   | 011.44.1344.498718 | 1987-08-09 | SA_REP     |  8000.00 |           0.20 |        145 |            80 |
|         154 | Nanette     | Cambrault   | NCAMBRAU | 011.44.1344.987668 | 1987-08-10 | SA_REP     |  7500.00 |           0.20 |        145 |            80 |
|         155 | Oliver      | Tuvault     | OTUVAULT | 011.44.1344.486508 | 1987-08-11 | SA_REP     |  7000.00 |           0.15 |        145 |            80 |
|         156 | Janette     | King        | JKING    | 011.44.1345.429268 | 1987-08-12 | SA_REP     | 10000.00 |           0.35 |        146 |            80 |
|         157 | Patrick     | Sully       | PSULLY   | 011.44.1345.929268 | 1987-08-13 | SA_REP     |  9500.00 |           0.35 |        146 |            80 |
|         158 | Allan       | McEwen      | AMCEWEN  | 011.44.1345.829268 | 1987-08-14 | SA_REP     |  9000.00 |           0.35 |        146 |            80 |
|         159 | Lindsey     | Smith       | LSMITH   | 011.44.1345.729268 | 1987-08-15 | SA_REP     |  8000.00 |           0.30 |        146 |            80 |
|         160 | Louise      | Doran       | LDORAN   | 011.44.1345.629268 | 1987-08-16 | SA_REP     |  7500.00 |           0.30 |        146 |            80 |
|         161 | Sarath      | Sewall      | SSEWALL  | 011.44.1345.529268 | 1987-08-17 | SA_REP     |  7000.00 |           0.25 |        146 |            80 |
|         162 | Clara       | Vishney     | CVISHNEY | 011.44.1346.129268 | 1987-08-18 | SA_REP     | 10500.00 |           0.25 |        147 |            80 |
|         163 | Danielle    | Greene      | DGREENE  | 011.44.1346.229268 | 1987-08-19 | SA_REP     |  9500.00 |           0.15 |        147 |            80 |
|         164 | Mattea      | Marvins     | MMARVINS | 011.44.1346.329268 | 1987-08-20 | SA_REP     |  7200.00 |           0.10 |        147 |            80 |
|         165 | David       | Lee         | DLEE     | 011.44.1346.529268 | 1987-08-21 | SA_REP     |  6800.00 |           0.10 |        147 |            80 |
|         166 | Sundar      | Ande        | SANDE    | 011.44.1346.629268 | 1987-08-22 | SA_REP     |  6400.00 |           0.10 |        147 |            80 |
|         167 | Amit        | Banda       | ABANDA   | 011.44.1346.729268 | 1987-08-23 | SA_REP     |  6200.00 |           0.10 |        147 |            80 |
|         168 | Lisa        | Ozer        | LOZER    | 011.44.1343.929268 | 1987-08-24 | SA_REP     | 11500.00 |           0.25 |        148 |            80 |
|         169 | Harrison    | Bloom       | HBLOOM   | 011.44.1343.829268 | 1987-08-25 | SA_REP     | 10000.00 |           0.20 |        148 |            80 |
|         170 | Tayler      | Fox         | TFOX     | 011.44.1343.729268 | 1987-08-26 | SA_REP     |  9600.00 |           0.20 |        148 |            80 |
|         171 | William     | Smith       | WSMITH   | 011.44.1343.629268 | 1987-08-27 | SA_REP     |  7400.00 |           0.15 |        148 |            80 |
|         172 | Elizabeth   | Bates       | EBATES   | 011.44.1343.529268 | 1987-08-28 | SA_REP     |  7300.00 |           0.15 |        148 |            80 |
|         173 | Sundita     | Kumar       | SKUMAR   | 011.44.1343.329268 | 1987-08-29 | SA_REP     |  6100.00 |           0.10 |        148 |            80 |
|         174 | Ellen       | Abel        | EABEL    | 011.44.1644.429267 | 1987-08-30 | SA_REP     | 11000.00 |           0.30 |        149 |            80 |
|         175 | Alyssa      | Hutton      | AHUTTON  | 011.44.1644.429266 | 1987-08-31 | SA_REP     |  8800.00 |           0.25 |        149 |            80 |
|         176 | Jonathon    | Taylor      | JTAYLOR  | 011.44.1644.429265 | 1987-09-01 | SA_REP     |  8600.00 |           0.20 |        149 |            80 |
|         177 | Jack        | Livingston  | JLIVINGS | 011.44.1644.429264 | 1987-09-02 | SA_REP     |  8400.00 |           0.20 |        149 |            80 |
|         178 | Kimberely   | Grant       | KGRANT   | 011.44.1644.429263 | 1987-09-03 | SA_REP     |  7000.00 |           0.15 |        149 |             0 |
|         179 | Charles     | Johnson     | CJOHNSON | 011.44.1644.429262 | 1987-09-04 | SA_REP     |  6200.00 |           0.10 |        149 |            80 |
|         180 | Winston     | Taylor      | WTAYLOR  | 650.507.9876       | 1987-09-05 | SH_CLERK   |  3200.00 |           0.00 |        120 |            50 |
|         181 | Jean        | Fleaur      | JFLEAUR  | 650.507.9877       | 1987-09-06 | SH_CLERK   |  3100.00 |           0.00 |        120 |            50 |
|         182 | Martha      | Sullivan    | MSULLIVA | 650.507.9878       | 1987-09-07 | SH_CLERK   |  2500.00 |           0.00 |        120 |            50 |
|         183 | Girard      | Geoni       | GGEONI   | 650.507.9879       | 1987-09-08 | SH_CLERK   |  2800.00 |           0.00 |        120 |            50 |
|         184 | Nandita     | Sarchand    | NSARCHAN | 650.509.1876       | 1987-09-09 | SH_CLERK   |  4200.00 |           0.00 |        121 |            50 |
|         185 | Alexis      | Bull        | ABULL    | 650.509.2876       | 1987-09-10 | SH_CLERK   |  4100.00 |           0.00 |        121 |            50 |
|         186 | Julia       | Dellinger   | JDELLING | 650.509.3876       | 1987-09-11 | SH_CLERK   |  3400.00 |           0.00 |        121 |            50 |
|         187 | Anthony     | Cabrio      | ACABRIO  | 650.509.4876       | 1987-09-12 | SH_CLERK   |  3000.00 |           0.00 |        121 |            50 |
|         188 | Kelly       | Chung       | KCHUNG   | 650.505.1876       | 1987-09-13 | SH_CLERK   |  3800.00 |           0.00 |        122 |            50 |
|         189 | Jennifer    | Dilly       | JDILLY   | 650.505.2876       | 1987-09-14 | SH_CLERK   |  3600.00 |           0.00 |        122 |            50 |
|         190 | Timothy     | Gates       | TGATES   | 650.505.3876       | 1987-09-15 | SH_CLERK   |  2900.00 |           0.00 |        122 |            50 |
|         191 | Randall     | Perkins     | RPERKINS | 650.505.4876       | 1987-09-16 | SH_CLERK   |  2500.00 |           0.00 |        122 |            50 |
|         192 | Sarah       | Bell        | SBELL    | 650.501.1876       | 1987-09-17 | SH_CLERK   |  4000.00 |           0.00 |        123 |            50 |
|         193 | Britney     | Everett     | BEVERETT | 650.501.2876       | 1987-09-18 | SH_CLERK   |  3900.00 |           0.00 |        123 |            50 |
|         194 | Samuel      | McCain      | SMCCAIN  | 650.501.3876       | 1987-09-19 | SH_CLERK   |  3200.00 |           0.00 |        123 |            50 |
|         195 | Vance       | Jones       | VJONES   | 650.501.4876       | 1987-09-20 | SH_CLERK   |  2800.00 |           0.00 |        123 |            50 |
|         196 | Alana       | Walsh       | AWALSH   | 650.507.9811       | 1987-09-21 | SH_CLERK   |  3100.00 |           0.00 |        124 |            50 |
|         197 | Kevin       | Feeney      | KFEENEY  | 650.507.9822       | 1987-09-22 | SH_CLERK   |  3000.00 |           0.00 |        124 |            50 |
|         198 | Donald      | OConnell    | DOCONNEL | 650.507.9833       | 1987-09-23 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         199 | Douglas     | Grant       | DGRANT   | 650.507.9844       | 1987-09-24 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         200 | Jennifer    | Whalen      | JWHALEN  | 515.123.4444       | 1987-09-25 | AD_ASST    |  4400.00 |           0.00 |        101 |            10 |
|         202 | Pat         | Fay         | PFAY     | 603.123.6666       | 1987-09-27 | MK_REP     |  6000.00 |           0.00 |        201 |            20 |
|         203 | Susan       | Mavris      | SMAVRIS  | 515.123.7777       | 1987-09-28 | HR_REP     |  6500.00 |           0.00 |        101 |            40 |
|         204 | Hermann     | Baer        | HBAER    | 515.123.8888       | 1987-09-29 | PR_REP     | 10000.00 |           0.00 |        101 |            70 |
|         206 | William     | Gietz       | WGIETZ   | 515.123.8181       | 1987-10-01 | AC_ACCOUNT |  8300.00 |           0.00 |        205 |           110 |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
89 rows in set (0.02 sec)

MariaDB [csd2204s18]> select b.first_name,b.last_name from employees b where not exists (select 'x' from employees a where a.manager_id = b.manager_id);
Empty set (0.00 sec)

MariaDB [csd2204s18]> select b.first_name,b.last_name from employees b where not exists (select 'x' from employees a where a.manager_id = b.employee_id);
+-------------+-------------+
| first_name  | last_name   |
+-------------+-------------+
| Bruce       | Ernst       |
| David       | Austin      |
| Valli       | Pataballa   |
| Diana       | Lorentz     |
| Daniel      | Faviet      |
| John        | Chen        |
| Ismael      | Sciarra     |
| Jose Manuel | Urman       |
| Luis        | Popp        |
| Alexander   | Khoo        |
| Shelli      | Baida       |
| Sigal       | Tobias      |
| Guy         | Himuro      |
| Karen       | Colmenares  |
| Julia       | Nayer       |
| Irene       | Mikkilineni |
| James       | Landry      |
| Steven      | Markle      |
| Laura       | Bissot      |
| Mozhe       | Atkinson    |
| James       | Marlow      |
| TJ          | Olson       |
| Jason       | Mallin      |
| Michael     | Rogers      |
| Ki          | Gee         |
| Hazel       | Philtanker  |
| Renske      | Ladwig      |
| Stephen     | Stiles      |
| John        | Seo         |
| Joshua      | Patel       |
| Trenna      | Rajs        |
| Curtis      | Davies      |
| Randall     | Matos       |
| Peter       | Vargas      |
| Peter       | Tucker      |
| David       | Bernstein   |
| Peter       | Hall        |
| Christopher | Olsen       |
| Nanette     | Cambrault   |
| Oliver      | Tuvault     |
| Janette     | King        |
| Patrick     | Sully       |
| Allan       | McEwen      |
| Lindsey     | Smith       |
| Louise      | Doran       |
| Sarath      | Sewall      |
| Clara       | Vishney     |
| Danielle    | Greene      |
| Mattea      | Marvins     |
| David       | Lee         |
| Sundar      | Ande        |
| Amit        | Banda       |
| Lisa        | Ozer        |
| Harrison    | Bloom       |
| Tayler      | Fox         |
| William     | Smith       |
| Elizabeth   | Bates       |
| Sundita     | Kumar       |
| Ellen       | Abel        |
| Alyssa      | Hutton      |
| Jonathon    | Taylor      |
| Jack        | Livingston  |
| Kimberely   | Grant       |
| Charles     | Johnson     |
| Winston     | Taylor      |
| Jean        | Fleaur      |
| Martha      | Sullivan    |
| Girard      | Geoni       |
| Nandita     | Sarchand    |
| Alexis      | Bull        |
| Julia       | Dellinger   |
| Anthony     | Cabrio      |
| Kelly       | Chung       |
| Jennifer    | Dilly       |
| Timothy     | Gates       |
| Randall     | Perkins     |
| Sarah       | Bell        |
| Britney     | Everett     |
| Samuel      | McCain      |
| Vance       | Jones       |
| Alana       | Walsh       |
| Kevin       | Feeney      |
| Donald      | OConnell    |
| Douglas     | Grant       |
| Jennifer    | Whalen      |
| Pat         | Fay         |
| Susan       | Mavris      |
| Hermann     | Baer        |
| William     | Gietz       |
+-------------+-------------+
89 rows in set (0.00 sec)

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
+----------------------+
16 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc departments;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| DEPARTMENT_ID   | decimal(4,0) | NO   | PRI | 0       |       |
| DEPARTMENT_NAME | varchar(30)  | NO   |     | NULL    |       |
| MANAGER_ID      | decimal(6,0) | YES  | MUL | NULL    |       |
| LOCATION_ID     | decimal(4,0) | YES  | MUL | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
4 rows in set (0.03 sec)

MariaDB [csd2204s18]> select a.first_name,a.last_name,a.employee_id from employee a where exists (select department_name from departments);
ERROR 1146 (42S02): Table 'csd2204s18.employee' doesn't exist
MariaDB [csd2204s18]> select a.first_name,a.last_name,a.employee_id from employees a where exists (select department_name from departments);
+-------------+-------------+-------------+
| first_name  | last_name   | employee_id |
+-------------+-------------+-------------+
| Steven      | King        |         100 |
| Neena       | Kochhar     |         101 |
| Lex         | De Haan     |         102 |
| Alexander   | Hunold      |         103 |
| Bruce       | Ernst       |         104 |
| David       | Austin      |         105 |
| Valli       | Pataballa   |         106 |
| Diana       | Lorentz     |         107 |
| Nancy       | Greenberg   |         108 |
| Daniel      | Faviet      |         109 |
| John        | Chen        |         110 |
| Ismael      | Sciarra     |         111 |
| Jose Manuel | Urman       |         112 |
| Luis        | Popp        |         113 |
| Den         | Raphaely    |         114 |
| Alexander   | Khoo        |         115 |
| Shelli      | Baida       |         116 |
| Sigal       | Tobias      |         117 |
| Guy         | Himuro      |         118 |
| Karen       | Colmenares  |         119 |
| Matthew     | Weiss       |         120 |
| Adam        | Fripp       |         121 |
| Payam       | Kaufling    |         122 |
| Shanta      | Vollman     |         123 |
| Kevin       | Mourgos     |         124 |
| Julia       | Nayer       |         125 |
| Irene       | Mikkilineni |         126 |
| James       | Landry      |         127 |
| Steven      | Markle      |         128 |
| Laura       | Bissot      |         129 |
| Mozhe       | Atkinson    |         130 |
| James       | Marlow      |         131 |
| TJ          | Olson       |         132 |
| Jason       | Mallin      |         133 |
| Michael     | Rogers      |         134 |
| Ki          | Gee         |         135 |
| Hazel       | Philtanker  |         136 |
| Renske      | Ladwig      |         137 |
| Stephen     | Stiles      |         138 |
| John        | Seo         |         139 |
| Joshua      | Patel       |         140 |
| Trenna      | Rajs        |         141 |
| Curtis      | Davies      |         142 |
| Randall     | Matos       |         143 |
| Peter       | Vargas      |         144 |
| John        | Russell     |         145 |
| Karen       | Partners    |         146 |
| Alberto     | Errazuriz   |         147 |
| Gerald      | Cambrault   |         148 |
| Eleni       | Zlotkey     |         149 |
| Peter       | Tucker      |         150 |
| David       | Bernstein   |         151 |
| Peter       | Hall        |         152 |
| Christopher | Olsen       |         153 |
| Nanette     | Cambrault   |         154 |
| Oliver      | Tuvault     |         155 |
| Janette     | King        |         156 |
| Patrick     | Sully       |         157 |
| Allan       | McEwen      |         158 |
| Lindsey     | Smith       |         159 |
| Louise      | Doran       |         160 |
| Sarath      | Sewall      |         161 |
| Clara       | Vishney     |         162 |
| Danielle    | Greene      |         163 |
| Mattea      | Marvins     |         164 |
| David       | Lee         |         165 |
| Sundar      | Ande        |         166 |
| Amit        | Banda       |         167 |
| Lisa        | Ozer        |         168 |
| Harrison    | Bloom       |         169 |
| Tayler      | Fox         |         170 |
| William     | Smith       |         171 |
| Elizabeth   | Bates       |         172 |
| Sundita     | Kumar       |         173 |
| Ellen       | Abel        |         174 |
| Alyssa      | Hutton      |         175 |
| Jonathon    | Taylor      |         176 |
| Jack        | Livingston  |         177 |
| Kimberely   | Grant       |         178 |
| Charles     | Johnson     |         179 |
| Winston     | Taylor      |         180 |
| Jean        | Fleaur      |         181 |
| Martha      | Sullivan    |         182 |
| Girard      | Geoni       |         183 |
| Nandita     | Sarchand    |         184 |
| Alexis      | Bull        |         185 |
| Julia       | Dellinger   |         186 |
| Anthony     | Cabrio      |         187 |
| Kelly       | Chung       |         188 |
| Jennifer    | Dilly       |         189 |
| Timothy     | Gates       |         190 |
| Randall     | Perkins     |         191 |
| Sarah       | Bell        |         192 |
| Britney     | Everett     |         193 |
| Samuel      | McCain      |         194 |
| Vance       | Jones       |         195 |
| Alana       | Walsh       |         196 |
| Kevin       | Feeney      |         197 |
| Donald      | OConnell    |         198 |
| Douglas     | Grant       |         199 |
| Jennifer    | Whalen      |         200 |
| Michael     | Hartstein   |         201 |
| Pat         | Fay         |         202 |
| Susan       | Mavris      |         203 |
| Hermann     | Baer        |         204 |
| Shelley     | Higgins     |         205 |
| William     | Gietz       |         206 |
+-------------+-------------+-------------+
107 rows in set (0.00 sec)

MariaDB [csd2204s18]> select a.first_name,a.last_name,a.employee_id from employees a where exists (select 'b'from departments where b.department_name = d_employees);
ERROR 1054 (42S22): Unknown column 'b.department_name' in 'where clause'
MariaDB [csd2204s18]> select a.first_name,a.last_name,a.employee_id from employees a where exists (select 'b'from departments where d.department_name = b_department_id);
ERROR 1054 (42S22): Unknown column 'd.department_name' in 'where clause'
MariaDB [csd2204s18]> select a.first_name,a.last_name,a.employee_id from employees a where exists (select 'b' from departments where d.department_name = b.department_id);
ERROR 1054 (42S22): Unknown column 'd.department_name' in 'where clause'
MariaDB [csd2204s18]> select a.first_name,a.last_name,a.employee_id from employees a where (select 'b' from departments where d.department_name = b.department_id);
ERROR 1054 (42S22): Unknown column 'd.department_name' in 'where clause'
MariaDB [csd2204s18]> select first_name,last_name,employee_id, (select department_name from departments where department.department_id = employee.department_id) from employees;
ERROR 1054 (42S22): Unknown column 'department.department_id' in 'where clause'
MariaDB [csd2204s18]> select first_name,last_name,employee_id, (select department_name from departments d where d.department_id = e.department_id)"dept_name" from employees e;
+-------------+-------------+-------------+------------------+
| first_name  | last_name   | employee_id | dept_name        |
+-------------+-------------+-------------+------------------+
| Steven      | King        |         100 | Executive        |
| Neena       | Kochhar     |         101 | Executive        |
| Lex         | De Haan     |         102 | Executive        |
| Alexander   | Hunold      |         103 | IT               |
| Bruce       | Ernst       |         104 | IT               |
| David       | Austin      |         105 | IT               |
| Valli       | Pataballa   |         106 | IT               |
| Diana       | Lorentz     |         107 | IT               |
| Nancy       | Greenberg   |         108 | Finance          |
| Daniel      | Faviet      |         109 | Finance          |
| John        | Chen        |         110 | Finance          |
| Ismael      | Sciarra     |         111 | Finance          |
| Jose Manuel | Urman       |         112 | Finance          |
| Luis        | Popp        |         113 | Finance          |
| Den         | Raphaely    |         114 | Purchasing       |
| Alexander   | Khoo        |         115 | Purchasing       |
| Shelli      | Baida       |         116 | Purchasing       |
| Sigal       | Tobias      |         117 | Purchasing       |
| Guy         | Himuro      |         118 | Purchasing       |
| Karen       | Colmenares  |         119 | Purchasing       |
| Matthew     | Weiss       |         120 | Shipping         |
| Adam        | Fripp       |         121 | Shipping         |
| Payam       | Kaufling    |         122 | Shipping         |
| Shanta      | Vollman     |         123 | Shipping         |
| Kevin       | Mourgos     |         124 | Shipping         |
| Julia       | Nayer       |         125 | Shipping         |
| Irene       | Mikkilineni |         126 | Shipping         |
| James       | Landry      |         127 | Shipping         |
| Steven      | Markle      |         128 | Shipping         |
| Laura       | Bissot      |         129 | Shipping         |
| Mozhe       | Atkinson    |         130 | Shipping         |
| James       | Marlow      |         131 | Shipping         |
| TJ          | Olson       |         132 | Shipping         |
| Jason       | Mallin      |         133 | Shipping         |
| Michael     | Rogers      |         134 | Shipping         |
| Ki          | Gee         |         135 | Shipping         |
| Hazel       | Philtanker  |         136 | Shipping         |
| Renske      | Ladwig      |         137 | Shipping         |
| Stephen     | Stiles      |         138 | Shipping         |
| John        | Seo         |         139 | Shipping         |
| Joshua      | Patel       |         140 | Shipping         |
| Trenna      | Rajs        |         141 | Shipping         |
| Curtis      | Davies      |         142 | Shipping         |
| Randall     | Matos       |         143 | Shipping         |
| Peter       | Vargas      |         144 | Shipping         |
| John        | Russell     |         145 | Sales            |
| Karen       | Partners    |         146 | Sales            |
| Alberto     | Errazuriz   |         147 | Sales            |
| Gerald      | Cambrault   |         148 | Sales            |
| Eleni       | Zlotkey     |         149 | Sales            |
| Peter       | Tucker      |         150 | Sales            |
| David       | Bernstein   |         151 | Sales            |
| Peter       | Hall        |         152 | Sales            |
| Christopher | Olsen       |         153 | Sales            |
| Nanette     | Cambrault   |         154 | Sales            |
| Oliver      | Tuvault     |         155 | Sales            |
| Janette     | King        |         156 | Sales            |
| Patrick     | Sully       |         157 | Sales            |
| Allan       | McEwen      |         158 | Sales            |
| Lindsey     | Smith       |         159 | Sales            |
| Louise      | Doran       |         160 | Sales            |
| Sarath      | Sewall      |         161 | Sales            |
| Clara       | Vishney     |         162 | Sales            |
| Danielle    | Greene      |         163 | Sales            |
| Mattea      | Marvins     |         164 | Sales            |
| David       | Lee         |         165 | Sales            |
| Sundar      | Ande        |         166 | Sales            |
| Amit        | Banda       |         167 | Sales            |
| Lisa        | Ozer        |         168 | Sales            |
| Harrison    | Bloom       |         169 | Sales            |
| Tayler      | Fox         |         170 | Sales            |
| William     | Smith       |         171 | Sales            |
| Elizabeth   | Bates       |         172 | Sales            |
| Sundita     | Kumar       |         173 | Sales            |
| Ellen       | Abel        |         174 | Sales            |
| Alyssa      | Hutton      |         175 | Sales            |
| Jonathon    | Taylor      |         176 | Sales            |
| Jack        | Livingston  |         177 | Sales            |
| Kimberely   | Grant       |         178 | NULL             |
| Charles     | Johnson     |         179 | Sales            |
| Winston     | Taylor      |         180 | Shipping         |
| Jean        | Fleaur      |         181 | Shipping         |
| Martha      | Sullivan    |         182 | Shipping         |
| Girard      | Geoni       |         183 | Shipping         |
| Nandita     | Sarchand    |         184 | Shipping         |
| Alexis      | Bull        |         185 | Shipping         |
| Julia       | Dellinger   |         186 | Shipping         |
| Anthony     | Cabrio      |         187 | Shipping         |
| Kelly       | Chung       |         188 | Shipping         |
| Jennifer    | Dilly       |         189 | Shipping         |
| Timothy     | Gates       |         190 | Shipping         |
| Randall     | Perkins     |         191 | Shipping         |
| Sarah       | Bell        |         192 | Shipping         |
| Britney     | Everett     |         193 | Shipping         |
| Samuel      | McCain      |         194 | Shipping         |
| Vance       | Jones       |         195 | Shipping         |
| Alana       | Walsh       |         196 | Shipping         |
| Kevin       | Feeney      |         197 | Shipping         |
| Donald      | OConnell    |         198 | Shipping         |
| Douglas     | Grant       |         199 | Shipping         |
| Jennifer    | Whalen      |         200 | Administration   |
| Michael     | Hartstein   |         201 | Marketing        |
| Pat         | Fay         |         202 | Marketing        |
| Susan       | Mavris      |         203 | Human Resources  |
| Hermann     | Baer        |         204 | Public Relations |
| Shelley     | Higgins     |         205 | Accounting       |
| William     | Gietz       |         206 | Accounting       |
+-------------+-------------+-------------+------------------+
107 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name,last_name,employee_id , salary from employees;
+-------------+-------------+-------------+----------+
| first_name  | last_name   | employee_id | salary   |
+-------------+-------------+-------------+----------+
| Steven      | King        |         100 | 24000.00 |
| Neena       | Kochhar     |         101 | 17000.00 |
| Lex         | De Haan     |         102 | 17000.00 |
| Alexander   | Hunold      |         103 |  9000.00 |
| Bruce       | Ernst       |         104 |  6000.00 |
| David       | Austin      |         105 |  4800.00 |
| Valli       | Pataballa   |         106 |  4800.00 |
| Diana       | Lorentz     |         107 |  4200.00 |
| Nancy       | Greenberg   |         108 | 12000.00 |
| Daniel      | Faviet      |         109 |  9000.00 |
| John        | Chen        |         110 |  8200.00 |
| Ismael      | Sciarra     |         111 |  7700.00 |
| Jose Manuel | Urman       |         112 |  7800.00 |
| Luis        | Popp        |         113 |  6900.00 |
| Den         | Raphaely    |         114 | 11000.00 |
| Alexander   | Khoo        |         115 |  3100.00 |
| Shelli      | Baida       |         116 |  2900.00 |
| Sigal       | Tobias      |         117 |  2800.00 |
| Guy         | Himuro      |         118 |  2600.00 |
| Karen       | Colmenares  |         119 |  2500.00 |
| Matthew     | Weiss       |         120 |  8000.00 |
| Adam        | Fripp       |         121 |  8200.00 |
| Payam       | Kaufling    |         122 |  7900.00 |
| Shanta      | Vollman     |         123 |  6500.00 |
| Kevin       | Mourgos     |         124 |  5800.00 |
| Julia       | Nayer       |         125 |  3200.00 |
| Irene       | Mikkilineni |         126 |  2700.00 |
| James       | Landry      |         127 |  2400.00 |
| Steven      | Markle      |         128 |  2200.00 |
| Laura       | Bissot      |         129 |  3300.00 |
| Mozhe       | Atkinson    |         130 |  2800.00 |
| James       | Marlow      |         131 |  2500.00 |
| TJ          | Olson       |         132 |  2100.00 |
| Jason       | Mallin      |         133 |  3300.00 |
| Michael     | Rogers      |         134 |  2900.00 |
| Ki          | Gee         |         135 |  2400.00 |
| Hazel       | Philtanker  |         136 |  2200.00 |
| Renske      | Ladwig      |         137 |  3600.00 |
| Stephen     | Stiles      |         138 |  3200.00 |
| John        | Seo         |         139 |  2700.00 |
| Joshua      | Patel       |         140 |  2500.00 |
| Trenna      | Rajs        |         141 |  3500.00 |
| Curtis      | Davies      |         142 |  3100.00 |
| Randall     | Matos       |         143 |  2600.00 |
| Peter       | Vargas      |         144 |  2500.00 |
| John        | Russell     |         145 | 14000.00 |
| Karen       | Partners    |         146 | 13500.00 |
| Alberto     | Errazuriz   |         147 | 12000.00 |
| Gerald      | Cambrault   |         148 | 11000.00 |
| Eleni       | Zlotkey     |         149 | 10500.00 |
| Peter       | Tucker      |         150 | 10000.00 |
| David       | Bernstein   |         151 |  9500.00 |
| Peter       | Hall        |         152 |  9000.00 |
| Christopher | Olsen       |         153 |  8000.00 |
| Nanette     | Cambrault   |         154 |  7500.00 |
| Oliver      | Tuvault     |         155 |  7000.00 |
| Janette     | King        |         156 | 10000.00 |
| Patrick     | Sully       |         157 |  9500.00 |
| Allan       | McEwen      |         158 |  9000.00 |
| Lindsey     | Smith       |         159 |  8000.00 |
| Louise      | Doran       |         160 |  7500.00 |
| Sarath      | Sewall      |         161 |  7000.00 |
| Clara       | Vishney     |         162 | 10500.00 |
| Danielle    | Greene      |         163 |  9500.00 |
| Mattea      | Marvins     |         164 |  7200.00 |
| David       | Lee         |         165 |  6800.00 |
| Sundar      | Ande        |         166 |  6400.00 |
| Amit        | Banda       |         167 |  6200.00 |
| Lisa        | Ozer        |         168 | 11500.00 |
| Harrison    | Bloom       |         169 | 10000.00 |
| Tayler      | Fox         |         170 |  9600.00 |
| William     | Smith       |         171 |  7400.00 |
| Elizabeth   | Bates       |         172 |  7300.00 |
| Sundita     | Kumar       |         173 |  6100.00 |
| Ellen       | Abel        |         174 | 11000.00 |
| Alyssa      | Hutton      |         175 |  8800.00 |
| Jonathon    | Taylor      |         176 |  8600.00 |
| Jack        | Livingston  |         177 |  8400.00 |
| Kimberely   | Grant       |         178 |  7000.00 |
| Charles     | Johnson     |         179 |  6200.00 |
| Winston     | Taylor      |         180 |  3200.00 |
| Jean        | Fleaur      |         181 |  3100.00 |
| Martha      | Sullivan    |         182 |  2500.00 |
| Girard      | Geoni       |         183 |  2800.00 |
| Nandita     | Sarchand    |         184 |  4200.00 |
| Alexis      | Bull        |         185 |  4100.00 |
| Julia       | Dellinger   |         186 |  3400.00 |
| Anthony     | Cabrio      |         187 |  3000.00 |
| Kelly       | Chung       |         188 |  3800.00 |
| Jennifer    | Dilly       |         189 |  3600.00 |
| Timothy     | Gates       |         190 |  2900.00 |
| Randall     | Perkins     |         191 |  2500.00 |
| Sarah       | Bell        |         192 |  4000.00 |
| Britney     | Everett     |         193 |  3900.00 |
| Samuel      | McCain      |         194 |  3200.00 |
| Vance       | Jones       |         195 |  2800.00 |
| Alana       | Walsh       |         196 |  3100.00 |
| Kevin       | Feeney      |         197 |  3000.00 |
| Donald      | OConnell    |         198 |  2600.00 |
| Douglas     | Grant       |         199 |  2600.00 |
| Jennifer    | Whalen      |         200 |  4400.00 |
| Michael     | Hartstein   |         201 | 13000.00 |
| Pat         | Fay         |         202 |  6000.00 |
| Susan       | Mavris      |         203 |  6500.00 |
| Hermann     | Baer        |         204 | 10000.00 |
| Shelley     | Higgins     |         205 | 12000.00 |
| William     | Gietz       |         206 |  8300.00 |
+-------------+-------------+-------------+----------+
107 rows in set (0.02 sec)

MariaDB [csd2204s18]> desc departments; 
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| DEPARTMENT_ID   | decimal(4,0) | NO   | PRI | 0       |       |
| DEPARTMENT_NAME | varchar(30)  | NO   |     | NULL    |       |
| MANAGER_ID      | decimal(6,0) | YES  | MUL | NULL    |       |
| LOCATION_ID     | decimal(4,0) | YES  | MUL | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
4 rows in set (0.02 sec)

MariaDB [csd2204s18]> select first_name,last_name,employee_id,salary, (select department_name from departments d where d.department_id = e.department_id)"dept_name" from employees e;
+-------------+-------------+-------------+----------+------------------+
| first_name  | last_name   | employee_id | salary   | dept_name        |
+-------------+-------------+-------------+----------+------------------+
| Steven      | King        |         100 | 24000.00 | Executive        |
| Neena       | Kochhar     |         101 | 17000.00 | Executive        |
| Lex         | De Haan     |         102 | 17000.00 | Executive        |
| Alexander   | Hunold      |         103 |  9000.00 | IT               |
| Bruce       | Ernst       |         104 |  6000.00 | IT               |
| David       | Austin      |         105 |  4800.00 | IT               |
| Valli       | Pataballa   |         106 |  4800.00 | IT               |
| Diana       | Lorentz     |         107 |  4200.00 | IT               |
| Nancy       | Greenberg   |         108 | 12000.00 | Finance          |
| Daniel      | Faviet      |         109 |  9000.00 | Finance          |
| John        | Chen        |         110 |  8200.00 | Finance          |
| Ismael      | Sciarra     |         111 |  7700.00 | Finance          |
| Jose Manuel | Urman       |         112 |  7800.00 | Finance          |
| Luis        | Popp        |         113 |  6900.00 | Finance          |
| Den         | Raphaely    |         114 | 11000.00 | Purchasing       |
| Alexander   | Khoo        |         115 |  3100.00 | Purchasing       |
| Shelli      | Baida       |         116 |  2900.00 | Purchasing       |
| Sigal       | Tobias      |         117 |  2800.00 | Purchasing       |
| Guy         | Himuro      |         118 |  2600.00 | Purchasing       |
| Karen       | Colmenares  |         119 |  2500.00 | Purchasing       |
| Matthew     | Weiss       |         120 |  8000.00 | Shipping         |
| Adam        | Fripp       |         121 |  8200.00 | Shipping         |
| Payam       | Kaufling    |         122 |  7900.00 | Shipping         |
| Shanta      | Vollman     |         123 |  6500.00 | Shipping         |
| Kevin       | Mourgos     |         124 |  5800.00 | Shipping         |
| Julia       | Nayer       |         125 |  3200.00 | Shipping         |
| Irene       | Mikkilineni |         126 |  2700.00 | Shipping         |
| James       | Landry      |         127 |  2400.00 | Shipping         |
| Steven      | Markle      |         128 |  2200.00 | Shipping         |
| Laura       | Bissot      |         129 |  3300.00 | Shipping         |
| Mozhe       | Atkinson    |         130 |  2800.00 | Shipping         |
| James       | Marlow      |         131 |  2500.00 | Shipping         |
| TJ          | Olson       |         132 |  2100.00 | Shipping         |
| Jason       | Mallin      |         133 |  3300.00 | Shipping         |
| Michael     | Rogers      |         134 |  2900.00 | Shipping         |
| Ki          | Gee         |         135 |  2400.00 | Shipping         |
| Hazel       | Philtanker  |         136 |  2200.00 | Shipping         |
| Renske      | Ladwig      |         137 |  3600.00 | Shipping         |
| Stephen     | Stiles      |         138 |  3200.00 | Shipping         |
| John        | Seo         |         139 |  2700.00 | Shipping         |
| Joshua      | Patel       |         140 |  2500.00 | Shipping         |
| Trenna      | Rajs        |         141 |  3500.00 | Shipping         |
| Curtis      | Davies      |         142 |  3100.00 | Shipping         |
| Randall     | Matos       |         143 |  2600.00 | Shipping         |
| Peter       | Vargas      |         144 |  2500.00 | Shipping         |
| John        | Russell     |         145 | 14000.00 | Sales            |
| Karen       | Partners    |         146 | 13500.00 | Sales            |
| Alberto     | Errazuriz   |         147 | 12000.00 | Sales            |
| Gerald      | Cambrault   |         148 | 11000.00 | Sales            |
| Eleni       | Zlotkey     |         149 | 10500.00 | Sales            |
| Peter       | Tucker      |         150 | 10000.00 | Sales            |
| David       | Bernstein   |         151 |  9500.00 | Sales            |
| Peter       | Hall        |         152 |  9000.00 | Sales            |
| Christopher | Olsen       |         153 |  8000.00 | Sales            |
| Nanette     | Cambrault   |         154 |  7500.00 | Sales            |
| Oliver      | Tuvault     |         155 |  7000.00 | Sales            |
| Janette     | King        |         156 | 10000.00 | Sales            |
| Patrick     | Sully       |         157 |  9500.00 | Sales            |
| Allan       | McEwen      |         158 |  9000.00 | Sales            |
| Lindsey     | Smith       |         159 |  8000.00 | Sales            |
| Louise      | Doran       |         160 |  7500.00 | Sales            |
| Sarath      | Sewall      |         161 |  7000.00 | Sales            |
| Clara       | Vishney     |         162 | 10500.00 | Sales            |
| Danielle    | Greene      |         163 |  9500.00 | Sales            |
| Mattea      | Marvins     |         164 |  7200.00 | Sales            |
| David       | Lee         |         165 |  6800.00 | Sales            |
| Sundar      | Ande        |         166 |  6400.00 | Sales            |
| Amit        | Banda       |         167 |  6200.00 | Sales            |
| Lisa        | Ozer        |         168 | 11500.00 | Sales            |
| Harrison    | Bloom       |         169 | 10000.00 | Sales            |
| Tayler      | Fox         |         170 |  9600.00 | Sales            |
| William     | Smith       |         171 |  7400.00 | Sales            |
| Elizabeth   | Bates       |         172 |  7300.00 | Sales            |
| Sundita     | Kumar       |         173 |  6100.00 | Sales            |
| Ellen       | Abel        |         174 | 11000.00 | Sales            |
| Alyssa      | Hutton      |         175 |  8800.00 | Sales            |
| Jonathon    | Taylor      |         176 |  8600.00 | Sales            |
| Jack        | Livingston  |         177 |  8400.00 | Sales            |
| Kimberely   | Grant       |         178 |  7000.00 | NULL             |
| Charles     | Johnson     |         179 |  6200.00 | Sales            |
| Winston     | Taylor      |         180 |  3200.00 | Shipping         |
| Jean        | Fleaur      |         181 |  3100.00 | Shipping         |
| Martha      | Sullivan    |         182 |  2500.00 | Shipping         |
| Girard      | Geoni       |         183 |  2800.00 | Shipping         |
| Nandita     | Sarchand    |         184 |  4200.00 | Shipping         |
| Alexis      | Bull        |         185 |  4100.00 | Shipping         |
| Julia       | Dellinger   |         186 |  3400.00 | Shipping         |
| Anthony     | Cabrio      |         187 |  3000.00 | Shipping         |
| Kelly       | Chung       |         188 |  3800.00 | Shipping         |
| Jennifer    | Dilly       |         189 |  3600.00 | Shipping         |
| Timothy     | Gates       |         190 |  2900.00 | Shipping         |
| Randall     | Perkins     |         191 |  2500.00 | Shipping         |
| Sarah       | Bell        |         192 |  4000.00 | Shipping         |
| Britney     | Everett     |         193 |  3900.00 | Shipping         |
| Samuel      | McCain      |         194 |  3200.00 | Shipping         |
| Vance       | Jones       |         195 |  2800.00 | Shipping         |
| Alana       | Walsh       |         196 |  3100.00 | Shipping         |
| Kevin       | Feeney      |         197 |  3000.00 | Shipping         |
| Donald      | OConnell    |         198 |  2600.00 | Shipping         |
| Douglas     | Grant       |         199 |  2600.00 | Shipping         |
| Jennifer    | Whalen      |         200 |  4400.00 | Administration   |
| Michael     | Hartstein   |         201 | 13000.00 | Marketing        |
| Pat         | Fay         |         202 |  6000.00 | Marketing        |
| Susan       | Mavris      |         203 |  6500.00 | Human Resources  |
| Hermann     | Baer        |         204 | 10000.00 | Public Relations |
| Shelley     | Higgins     |         205 | 12000.00 | Accounting       |
| William     | Gietz       |         206 |  8300.00 | Accounting       |
+-------------+-------------+-------------+----------+------------------+
107 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name,last_name,employee_id,avg(salary), (select department_name from departments d where d.department_id = e.department_id group by d.department_name)"dept_name" from employees e;
+------------+-----------+-------------+-------------+-----------+
| first_name | last_name | employee_id | avg(salary) | dept_name |
+------------+-----------+-------------+-------------+-----------+
| Steven     | King      |         100 | 6461.682243 | Executive |
+------------+-----------+-------------+-------------+-----------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select first_name,last_name,employee_id,avg(salary),all (select department_name from departments d where d.department_id = e.department_id group by d.department_name)"dept_name" from employees e;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'all (select department_name from departments d where d.department_id = e.departm' at line 1
MariaDB [csd2204s18]> select first_name,last_name,employee_id,avg(salary),any (select department_name from departments d where d.department_id = e.department_id group by d.department_name)"dept_name" from employees e;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(select department_name from departments d where d.department_id = e.department_' at line 1
MariaDB [csd2204s18]> select avg(salary) ,department_id from employees group by department_id;
+--------------+---------------+
| avg(salary)  | department_id |
+--------------+---------------+
|  7000.000000 |             0 |
|  4400.000000 |            10 |
|  9500.000000 |            20 |
|  4150.000000 |            30 |
|  6500.000000 |            40 |
|  3475.555556 |            50 |
|  5760.000000 |            60 |
| 10000.000000 |            70 |
|  8955.882353 |            80 |
| 19333.333333 |            90 |
|  8600.000000 |           100 |
| 10150.000000 |           110 |
+--------------+---------------+
12 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name,last_namr,salary from employees where salary >(select avg(salary ,depart,emt));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'depart,emt))' at line 1
MariaDB [csd2204s18]> select first_name,last_namr,salary from employees where salary >(select avg(salary ,department_id from employees group by department_id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'department_id from employees group by department_id))' at line 1
MariaDB [csd2204s18]> select first_name,last_namr,salary from employees where salary > (select avg(salary) ,department_id from employees group by department_id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 1
MariaDB [csd2204s18]> select first_name,last_namr,salary from employees where salary > (select avg(salary) from employees group by department_id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 1
MariaDB [csd2204s18]> select first_name,last_namr,salary from employees where salary > (select avg(salary) from employees group by department_id);
ERROR 1054 (42S22): Unknown column 'last_namr' in 'field list'
MariaDB [csd2204s18]> select first_name,last_name,salary from employees where salary > (select avg(salary) from employees group by department_id);
ERROR 1242 (21000): Subquery returns more than 1 row
MariaDB [csd2204s18]> select first_name,last_name,salary from employees e where salary > (select avg(salary) from employees group by department_id hvaing department_id = e.department_id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'hvaing department_id = e.department_id)' at line 1
MariaDB [csd2204s18]> select first_name,last_name,salary from employees e where salary > (select avg(salary) from employees group by department_id hvaing department_id = e.department_id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'hvaing department_id = e.department_id)' at line 1
MariaDB [csd2204s18]> select first_name,last_name,salary from employees e where salary > (select avg(salary) from employees group by department_id having department_id = e.department_id);
+------------+-----------+----------+
| first_name | last_name | salary   |
+------------+-----------+----------+
| Steven     | King      | 24000.00 |
| Alexander  | Hunold    |  9000.00 |
| Bruce      | Ernst     |  6000.00 |
| Nancy      | Greenberg | 12000.00 |
| Daniel     | Faviet    |  9000.00 |
| Den        | Raphaely  | 11000.00 |
| Matthew    | Weiss     |  8000.00 |
| Adam       | Fripp     |  8200.00 |
| Payam      | Kaufling  |  7900.00 |
| Shanta     | Vollman   |  6500.00 |
| Kevin      | Mourgos   |  5800.00 |
| Renske     | Ladwig    |  3600.00 |
| Trenna     | Rajs      |  3500.00 |
| John       | Russell   | 14000.00 |
| Karen      | Partners  | 13500.00 |
| Alberto    | Errazuriz | 12000.00 |
| Gerald     | Cambrault | 11000.00 |
| Eleni      | Zlotkey   | 10500.00 |
| Peter      | Tucker    | 10000.00 |
| David      | Bernstein |  9500.00 |
| Peter      | Hall      |  9000.00 |
| Janette    | King      | 10000.00 |
| Patrick    | Sully     |  9500.00 |
| Allan      | McEwen    |  9000.00 |
| Clara      | Vishney   | 10500.00 |
| Danielle   | Greene    |  9500.00 |
| Lisa       | Ozer      | 11500.00 |
| Harrison   | Bloom     | 10000.00 |
| Tayler     | Fox       |  9600.00 |
| Ellen      | Abel      | 11000.00 |
| Nandita    | Sarchand  |  4200.00 |
| Alexis     | Bull      |  4100.00 |
| Kelly      | Chung     |  3800.00 |
| Jennifer   | Dilly     |  3600.00 |
| Sarah      | Bell      |  4000.00 |
| Britney    | Everett   |  3900.00 |
| Michael    | Hartstein | 13000.00 |
| Shelley    | Higgins   | 12000.00 |
+------------+-----------+----------+
38 rows in set (0.02 sec)

MariaDB [csd2204s18]> select distinct (salary) from employees e1 where 5 = (select count (distinct salary)  from employees e2 where e2.salary >=e1.salary);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'distinct salary)  from employees e2 where e2.salary >=e1.salary)' at line 1
MariaDB [csd2204s18]> select distinct (salary) from employees e1 where 5 = (select count(distinct salary)  from employees e2 where e2.salary >=e1.salary);
+----------+
| salary   |
+----------+
| 13000.00 |
+----------+
1 row in set (0.02 sec)

MariaDB [csd2204s18]> select distinct (salary) from employees e1 where 3 = (select count(distinct salary)  from employees e2 where e2.salary >=e1.salary);
+----------+
| salary   |
+----------+
| 14000.00 |
+----------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from(delect * from employees order by employee_id desc limit 10)e1 order by employee_id asc; 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '* from employees order by employee_id desc limit 10)e1 order by employee_id asc' at line 1
MariaDB [csd2204s18]> select * from(select * from employees order by employee_id desc limit 10)e1 order by employee_id asc; 
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL    | PHONE_NUMBER | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
|         197 | Kevin      | Feeney    | KFEENEY  | 650.507.9822 | 1987-09-22 | SH_CLERK   |  3000.00 |           0.00 |        124 |            50 |
|         198 | Donald     | OConnell  | DOCONNEL | 650.507.9833 | 1987-09-23 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         199 | Douglas    | Grant     | DGRANT   | 650.507.9844 | 1987-09-24 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         200 | Jennifer   | Whalen    | JWHALEN  | 515.123.4444 | 1987-09-25 | AD_ASST    |  4400.00 |           0.00 |        101 |            10 |
|         201 | Michael    | Hartstein | MHARTSTE | 515.123.5555 | 1987-09-26 | MK_MAN     | 13000.00 |           0.00 |        100 |            20 |
|         202 | Pat        | Fay       | PFAY     | 603.123.6666 | 1987-09-27 | MK_REP     |  6000.00 |           0.00 |        201 |            20 |
|         203 | Susan      | Mavris    | SMAVRIS  | 515.123.7777 | 1987-09-28 | HR_REP     |  6500.00 |           0.00 |        101 |            40 |
|         204 | Hermann    | Baer      | HBAER    | 515.123.8888 | 1987-09-29 | PR_REP     | 10000.00 |           0.00 |        101 |            70 |
|         205 | Shelley    | Higgins   | SHIGGINS | 515.123.8080 | 1987-09-30 | AC_MGR     | 12000.00 |           0.00 |        101 |           110 |
|         206 | William    | Gietz     | WGIETZ   | 515.123.8181 | 1987-10-01 | AC_ACCOUNT |  8300.00 |           0.00 |        205 |           110 |
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from(select * from employees order by employee_id desc limit 10); 
ERROR 1248 (42000): Every derived table must have its own alias
MariaDB [csd2204s18]> select * from employees order by employee_id desc limit 10; 
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL    | PHONE_NUMBER | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
|         206 | William    | Gietz     | WGIETZ   | 515.123.8181 | 1987-10-01 | AC_ACCOUNT |  8300.00 |           0.00 |        205 |           110 |
|         205 | Shelley    | Higgins   | SHIGGINS | 515.123.8080 | 1987-09-30 | AC_MGR     | 12000.00 |           0.00 |        101 |           110 |
|         204 | Hermann    | Baer      | HBAER    | 515.123.8888 | 1987-09-29 | PR_REP     | 10000.00 |           0.00 |        101 |            70 |
|         203 | Susan      | Mavris    | SMAVRIS  | 515.123.7777 | 1987-09-28 | HR_REP     |  6500.00 |           0.00 |        101 |            40 |
|         202 | Pat        | Fay       | PFAY     | 603.123.6666 | 1987-09-27 | MK_REP     |  6000.00 |           0.00 |        201 |            20 |
|         201 | Michael    | Hartstein | MHARTSTE | 515.123.5555 | 1987-09-26 | MK_MAN     | 13000.00 |           0.00 |        100 |            20 |
|         200 | Jennifer   | Whalen    | JWHALEN  | 515.123.4444 | 1987-09-25 | AD_ASST    |  4400.00 |           0.00 |        101 |            10 |
|         199 | Douglas    | Grant     | DGRANT   | 650.507.9844 | 1987-09-24 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         198 | Donald     | OConnell  | DOCONNEL | 650.507.9833 | 1987-09-23 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         197 | Kevin      | Feeney    | KFEENEY  | 650.507.9822 | 1987-09-22 | SH_CLERK   |  3000.00 |           0.00 |        124 |            50 |
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select distinct department_id from employees;
+---------------+
| department_id |
+---------------+
|             0 |
|            10 |
|            20 |
|            30 |
|            40 |
|            50 |
|            60 |
|            70 |
|            80 |
|            90 |
|           100 |
|           110 |
+---------------+
12 rows in set (0.00 sec)

MariaDB [csd2204s18]> select department_id,department_name from departments where department_id not in(select distinct department_id from employees); 
+---------------+----------------------+
| department_id | department_name      |
+---------------+----------------------+
|           120 | Treasury             |
|           130 | Corporate Tax        |
|           140 | Control And Credit   |
|           150 | Shareholder Services |
|           160 | Benefits             |
|           170 | Manufacturing        |
|           180 | Construction         |
|           190 | Contracting          |
|           200 | Operations           |
|           210 | IT Support           |
|           220 | NOC                  |
|           230 | IT Helpdesk          |
|           240 | Government Sales     |
|           250 | Retail Sales         |
|           260 | Recruiting           |
|           270 | Payroll              |
+---------------+----------------------+
16 rows in set (0.02 sec)

MariaDB [csd2204s18]> select salary from employees order by salary desc;
+----------+
| salary   |
+----------+
| 24000.00 |
| 17000.00 |
| 17000.00 |
| 14000.00 |
| 13500.00 |
| 13000.00 |
| 12000.00 |
| 12000.00 |
| 12000.00 |
| 11500.00 |
| 11000.00 |
| 11000.00 |
| 11000.00 |
| 10500.00 |
| 10500.00 |
| 10000.00 |
| 10000.00 |
| 10000.00 |
| 10000.00 |
|  9600.00 |
|  9500.00 |
|  9500.00 |
|  9500.00 |
|  9000.00 |
|  9000.00 |
|  9000.00 |
|  9000.00 |
|  8800.00 |
|  8600.00 |
|  8400.00 |
|  8300.00 |
|  8200.00 |
|  8200.00 |
|  8000.00 |
|  8000.00 |
|  8000.00 |
|  7900.00 |
|  7800.00 |
|  7700.00 |
|  7500.00 |
|  7500.00 |
|  7400.00 |
|  7300.00 |
|  7200.00 |
|  7000.00 |
|  7000.00 |
|  7000.00 |
|  6900.00 |
|  6800.00 |
|  6500.00 |
|  6500.00 |
|  6400.00 |
|  6200.00 |
|  6200.00 |
|  6100.00 |
|  6000.00 |
|  6000.00 |
|  5800.00 |
|  4800.00 |
|  4800.00 |
|  4400.00 |
|  4200.00 |
|  4200.00 |
|  4100.00 |
|  4000.00 |
|  3900.00 |
|  3800.00 |
|  3600.00 |
|  3600.00 |
|  3500.00 |
|  3400.00 |
|  3300.00 |
|  3300.00 |
|  3200.00 |
|  3200.00 |
|  3200.00 |
|  3200.00 |
|  3100.00 |
|  3100.00 |
|  3100.00 |
|  3100.00 |
|  3000.00 |
|  3000.00 |
|  2900.00 |
|  2900.00 |
|  2900.00 |
|  2800.00 |
|  2800.00 |
|  2800.00 |
|  2800.00 |
|  2700.00 |
|  2700.00 |
|  2600.00 |
|  2600.00 |
|  2600.00 |
|  2600.00 |
|  2500.00 |
|  2500.00 |
|  2500.00 |
|  2500.00 |
|  2500.00 |
|  2500.00 |
|  2400.00 |
|  2400.00 |
|  2200.00 |
|  2200.00 |
|  2100.00 |
+----------+
107 rows in set (0.00 sec)

MariaDB [csd2204s18]> select distinct salary from employees order by salary desc;
+----------+
| salary   |
+----------+
| 24000.00 |
| 17000.00 |
| 14000.00 |
| 13500.00 |
| 13000.00 |
| 12000.00 |
| 11500.00 |
| 11000.00 |
| 10500.00 |
| 10000.00 |
|  9600.00 |
|  9500.00 |
|  9000.00 |
|  8800.00 |
|  8600.00 |
|  8400.00 |
|  8300.00 |
|  8200.00 |
|  8000.00 |
|  7900.00 |
|  7800.00 |
|  7700.00 |
|  7500.00 |
|  7400.00 |
|  7300.00 |
|  7200.00 |
|  7000.00 |
|  6900.00 |
|  6800.00 |
|  6500.00 |
|  6400.00 |
|  6200.00 |
|  6100.00 |
|  6000.00 |
|  5800.00 |
|  4800.00 |
|  4400.00 |
|  4200.00 |
|  4100.00 |
|  4000.00 |
|  3900.00 |
|  3800.00 |
|  3600.00 |
|  3500.00 |
|  3400.00 |
|  3300.00 |
|  3200.00 |
|  3100.00 |
|  3000.00 |
|  2900.00 |
|  2800.00 |
|  2700.00 |
|  2600.00 |
|  2500.00 |
|  2400.00 |
|  2200.00 |
|  2100.00 |
+----------+
57 rows in set (0.00 sec)

MariaDB [csd2204s18]> select distinct salary from employees order by salary desc limit 3;
+----------+
| salary   |
+----------+
| 24000.00 |
| 17000.00 |
| 14000.00 |
+----------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> exit;
