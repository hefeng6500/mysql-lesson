SHOW DATABASES;
DROP DATABASE IF EXISTS blog;
CREATE DATABASE IF NOT EXISTS blog;
USE blog;
DROP TABLE IF EXISTS articles;
CREATE TABLE articles (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(100) NOT NULL,
  content TEXT NOT NULL,
  create_time DATETIME NOT NULL,
  last_update_time DATETIME NOT NULL,
  auther VARCHAR(50) NOT NULL,
  category_id int NOT NULL UNIQUE,
  view_counts int NOT NULL DEFAULT 0,
  is_original CHAR(1) NOT NULL DEFAULT 1
);
DESC articles;
INSERT INTO
  articles
VALUES(
    1,
    'mysql教程',
    'hello world!',
    '2021-07-21 22:25:05',
    '2021-07-21 22:25:05',
    'hefeng6500',
    1,
    0,
    1
  );

  SELECT * FROM articles;

  -- 创建文章分类表
DROP TABLE IF EXISTS category_list;
CREATE TABLE category_list (
  id int PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(20) NOT NULL,
  category_desc VARCHAR(100),
  create_time DATETIME NOT NULL
);
DESC category_list;
INSERT INTO category_list(id, name, category_desc, create_time) VALUES(1, "mysql", "个人mysql学习", '2021-07-24 22:39:25');
SELECT * FROM category_list;
