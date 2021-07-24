SHOW DATABASES;
DROP DATABASE IF EXISTS mysql_test;
CREATE DATABASE IF NOT EXISTS mysql_test;
USE mysql_test;
SHOW TABLES;
DROP TABLE IF EXISTS student;
CREATE TABLE student (id int, name VARCHAR(20), age INT, sex char(1), birthday DATE, address VARCHAR(200), math DOUBLE, english DOUBLE);
DESC student;

-- 向数据表插入数据
INSERT INTO student (id, name, age, sex, birthday, address, math, english) VALUES (1, "hefeng6500", 28, 1, '2020-02-02', "深圳市", 99, 88.5);

-- 插入全部数据
INSERT INTO student VALUES(1, "兰亭古墨", 20, 1, '2021-07-24', "深圳市", 100, 99);

SELECT * FROM student;

-- 复制数据表
DROP TABLE IF EXISTS student1;
CREATE TABLE student1 LIKE student;
SHOW TABLES;
DESC student;
-- 复制 student 全部数据到 student1
INSERT INTO student1 SELECT * FROM student;

-- 复制部分列数据到 student1
INSERT INTO student1 (id, name, age) SELECT id, name, age FROM student;
DESC student1;
SELECT * FROM student1;

INSERT INTO student1 VALUES(11, "hefeng6500", 18, 1, '2020-07-24', "深圳市", 20, 10);


-- 更新数据表

-- 更新所有数据的某列的数据
UPDATE student1 SET age = 40;
-- 带条件更新
UPDATE student1 SET sex = 1 WHERE name = 'hefeng6500';
UPDATE student1 SET sex = 1, address = '北京市' WHERE name = 'hefeng6500';




-- 删除表
-- 删除表记录
-- 1. 带条件删除
DELETE FROM student1 WHERE name = '兰亭古墨';
SELECT * FROM student1;
-- 2.全量删除 一条条删除
DELETE FROM student1;
-- 3.直接摧毁数据表记录
TRUNCATE TABLE student1;


-- 查询表
SELECT * FROM student1;
SELECT name AS '姓名' FROM student1;
SELECT name, age FROM student1;
SELECT name AS '姓名', age AS '年龄' FROM student1;

-- 根据列属性去除重复查询
SELECT DISTINCT name, age FROM student1;
SELECT math + english FROM student1;
SELECT math + english '总成绩' FROM student1;
SELECT *, math + english '总成绩' FROM student1;

