SET NAMES UTF8;
#�������ݿ�tedu��������ڵĻ�
DROP DATABASE IF EXISTS  music;
#�������ݿ�tedu��ʹ��UTF8�ַ���
CREATE DATABASE music CHARSET=UTF8;
#�������ݿ�tedu
USE music;
CREATE TABLE music_list(
  mid INT primary key auto_increment,
  mtitle  VARCHAR(32)  UNIQUE  NOT  NULL, 
  mtime  varchar(8),
msinger varchar(32),
mpic varchar(64)
);
insert into music_list value("","��","03:51","����/���ɽ�","img/myMusic/001.jpg"),
("","�������뿪�˱���������","04:28","Ѧ֮ǫ","img/myMusic/002.jpg"),
("","�ɳ�֮����","03:51","���ٺ�","img/myMusic/003.jpg"),
("","ֽ���鳤","03:11","�̰Ѷ��ֶ�","img/myMusic/004.jpg"),
("","9277","04:51","���Ͼ�/����","img/myMusic/005.jpg"),
("","�����","03:17","����","img/myMusic/006.jpg"),
("","���","03:36","���ෲ","img/myMusic/007.jpg"),
("","��������ϲ��","03:48","��ȫ/������","img/myMusic/008.jpg"),
("","����ɮ","03:11","Gai","img/myMusic/009.jpg"),
("","��","03:31","Tizz-t","img/myMusic/010.jpg"),
("","Time","03:32","С����/����","img/myMusic/011.jpg"),
("","����","03:13","������","img/myMusic/012.jpg"),
("","�տ���Ҳ","03:31","��66","img/myMusic/013.jpg"),
("","That Girl","02:56","Olly Murs","img/myMusic/014.jpg"),
("","ÿһ�䶼����","02:51","���ֳ���","img/myMusic/015.jpg"),
("","See You Again","03:51","�ٶ��뼤��","img/myMusic/016.jpg");