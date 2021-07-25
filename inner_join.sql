SHOW DATABASES;
DROP DATABASE IF EXISTS blog;
CREATE DATABASE IF NOT EXISTS blog;
USE blog;
DROP TABLE IF EXISTS articles;
CREATE TABLE articles (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(100) NOT NULL,
  content TEXT NOT NULL,
  create_time DATETIME NOT NULL,
  last_update_time DATETIME NOT NULL,
  auther VARCHAR(50) NOT NULL,
  category_id int UNIQUE,
  view_counts int NOT NULL DEFAULT 0,
  is_original CHAR(1) NOT NULL DEFAULT 1
);
DESC articles;
INSERT INTO
  articles (
    title,
    content,
    create_time,
    last_update_time,
    auther,
    category_id,
    view_counts,
    is_original
  )
VALUES(
    '个人博客搭建之mysql数据库设计',
    'hello world!',
    '2021-07-21 22:25:05',
    '2021-07-21 22:25:05',
    'hefeng6500',
    1,
    0,
    1
  );
INSERT INTO
  articles (
    title,
    content,
    create_time,
    last_update_time,
    auther,
    category_id,
    view_counts,
    is_original
  )
VALUES(
    'javascript基础教程',
    'hello world!',
    '2020-01-23 21:53:16',
    '2020-01-23 21:53:16',
    'hefeng6500',
    2,
    0,
    1
  );
INSERT INTO
  articles (
    title,
    content,
    create_time,
    last_update_time,
    auther,
    category_id,
    view_counts,
    is_original
  )
VALUES(
    'java从入门到精通',
    'hello world!',
    '2020-09-09 21:52:11',
    '2020-09-09 21:52:11',
    'hefeng6500',
    NULL,
    0,
    1
  );
SELECT
  *
FROM
  articles;
-- 创建文章分类表
  DROP TABLE IF EXISTS category_list;
CREATE TABLE category_list (
    id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    category_desc VARCHAR(100),
    create_time DATETIME NOT NULL
  );
DESC category_list;
INSERT INTO
  category_list(name, category_desc, create_time)
VALUES("mysql", "这里是mysql分类描述", '2021-06-05 10:09:00');
INSERT INTO
  category_list(name, category_desc, create_time)
VALUES(
    "web",
    "这里是web分类描述前端基础知识教程",
    '2020-01-24 15:20:25'
  );
INSERT INTO
  category_list(name, category_desc, create_time)
VALUES(
    "python",
    "这里是python教程",
    '2018-08-09 10:20:29'
  );
SELECT
  *
FROM
  category_list;
-- 使用 WHERE 进行的多表关联查询
SELECT
  category_list.id,
  category_list.name,
  category_list.category_desc,
  articles.category_id,
  articles.title,
  articles.auther
FROM
  articles,
  category_list
WHERE
  articles.category_id = category_list.id;
SELECT
  b.id,
  b.name,
  b.category_desc,
  a.category_id,
  a.title,
  a.auther
FROM
  articles a,
  category_list b
WHERE
  a.category_id = b.id;
-- 使用 内连接 进行的多表关联查询
SELECT
  category_list.id,
  category_list.name,
  category_list.category_desc,
  articles.category_id,
  articles.title,
  articles.auther
FROM
  articles
  INNER JOIN category_list ON articles.category_id = category_list.id;
SELECT
  b.id,
  b.name,
  b.category_desc,
  a.category_id,
  a.title,
  a.auther
FROM
  articles a
  INNER JOIN category_list b ON a.category_id = b.id;
-- 外连接
SELECT
  b.id,
  b.name,
  b.category_desc,
  a.category_id,
  a.title,
  a.auther
FROM
  articles a
  LEFT JOIN category_list b ON a.category_id = b.id;

  SELECT
  b.id,
  b.name,
  b.category_desc,
  a.category_id,
  a.title,
  a.auther
FROM
  articles a
  RIGHT JOIN category_list b ON a.category_id = b.id;