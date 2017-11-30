CREATE USER ‘dbuser’@'localhost' IDENTIFIED BY '123';
create database `first_db` character set utf8 collate utf8_general_ci;

GRANT ALL PRIVILEGES ON first_db.* TO 'dbuser'@'localhost'; 

use first_db;

create table `dz_v1_musicalgroup` (
	`id` int(11) not null auto_increment,
    `name` char(30) not null,
    `date_create` date not null,
    `description` char(100) not null,
    primary key(`id`)
);

create table `dz_v1_user`(
	`id` int(11) not null auto_increment,
    `name` char(30) not null,
    `login` char(30) not null,
    `password` char(30) not null,
    primary key(`id`)
);

create table `dz_v1_user_group`(
	`id` int(11) not null auto_increment,
    `id_group` int(11) not null,
    `id_user` int(11) not null,
    primary key(`id`)
);

ALTER TABLE `dz_v1_user_group` ADD FOREIGN KEY ( `id_group` ) REFERENCES `dz_v1_musicalgroup` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT ;
ALTER TABLE `dz_v1_user_group` ADD FOREIGN KEY ( `id_user` ) REFERENCES `dz_v1_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT ;
