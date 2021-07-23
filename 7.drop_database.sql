-- 删除数据库

-- 不安全，如果不存在可能会报错
DROP DATABASE mysql_test;

-- 较为安全
DROP DATABASE IF EXISTS mysql_test;