SET NAMES UTF8;
#丢弃数据库tedu，如果存在的话
DROP DATABASE IF EXISTS  music;
#创建数据库tedu，使用UTF8字符集
CREATE DATABASE music CHARSET=UTF8;
#进入数据库tedu
USE music;
CREATE TABLE music_list(
  mid INT primary key auto_increment,
  mtitle  VARCHAR(32)  UNIQUE  NOT  NULL, 
  mtime  varchar(8),
msinger varchar(32),
mpic varchar(64)
);
insert into music_list value("","答案","03:51","杨坤/郭采洁","img/myMusic/001.jpg"),
("","那是你离开了背景的生活","04:28","薛之谦","img/myMusic/002.jpg"),
("","成长之重量","03:51","李荣浩","img/myMusic/003.jpg"),
("","纸短情长","03:11","烟把儿乐队","img/myMusic/004.jpg"),
("","9277","04:51","宋孟君/威仔","img/myMusic/005.jpg"),
("","讲真的","03:17","于晴","img/myMusic/006.jpg"),
("","天地","03:36","吴亦凡","img/myMusic/007.jpg"),
("","不仅仅是喜欢","03:48","萧全/孙语赛","img/myMusic/008.jpg"),
("","苦行僧","03:11","Gai","img/myMusic/009.jpg"),
("","变","03:31","Tizz-t","img/myMusic/010.jpg"),
("","Time","03:32","小青龙/辉子","img/myMusic/011.jpg"),
("","体面","03:13","于文文","img/myMusic/012.jpg"),
("","空空如也","03:31","胡66","img/myMusic/013.jpg"),
("","That Girl","02:56","Olly Murs","img/myMusic/014.jpg"),
("","每一句都很甜","02:51","新乐尘符","img/myMusic/015.jpg"),
("","See You Again","03:51","速度与激情","img/myMusic/016.jpg");