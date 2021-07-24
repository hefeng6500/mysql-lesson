USE mysql_test;

-- 查看当前使用的数据库
SELECT DATABASE();

-- 创建表结构
CREATE TABLE student (
  id INT,
  name VARCHAR(20),
  birthday DATE
);

-- 查看所有表
SHOW TABLES;

-- 查看表
DESC student;

-- LIKE 关键词，创建相同结构的表

CREATE TABLE student1 LIKE student;

DESC student1;

-- 安全的删除表
DROP TABLE IF EXISTS student1;

-- 新增字段
ALTER TABLE student ADD remark VARCHAR(20);

-- 修改表字段类型
ALTER TABLE student MODIFY remark VARCHAR(100);

-- 修改列名
ALTER TABLE student CHANGE remark intro VARCHAR(10);

-- 删除列

ALTER TABLE student DROP intro;

-- 修改表字符集
ALTER TABLE student CHARACTER SET gbk;
SHOW CREATE TABLE student;