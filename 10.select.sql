USE mysql_test;

INSERT INTO student1 (id, name, age, sex, birthday, address, math, english) VALUES (1, "hefeng6500", 28, 1, '2021-02-02', "北京市", 19, 88.5);
INSERT INTO student1 (id, name, age, sex, birthday, address, math, english) VALUES (1, "兰亭古墨", 30, 1, '2020-02-02', "深圳市", 60, 50.5);


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