mysql> CREATE DATABASE college;
Query OK, 1 row affected (0.01 sec)

mysql> USE college;
Database changed
mysql> CREATE TABLE student(
    -> id INT PRIMART KEY,
    -> name VARCHAR(50),
    -> department VRACHAR(30),
    -> marks INT,
    -> city VARCHAR(30)
    -> );
mysql> DELIMITER //
mysql> CREATE FUNCTION calculate_square(n INT)
    -> RETURNS INT
    -> DETERMINISTIC
    -> BEGIN
    ->     RETURN n * n;
    -> END //
Query OK, 0 rows affected (0.01 sec)
mysql> DELIMITER ;
mysql> SELECT calculate_square(5);
+---------------------+
| calculate_square(5) |
+---------------------+
|                  25 |
+---------------------+
1 row in set (0.01 sec)
mysql> DELIMITER //
mysql> CREATE FUNCTION total_marks(a INT, b INT, c INT)
    -> RETURNS INT
    -> DETERMINISTIC
    -> BEGIN
    ->     RETURN a + b + c;
    -> END //
Query OK, 0 rows affected (0.01 sec)
mysql> DELIMITER ;
mysql> SELECT total_marks(80, 85, 90);
+-------------------------+
| total_marks(80, 85, 90) |
+-------------------------+
|                     255 |
+-------------------------+
1 row in set (0.00 sec)
