-- 2. �������� ���� ������ example, ���������� � ��� ������� users, ��������� �� ���� ��������, ��������� id � ���������� name.
drop database if exists example;
drop database if exists sample;
create database sample;
create database example;
use example;

create table users (
	id serial primary key,
	name varchar(255)
);
