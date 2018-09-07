SET NAMES UTF8;
DROP TABLE IF EXISTS music_user;
CREATE TABLE music_user(
    uid int primary key auto_increment,
    uname varchar(32),
    upwd varchar(32),
    qq varchar(32),
    pic varchar(64)
);
insert into music_user values("","冰爽猕猴桃","daohaode74","2059354371","img/login/qq.jpg");
