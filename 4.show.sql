-- 查看数据库
SHOW DATABASES;

-- 查看数据库字符集
SHOW CREATE DATABASE mysql_test;

-- 查看指定的数据库
SHOW DATABASES LIKE ' mysql_test ';

-- 使用 LIKE 从句，查看名字中包含 test 的数据库
SHOW DATABASES LIKE ' % test % ';

-- 使用 LIKE 从句，查看名字以 test 开头的数据库：
SHOW DATABASES LIKE ' mysql % ';

-- 使用 LIKE 从句，查看名字以 test 结尾的数据库：
SHOW DATABASES LIKE ' % test ';