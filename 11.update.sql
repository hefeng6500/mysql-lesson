SHOW DATABASES;
DROP DATABASE IF EXISTS mysql_test;
CREATE DATABASE IF NOT EXISTS mysql_test;
USE mysql_test;
SHOW TABLES;
DROP TABLE IF EXISTS student1;
CREATE TABLE student1 (id int, name VARCHAR(20), age INT, sex char(1), birthday DATE, address VARCHAR(200), math DOUBLE, english DOUBLE);
DESC student1;
INSERT INTO student1 (id, name, age, sex, birthday, address, math, english) VALUES (1, "hefeng6500", 28, 1, '2021-02-02', "北京市", 19, 88.5);
INSERT INTO student1 (id, name, age, sex, birthday, address, math, english) VALUES (1, "兰亭古墨", 30, 1, '2020-02-02', "深圳市", 60, 50.5);


-- 更新数据表

-- 更新所有数据的某列的数据
UPDATE student1 SET age = 28;
-- 带条件更新
UPDATE student1 SET sex = 1 WHERE name = 'hefeng6500';
UPDATE student1 SET sex = 1, address = '南京市' WHERE name = 'hefeng6500';

SELECT * FROM student1;