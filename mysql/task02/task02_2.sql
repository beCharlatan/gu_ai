-- 2. Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name.
drop database if exists example;
drop database if exists sample;
create database sample;
create database example;
use example;

create table users (
	id serial primary key,
	name varchar(255)
);
