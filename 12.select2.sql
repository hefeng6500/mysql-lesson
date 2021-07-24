USE mysql_test;
DROP TABLE IF EXISTS student;
CREATE TABLE student (id int, name VARCHAR(20), age INT, sex char(1), birthday DATE, address VARCHAR(200), math DOUBLE, english DOUBLE);
INSERT INTO student (id, name, age, sex, birthday, address, math, english) VALUES (1, "hefeng6500", 28, 1, '2020-02-02', "深圳市", 99, 88.5);
INSERT INTO student (id, name, age, sex, birthday, address, math, english) VALUES (2, "兰亭古墨", 28, 1, '2002-02-02', "北京市", 80, 60);
INSERT INTO student (id, name, age, sex, birthday, address, math, english) VALUES (2, "萧何问情", 28, 1, '2001-02-02', "南京市", 90, 63);
SELECT * FROM student;


-- 条件查询
