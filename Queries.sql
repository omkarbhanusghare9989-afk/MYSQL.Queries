mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| batch436           |
| capgemini          |
| college            |
| information_schema |
| mysql              |
| omkar              |
| performance_schema |
| srttc_college      |
| sys                |
+--------------------+
9 rows in set (0.00 sec)

mysql> use srttc_college;
Database changed
mysql> desc srttc_college;
ERROR 1146 (42S02): Table 'srttc_college.srttc_college' doesn't exist
mysql> show tables;
+-------------------------+
| Tables_in_srttc_college |
+-------------------------+
| idinformation           |
+-------------------------+
1 row in set (0.03 sec)

mysql> create table studentdata (name varchar(20));
Query OK, 0 rows affected (0.04 sec)

mysql> desc studentdata;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| name  | varchar(20) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
1 row in set (0.00 sec)

mysql> drop table studentdata;
Query OK, 0 rows affected (0.04 sec)

mysql> show tables;
+-------------------------+
| Tables_in_srttc_college |
+-------------------------+
| idinformation           |
+-------------------------+
1 row in set (0.00 sec)

mysql> create database batch425;
Query OK, 1 row affected (0.03 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| batch425           |
| batch436           |
| capgemini          |
| college            |
| information_schema |
| mysql              |
| omkar              |
| performance_schema |
| srttc_college      |
| sys                |
+--------------------+
10 rows in set (0.00 sec)

mysql> drop database batch425;
Query OK, 0 rows affected (0.04 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| batch436           |
| capgemini          |
| college            |
| information_schema |
| mysql              |
| omkar              |
| performance_schema |
| srttc_college      |
| sys                |
+--------------------+
9 rows in set (0.00 sec)

mysql> use srttc_college;
Database changed
mysql> show tables;
+-------------------------+
| Tables_in_srttc_college |
+-------------------------+
| idinformation           |
+-------------------------+
1 row in set (0.00 sec)

mysql> desc idinformation;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| name   | varchar(50) | YES  |     | NULL    |       |
| class  | varchar(20) | YES  |     | NULL    |       |
| branch | varchar(40) | YES  |     | NULL    |       |
| MobNo  | varchar(20) | YES  |     | NULL    |       |
| GrNo   | varchar(20) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> select * from idinformation;
+--------+-------+----------+------------+--------+
| name   | class | branch   | MobNo      | GrNo   |
+--------+-------+----------+------------+--------+
| omkar  | BE    | computer | 8202216422 | 231517 |
| karan  | BE    | computer | 8207644142 | 231523 |
| kartik | BE    | computer | 9881446422 | 231524 |
| apoorv | BE    | computer | 9823425210 | 231524 |
+--------+-------+----------+------------+--------+
4 rows in set (0.00 sec)

mysql> Alter table idinformation drop column grno;
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from idinformation;
+--------+-------+----------+------------+
| name   | class | branch   | MobNo      |
+--------+-------+----------+------------+
| omkar  | BE    | computer | 8202216422 |
| karan  | BE    | computer | 8207644142 |
| kartik | BE    | computer | 9881446422 |
| apoorv | BE    | computer | 9823425210 |
+--------+-------+----------+------------+
4 rows in set (0.00 sec)

mysql> alter table idinformation RENAME TO idINFO;
Query OK, 0 rows affected (0.07 sec)

mysql> select * from idinformation;
ERROR 1146 (42S02): Table 'srttc_college.idinformation' doesn't exist
mysql>  select * from idinfo;
+--------+-------+----------+------------+
| name   | class | branch   | MobNo      |
+--------+-------+----------+------------+
| omkar  | BE    | computer | 8202216422 |
| karan  | BE    | computer | 8207644142 |
| kartik | BE    | computer | 9881446422 |
| apoorv | BE    | computer | 9823425210 |
+--------+-------+----------+------------+
4 rows in set (0.00 sec)

mysql> alter table idinfo RENAME column name TO F_name;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from idinfo;
+--------+-------+----------+------------+
| F_name | class | branch   | MobNo      |
+--------+-------+----------+------------+
| omkar  | BE    | computer | 8202216422 |
| karan  | BE    | computer | 8207644142 |
| kartik | BE    | computer | 9881446422 |
| apoorv | BE    | computer | 9823425210 |
+--------+-------+----------+------------+
4 rows in set (0.00 sec)

mysql> Alter table idinfo ADD COLUMN GrNo varcahr(10);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'varcahr(10)' at line 1
mysql> Alter table idinfo ADD COLUMN GrNo varchar(10);
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc idinfo;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| F_name | varchar(50) | YES  |     | NULL    |       |
| class  | varchar(20) | YES  |     | NULL    |       |
| branch | varchar(40) | YES  |     | NULL    |       |
| MobNo  | varchar(20) | YES  |     | NULL    |       |
| GrNo   | varchar(10) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> select * from idinfo;
+--------+-------+----------+------------+------+
| F_name | class | branch   | MobNo      | GrNo |
+--------+-------+----------+------------+------+
| omkar  | BE    | computer | 8202216422 | NULL |
| karan  | BE    | computer | 8207644142 | NULL |
| kartik | BE    | computer | 9881446422 | NULL |
| apoorv | BE    | computer | 9823425210 | NULL |
+--------+-------+----------+------------+------+
4 rows in set (0.00 sec)

mysql> alter table idinfo MODIFY COLUMN GrNo int;
Query OK, 4 rows affected (0.07 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from idinfo;
+--------+-------+----------+------------+------+
| F_name | class | branch   | MobNo      | GrNo |
+--------+-------+----------+------------+------+
| omkar  | BE    | computer | 8202216422 | NULL |
| karan  | BE    | computer | 8207644142 | NULL |
| kartik | BE    | computer | 9881446422 | NULL |
| apoorv | BE    | computer | 9823425210 | NULL |
+--------+-------+----------+------------+------+
4 rows in set (0.00 sec)