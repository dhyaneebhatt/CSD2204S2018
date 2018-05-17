MariaDB [csd2204s18]> how tables;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'how tables' at line 1
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
4 rows in set (0.02 sec)

MariaDB [csd2204s18]> desc salary;
ERROR 1146 (42S02): Table 'csd2204s18.salary' doesn't exist
MariaDB [csd2204s18]> desc job_history;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| EMPLOYEE_ID   | decimal(6,0) | NO   | PRI | NULL    |       |
| START_DATE    | date         | NO   | PRI | NULL    |       |
| END_DATE      | date         | NO   |     | NULL    |       |
| JOB_ID        | varchar(10)  | NO   | MUL | NULL    |       |
| DEPARTMENT_ID | decimal(4,0) | YES  | MUL | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc regions;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| REGION_ID   | decimal(5,0) | NO   | PRI | NULL    |       |
| REGION_NAME | varchar(25)  | YES  | UNI | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

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

MariaDB [csd2204s18]> desc departments;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| DEPARTMENT_ID   | decimal(4,0) | NO   | PRI | 0       |       |
| DEPARTMENT_NAME | varchar(30)  | NO   |     | NULL    |       |
| MANAGER_ID      | decimal(6,0) | YES  | MUL | NULL    |       |
| LOCATION_ID     | decimal(4,0) | YES  | MUL | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select* from employee;
ERROR 1146 (42S02): Table 'csd2204s18.employee' doesn't exist
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

MariaDB [csd2204s18]> select salary from employees where last_name like 'Bull';
+---------+
| salary  |
+---------+
| 4100.00 |
+---------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, last_name, salary from employees where salary>4100;
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
| Jennifer    | Whalen     |  4400.00 |
| Michael     | Hartstein  | 13000.00 |
| Pat         | Fay        |  6000.00 |
| Susan       | Mavris     |  6500.00 |
| Hermann     | Baer       | 10000.00 |
| Shelley     | Higgins    | 12000.00 |
| William     | Gietz      |  8300.00 |
+-------------+------------+----------+
63 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, last_name, salary from employees where salary> (aelect salary from employees where last_name like 'Bull');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'salary from employees where last_name like 'Bull')' at line 1
MariaDB [csd2204s18]> select first_name, last_name, salary from employees where salary> (select salary from employees where last_name like 'Bull');
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
| Jennifer    | Whalen     |  4400.00 |
| Michael     | Hartstein  | 13000.00 |
| Pat         | Fay        |  6000.00 |
| Susan       | Mavris     |  6500.00 |
| Hermann     | Baer       | 10000.00 |
| Shelley     | Higgins    | 12000.00 |
| William     | Gietz      |  8300.00 |
+-------------+------------+----------+
63 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from departments;
+---------------+----------------------+------------+-------------+
| DEPARTMENT_ID | DEPARTMENT_NAME      | MANAGER_ID | LOCATION_ID |
+---------------+----------------------+------------+-------------+
|            10 | Administration       |        200 |        1700 |
|            20 | Marketing            |        201 |        1800 |
|            30 | Purchasing           |        114 |        1700 |
|            40 | Human Resources      |        203 |        2400 |
|            50 | Shipping             |        121 |        1500 |
|            60 | IT                   |        103 |        1400 |
|            70 | Public Relations     |        204 |        2700 |
|            80 | Sales                |        145 |        2500 |
|            90 | Executive            |        100 |        1700 |
|           100 | Finance              |        108 |        1700 |
|           110 | Accounting           |        205 |        1700 |
|           120 | Treasury             |          0 |        1700 |
|           130 | Corporate Tax        |          0 |        1700 |
|           140 | Control And Credit   |          0 |        1700 |
|           150 | Shareholder Services |          0 |        1700 |
|           160 | Benefits             |          0 |        1700 |
|           170 | Manufacturing        |          0 |        1700 |
|           180 | Construction         |          0 |        1700 |
|           190 | Contracting          |          0 |        1700 |
|           200 | Operations           |          0 |        1700 |
|           210 | IT Support           |          0 |        1700 |
|           220 | NOC                  |          0 |        1700 |
|           230 | IT Helpdesk          |          0 |        1700 |
|           240 | Government Sales     |          0 |        1700 |
|           250 | Retail Sales         |          0 |        1700 |
|           260 | Recruiting           |          0 |        1700 |
|           270 | Payroll              |          0 |        1700 |
+---------------+----------------------+------------+-------------+
27 rows in set (0.00 sec)

MariaDB [csd2204s18]> select department_id , department_name from departments where department_name like 'IT%';
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|            60 | IT              |
|           210 | IT Support      |
|           230 | IT Helpdesk     |
+---------------+-----------------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name,last_name, department_id from employees where depaartment_id in (select department_id from departments where department_name like 'IT%');
ERROR 1054 (42S22): Unknown column 'depaartment_id' in 'IN/ALL/ANY subquery'
MariaDB [csd2204s18]> select first_name,last_name, department_id from employees where department_id in (select department_id from departments where department_name like 'IT%');
+------------+-----------+---------------+
| first_name | last_name | department_id |
+------------+-----------+---------------+
| Alexander  | Hunold    |            60 |
| Bruce      | Ernst     |            60 |
| David      | Austin    |            60 |
| Valli      | Pataballa |            60 |
| Diana      | Lorentz   |            60 |
+------------+-----------+---------------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name,last_name, department_id from employees where department_id ='210';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select first_name,last_name, department_id from employees where department_id ='230';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select*from locations;
+-------------+---------------------------+--------------+---------------------+-------------------+------------+
| LOCATION_ID | STREET_ADDRESS            | POSTAL_CODE  | CITY                | STATE_PROVINCE    | COUNTRY_ID |
+-------------+---------------------------+--------------+---------------------+-------------------+------------+
|        1000 | 1297 Via Cola di Rie      | 989          | Roma                |                   | IT         |
|        1100 | 93091 Calle della Testa   | 10934        | Venice              |                   | IT         |
|        1200 | 2017 Shinjuku-ku          | 1689         | Tokyo               | Tokyo Prefecture  | JP         |
|        1300 | 9450 Kamiya-cho           | 6823         | Hiroshima           |                   | JP         |
|        1400 | 2014 Jabberwocky Rd       | 26192        | Southlake           | Texas             | US         |
|        1500 | 2011 Interiors Blvd       | 99236        | South San Francisco | California        | US         |
|        1600 | 2007 Zagora St            | 50090        | South Brunswick     | New Jersey        | US         |
|        1700 | 2004 Charade Rd           | 98199        | Seattle             | Washington        | US         |
|        1800 | 147 Spadina Ave           | M5V 2L7      | Toronto             | Ontario           | CA         |
|        1900 | 6092 Boxwood St           | YSW 9T2      | Whitehorse          | Yukon             | CA         |
|        2000 | 40-5-12 Laogianggen       | 190518       | Beijing             |                   | CN         |
|        2100 | 1298 Vileparle (E)        | 490231       | Bombay              | Maharashtra       | IN         |
|        2200 | 12-98 Victoria Street     | 2901         | Sydney              | New South Wales   | AU         |
|        2300 | 198 Clementi North        | 540198       | Singapore           |                   | SG         |
|        2400 | 8204 Arthur St            |              | London              |                   | UK         |
|        2500 | "Magdalen Centre          |  The Oxford  | OX9 9ZB             | Oxford            | Ox         |
|        2600 | 9702 Chester Road         | 9629850293   | Stretford           | Manchester        | UK         |
|        2700 | Schwanthalerstr. 7031     | 80925        | Munich              | Bavaria           | DE         |
|        2800 | Rua Frei Caneca 1360      | 01307-002    | Sao Paulo           | Sao Paulo         | BR         |
|        2900 | 20 Rue des Corps-Saints   | 1730         | Geneva              | Geneve            | CH         |
|        3000 | Murtenstrasse 921         | 3095         | Bern                | BE                | CH         |
|        3100 | Pieter Breughelstraat 837 | 3029SK       | Utrecht             | Utrecht           | NL         |
|        3200 | Mariano Escobedo 9991     | 11932        | Mexico City         | "Distrito Federal | "          |
+-------------+---------------------------+--------------+---------------------+-------------------+------------+
23 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from employees where manager_id !=0;
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
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
106 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from locations where country_id='US';
+-------------+---------------------+-------------+---------------------+----------------+------------+
| LOCATION_ID | STREET_ADDRESS      | POSTAL_CODE | CITY                | STATE_PROVINCE | COUNTRY_ID |
+-------------+---------------------+-------------+---------------------+----------------+------------+
|        1400 | 2014 Jabberwocky Rd | 26192       | Southlake           | Texas          | US         |
|        1500 | 2011 Interiors Blvd | 99236       | South San Francisco | California     | US         |
|        1600 | 2007 Zagora St      | 50090       | South Brunswick     | New Jersey     | US         |
|        1700 | 2004 Charade Rd     | 98199       | Seattle             | Washington     | US         |
+-------------+---------------------+-------------+---------------------+----------------+------------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select location_id from locations where country_id='US';
+-------------+
| location_id |
+-------------+
|        1400 |
|        1500 |
|        1600 |
|        1700 |
+-------------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from departents where location_id in (1400,1500,1600,1700);
ERROR 1146 (42S02): Table 'csd2204s18.departents' doesn't exist
MariaDB [csd2204s18]> select * from departents where location_id in (select location_id from locations where country_id='US');
ERROR 1146 (42S02): Table 'csd2204s18.departents' doesn't exist
MariaDB [csd2204s18]> select * from departments where location_id in (select location_id from locations where country_id='US');
+---------------+----------------------+------------+-------------+
| DEPARTMENT_ID | DEPARTMENT_NAME      | MANAGER_ID | LOCATION_ID |
+---------------+----------------------+------------+-------------+
|            60 | IT                   |        103 |        1400 |
|            50 | Shipping             |        121 |        1500 |
|            10 | Administration       |        200 |        1700 |
|            30 | Purchasing           |        114 |        1700 |
|            90 | Executive            |        100 |        1700 |
|           100 | Finance              |        108 |        1700 |
|           110 | Accounting           |        205 |        1700 |
|           120 | Treasury             |          0 |        1700 |
|           130 | Corporate Tax        |          0 |        1700 |
|           140 | Control And Credit   |          0 |        1700 |
|           150 | Shareholder Services |          0 |        1700 |
|           160 | Benefits             |          0 |        1700 |
|           170 | Manufacturing        |          0 |        1700 |
|           180 | Construction         |          0 |        1700 |
|           190 | Contracting          |          0 |        1700 |
|           200 | Operations           |          0 |        1700 |
|           210 | IT Support           |          0 |        1700 |
|           220 | NOC                  |          0 |        1700 |
|           230 | IT Helpdesk          |          0 |        1700 |
|           240 | Government Sales     |          0 |        1700 |
|           250 | Retail Sales         |          0 |        1700 |
|           260 | Recruiting           |          0 |        1700 |
|           270 | Payroll              |          0 |        1700 |
+---------------+----------------------+------------+-------------+
23 rows in set (0.00 sec)

MariaDB [csd2204s18]> select department_id from departments where location_id in (select location_id from locations where country_id='US');
+---------------+
| department_id |
+---------------+
|            60 |
|            50 |
|            10 |
|            30 |
|            90 |
|           100 |
|           110 |
|           120 |
|           130 |
|           140 |
|           150 |
|           160 |
|           170 |
|           180 |
|           190 |
|           200 |
|           210 |
|           220 |
|           230 |
|           240 |
|           250 |
|           260 |
|           270 |
+---------------+
23 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, last_name from employees where manager_id !=0 and department_id in (select department_id from departments where location_id in (select location_id from locations where country_id='US'));
+-------------+-------------+
| first_name  | last_name   |
+-------------+-------------+
| Alexander   | Hunold      |
| Bruce       | Ernst       |
| David       | Austin      |
| Valli       | Pataballa   |
| Diana       | Lorentz     |
| Matthew     | Weiss       |
| Adam        | Fripp       |
| Payam       | Kaufling    |
| Shanta      | Vollman     |
| Kevin       | Mourgos     |
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
| Den         | Raphaely    |
| Alexander   | Khoo        |
| Shelli      | Baida       |
| Sigal       | Tobias      |
| Guy         | Himuro      |
| Karen       | Colmenares  |
| Neena       | Kochhar     |
| Lex         | De Haan     |
| Nancy       | Greenberg   |
| Daniel      | Faviet      |
| John        | Chen        |
| Ismael      | Sciarra     |
| Jose Manuel | Urman       |
| Luis        | Popp        |
| Shelley     | Higgins     |
| William     | Gietz       |
+-------------+-------------+
67 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name from employees where (select manager_id from employees where manager_id!=0 distinct);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'distinct)' at line 1
MariaDB [csd2204s18]> select manager_id from employees where manager_id!=0 distinct;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'distinct' at line 1
MariaDB [csd2204s18]> select distinct manager_id from employees where manager_id!=0;
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
18 rows in set (0.03 sec)

MariaDB [csd2204s18]> select first_name from employees where employee_id in (select distinct (manager_id) from employees where manager_id!=0);
+------------+
| first_name |
+------------+
| Steven     |
| Neena      |
| Lex        |
| Alexander  |
| Nancy      |
| Den        |
| Matthew    |
| Adam       |
| Payam      |
| Shanta     |
| Kevin      |
| John       |
| Karen      |
| Alberto    |
| Gerald     |
| Eleni      |
| Michael    |
| Shelley    |
+------------+
18 rows in set (0.00 sec)

MariaDB [csd2204s18]> select avg(salary) from employees;
+-------------+
| avg(salary) |
+-------------+
| 6461.682243 |
+-------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select first_name,last_name,salary from employees where salary > (select avg(salary) from employees);
+-------------+------------+----------+
| first_name  | last_name  | salary   |
+-------------+------------+----------+
| Steven      | King       | 24000.00 |
| Neena       | Kochhar    | 17000.00 |
| Lex         | De Haan    | 17000.00 |
| Alexander   | Hunold     |  9000.00 |
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
| Lisa        | Ozer       | 11500.00 |
| Harrison    | Bloom      | 10000.00 |
| Tayler      | Fox        |  9600.00 |
| William     | Smith      |  7400.00 |
| Elizabeth   | Bates      |  7300.00 |
| Ellen       | Abel       | 11000.00 |
| Alyssa      | Hutton     |  8800.00 |
| Jonathon    | Taylor     |  8600.00 |
| Jack        | Livingston |  8400.00 |
| Kimberely   | Grant      |  7000.00 |
| Michael     | Hartstein  | 13000.00 |
| Susan       | Mavris     |  6500.00 |
| Hermann     | Baer       | 10000.00 |
| Shelley     | Higgins    | 12000.00 |
| William     | Gietz      |  8300.00 |
+-------------+------------+----------+
51 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from employees limit 2;
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL    | PHONE_NUMBER | HIRE_DATE  | JOB_ID  | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+
|         100 | Steven     | King      | SKING    | 515.123.4567 | 1987-06-17 | AD_PRES | 24000.00 |           0.00 |          0 |            90 |
|         101 | Neena      | Kochhar   | NKOCHHAR | 515.123.4568 | 1987-06-18 | AD_VP   | 17000.00 |           0.00 |        100 |            90 |
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from employees limit 4;
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL    | PHONE_NUMBER | HIRE_DATE  | JOB_ID  | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+
|         100 | Steven     | King      | SKING    | 515.123.4567 | 1987-06-17 | AD_PRES | 24000.00 |           0.00 |          0 |            90 |
|         101 | Neena      | Kochhar   | NKOCHHAR | 515.123.4568 | 1987-06-18 | AD_VP   | 17000.00 |           0.00 |        100 |            90 |
|         102 | Lex        | De Haan   | LDEHAAN  | 515.123.4569 | 1987-06-19 | AD_VP   | 17000.00 |           0.00 |        100 |            90 |
|         103 | Alexander  | Hunold    | AHUNOLD  | 590.423.4567 | 1987-06-20 | IT_PROG |  9000.00 |           0.00 |        102 |            60 |
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select job_id from employees;
+------------+
| job_id     |
+------------+
| AC_ACCOUNT |
| AC_MGR     |
| AD_ASST    |
| AD_PRES    |
| AD_VP      |
| AD_VP      |
| FI_ACCOUNT |
| FI_ACCOUNT |
| FI_ACCOUNT |
| FI_ACCOUNT |
| FI_ACCOUNT |
| FI_MGR     |
| HR_REP     |
| IT_PROG    |
| IT_PROG    |
| IT_PROG    |
| IT_PROG    |
| IT_PROG    |
| MK_MAN     |
| MK_REP     |
| PR_REP     |
| PU_CLERK   |
| PU_CLERK   |
| PU_CLERK   |
| PU_CLERK   |
| PU_CLERK   |
| PU_MAN     |
| SA_MAN     |
| SA_MAN     |
| SA_MAN     |
| SA_MAN     |
| SA_MAN     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_MAN     |
| ST_MAN     |
| ST_MAN     |
| ST_MAN     |
| ST_MAN     |
+------------+
107 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name,job_id from employees;
+-------------+------------+
| first_name  | job_id     |
+-------------+------------+
| Steven      | AD_PRES    |
| Neena       | AD_VP      |
| Lex         | AD_VP      |
| Alexander   | IT_PROG    |
| Bruce       | IT_PROG    |
| David       | IT_PROG    |
| Valli       | IT_PROG    |
| Diana       | IT_PROG    |
| Nancy       | FI_MGR     |
| Daniel      | FI_ACCOUNT |
| John        | FI_ACCOUNT |
| Ismael      | FI_ACCOUNT |
| Jose Manuel | FI_ACCOUNT |
| Luis        | FI_ACCOUNT |
| Den         | PU_MAN     |
| Alexander   | PU_CLERK   |
| Shelli      | PU_CLERK   |
| Sigal       | PU_CLERK   |
| Guy         | PU_CLERK   |
| Karen       | PU_CLERK   |
| Matthew     | ST_MAN     |
| Adam        | ST_MAN     |
| Payam       | ST_MAN     |
| Shanta      | ST_MAN     |
| Kevin       | ST_MAN     |
| Julia       | ST_CLERK   |
| Irene       | ST_CLERK   |
| James       | ST_CLERK   |
| Steven      | ST_CLERK   |
| Laura       | ST_CLERK   |
| Mozhe       | ST_CLERK   |
| James       | ST_CLERK   |
| TJ          | ST_CLERK   |
| Jason       | ST_CLERK   |
| Michael     | ST_CLERK   |
| Ki          | ST_CLERK   |
| Hazel       | ST_CLERK   |
| Renske      | ST_CLERK   |
| Stephen     | ST_CLERK   |
| John        | ST_CLERK   |
| Joshua      | ST_CLERK   |
| Trenna      | ST_CLERK   |
| Curtis      | ST_CLERK   |
| Randall     | ST_CLERK   |
| Peter       | ST_CLERK   |
| John        | SA_MAN     |
| Karen       | SA_MAN     |
| Alberto     | SA_MAN     |
| Gerald      | SA_MAN     |
| Eleni       | SA_MAN     |
| Peter       | SA_REP     |
| David       | SA_REP     |
| Peter       | SA_REP     |
| Christopher | SA_REP     |
| Nanette     | SA_REP     |
| Oliver      | SA_REP     |
| Janette     | SA_REP     |
| Patrick     | SA_REP     |
| Allan       | SA_REP     |
| Lindsey     | SA_REP     |
| Louise      | SA_REP     |
| Sarath      | SA_REP     |
| Clara       | SA_REP     |
| Danielle    | SA_REP     |
| Mattea      | SA_REP     |
| David       | SA_REP     |
| Sundar      | SA_REP     |
| Amit        | SA_REP     |
| Lisa        | SA_REP     |
| Harrison    | SA_REP     |
| Tayler      | SA_REP     |
| William     | SA_REP     |
| Elizabeth   | SA_REP     |
| Sundita     | SA_REP     |
| Ellen       | SA_REP     |
| Alyssa      | SA_REP     |
| Jonathon    | SA_REP     |
| Jack        | SA_REP     |
| Kimberely   | SA_REP     |
| Charles     | SA_REP     |
| Winston     | SH_CLERK   |
| Jean        | SH_CLERK   |
| Martha      | SH_CLERK   |
| Girard      | SH_CLERK   |
| Nandita     | SH_CLERK   |
| Alexis      | SH_CLERK   |
| Julia       | SH_CLERK   |
| Anthony     | SH_CLERK   |
| Kelly       | SH_CLERK   |
| Jennifer    | SH_CLERK   |
| Timothy     | SH_CLERK   |
| Randall     | SH_CLERK   |
| Sarah       | SH_CLERK   |
| Britney     | SH_CLERK   |
| Samuel      | SH_CLERK   |
| Vance       | SH_CLERK   |
| Alana       | SH_CLERK   |
| Kevin       | SH_CLERK   |
| Donald      | SH_CLERK   |
| Douglas     | SH_CLERK   |
| Jennifer    | AD_ASST    |
| Michael     | MK_MAN     |
| Pat         | MK_REP     |
| Susan       | HR_REP     |
| Hermann     | PR_REP     |
| Shelley     | AC_MGR     |
| William     | AC_ACCOUNT |
+-------------+------------+
107 rows in set (0.00 sec)

MariaDB [csd2204s18]> select min_salary from jobs where job_id in(select job_id from employees);
+------------+
| min_salary |
+------------+
|      20000 |
|      15000 |
|       3000 |
|       8200 |
|       4200 |
|       8200 |
|       4200 |
|      10000 |
|       6000 |
|       8000 |
|       2500 |
|       5500 |
|       2000 |
|       2500 |
|       4000 |
|       9000 |
|       4000 |
|       4000 |
|       4500 |
+------------+
19 rows in set (0.00 sec)

MariaDB [csd2204s18]> select job_id, min_salary from jobs where job_id in(select job_id from employees);
+------------+------------+
| job_id     | min_salary |
+------------+------------+
| AD_PRES    |      20000 |
| AD_VP      |      15000 |
| AD_ASST    |       3000 |
| FI_MGR     |       8200 |
| FI_ACCOUNT |       4200 |
| AC_MGR     |       8200 |
| AC_ACCOUNT |       4200 |
| SA_MAN     |      10000 |
| SA_REP     |       6000 |
| PU_MAN     |       8000 |
| PU_CLERK   |       2500 |
| ST_MAN     |       5500 |
| ST_CLERK   |       2000 |
| SH_CLERK   |       2500 |
| IT_PROG    |       4000 |
| MK_MAN     |       9000 |
| MK_REP     |       4000 |
| HR_REP     |       4000 |
| PR_REP     |       4500 |
+------------+------------+
19 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, salary from employees where salary in (select min_salary from jobs where job_id in(select job_id from employees));
+-------------+----------+
| first_name  | salary   |
+-------------+----------+
| Alexander   |  9000.00 |
| Bruce       |  6000.00 |
| Diana       |  4200.00 |
| Daniel      |  9000.00 |
| John        |  8200.00 |
| Karen       |  2500.00 |
| Matthew     |  8000.00 |
| Adam        |  8200.00 |
| James       |  2500.00 |
| Joshua      |  2500.00 |
| Peter       |  2500.00 |
| Peter       | 10000.00 |
| Peter       |  9000.00 |
| Christopher |  8000.00 |
| Janette     | 10000.00 |
| Allan       |  9000.00 |
| Lindsey     |  8000.00 |
| Harrison    | 10000.00 |
| Martha      |  2500.00 |
| Nandita     |  4200.00 |
| Anthony     |  3000.00 |
| Randall     |  2500.00 |
| Sarah       |  4000.00 |
| Kevin       |  3000.00 |
| Pat         |  6000.00 |
| Hermann     | 10000.00 |
+-------------+----------+
26 rows in set (0.02 sec)

MariaDB [csd2204s18]> select first_name, salary from employees where salary = (select min_salary from jobs where job_id =(select job_id from employees));
ERROR 1242 (21000): Subquery returns more than 1 row
MariaDB [csd2204s18]> select first_name, salary from employees where salary = (select min_salary from jobs where job_id in(select job_id from employees));
ERROR 1242 (21000): Subquery returns more than 1 row
MariaDB [csd2204s18]> select first_name, salary from employees where salary in (select min_salary from jobs where job_id in(select job_id from employees));
+-------------+----------+
| first_name  | salary   |
+-------------+----------+
| Alexander   |  9000.00 |
| Bruce       |  6000.00 |
| Diana       |  4200.00 |
| Daniel      |  9000.00 |
| John        |  8200.00 |
| Karen       |  2500.00 |
| Matthew     |  8000.00 |
| Adam        |  8200.00 |
| James       |  2500.00 |
| Joshua      |  2500.00 |
| Peter       |  2500.00 |
| Peter       | 10000.00 |
| Peter       |  9000.00 |
| Christopher |  8000.00 |
| Janette     | 10000.00 |
| Allan       |  9000.00 |
| Lindsey     |  8000.00 |
| Harrison    | 10000.00 |
| Martha      |  2500.00 |
| Nandita     |  4200.00 |
| Anthony     |  3000.00 |
| Randall     |  2500.00 |
| Sarah       |  4000.00 |
| Kevin       |  3000.00 |
| Pat         |  6000.00 |
| Hermann     | 10000.00 |
+-------------+----------+
26 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, salary from employees where salary in (select min_salary from jobs where job_id in(select distinct job_id from employees));
+-------------+----------+
| first_name  | salary   |
+-------------+----------+
| Alexander   |  9000.00 |
| Bruce       |  6000.00 |
| Diana       |  4200.00 |
| Daniel      |  9000.00 |
| John        |  8200.00 |
| Karen       |  2500.00 |
| Matthew     |  8000.00 |
| Adam        |  8200.00 |
| James       |  2500.00 |
| Joshua      |  2500.00 |
| Peter       |  2500.00 |
| Peter       | 10000.00 |
| Peter       |  9000.00 |
| Christopher |  8000.00 |
| Janette     | 10000.00 |
| Allan       |  9000.00 |
| Lindsey     |  8000.00 |
| Harrison    | 10000.00 |
| Martha      |  2500.00 |
| Nandita     |  4200.00 |
| Anthony     |  3000.00 |
| Randall     |  2500.00 |
| Sarah       |  4000.00 |
| Kevin       |  3000.00 |
| Pat         |  6000.00 |
| Hermann     | 10000.00 |
+-------------+----------+
26 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, salary from employees where salary in (select min_salary from jobs where jobs.job_id in(select distinct job_id from employees));
+-------------+----------+
| first_name  | salary   |
+-------------+----------+
| Alexander   |  9000.00 |
| Bruce       |  6000.00 |
| Diana       |  4200.00 |
| Daniel      |  9000.00 |
| John        |  8200.00 |
| Karen       |  2500.00 |
| Matthew     |  8000.00 |
| Adam        |  8200.00 |
| James       |  2500.00 |
| Joshua      |  2500.00 |
| Peter       |  2500.00 |
| Peter       | 10000.00 |
| Peter       |  9000.00 |
| Christopher |  8000.00 |
| Janette     | 10000.00 |
| Allan       |  9000.00 |
| Lindsey     |  8000.00 |
| Harrison    | 10000.00 |
| Martha      |  2500.00 |
| Nandita     |  4200.00 |
| Anthony     |  3000.00 |
| Randall     |  2500.00 |
| Sarah       |  4000.00 |
| Kevin       |  3000.00 |
| Pat         |  6000.00 |
| Hermann     | 10000.00 |
+-------------+----------+
26 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, salary from employees where salary in (select min_salary from jobs where jobs.job_id = employees.job_id);
+------------+---------+
| first_name | salary  |
+------------+---------+
| Karen      | 2500.00 |
| Martha     | 2500.00 |
| Randall    | 2500.00 |
+------------+---------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, salary from employees where salary in (select min_salary from jobs where employees.job_id = jobs.job_id);
+------------+---------+
| first_name | salary  |
+------------+---------+
| Karen      | 2500.00 |
| Martha     | 2500.00 |
| Randall    | 2500.00 |
+------------+---------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select avg(salary) from employees;
+-------------+
| avg(salary) |
+-------------+
| 6461.682243 |
+-------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select department_id from departments where department_name like 'IT%';
+---------------+
| department_id |
+---------------+
|            60 |
|           210 |
|           230 |
+---------------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, salary,department_id from employees where salary > (select avg(salary) from employees)and depatment_id in (select department_id from departments where department_name like '%IT');
ERROR 1054 (42S22): Unknown column 'depatment_id' in 'IN/ALL/ANY subquery'
MariaDB [csd2204s18]> select first_name, salary,department_id from employees where salary > (select avg(salary) from employees)and department_id in (select department_id from departments where department_name like '%IT');
+------------+---------+---------------+
| first_name | salary  | department_id |
+------------+---------+---------------+
| Alexander  | 9000.00 |            60 |
+------------+---------+---------------+
1 row in set (0.02 sec)

MariaDB [csd2204s18]>  exit;
