-- 
-- create database and user
--
create database if not exists neogary;
create user if not exists 'neogary-dev'@'localhost' identified by 'qwe123*';
grant all privileges on neogary . * to 'neogary-dev'@'localhost';

-- tables
--
-- botcommand
--
drop table if exists neogary.botcommand;
create table neogary.botcommand (
  id int not null auto_increment,
  name varchar(32) not null,
  description varchar(255),
  permtier int not null,
  primary key (id)
);

--
-- role
--
drop table if exists neogary.role;
create table neogary.role (
  id int not null auto_increment,
  discordid varchar(18) not null,
  isassignable boolean not null,
  permtier int not null,
  primary key (id)
);
