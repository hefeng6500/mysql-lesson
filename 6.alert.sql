-- 修改数据库
-- 修改数据库名称：
-- 1. 直接修改会导致数据丢失（官方不推荐）
-- 2. 新增数据库，将原有数据导出，再导入，缺点：数据量很大时，费时间

-- 这里需要在 mysql cmd 中多行执行，否则会报错，原因不明
ALERT DATABASE mysql_test
DEFAULT CHARACTER SET gb2312
DEFAULT COLLATE gb2312_chinese_ci;

ALERT DATABASE mysql_test
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;
