use shop;
-- 1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.
drop table if exists logs;
create table if not exists logs (
	id bigint unsigned not null auto_increment primary key,
	tbl_name varchar(50) not null,
	row_id int unsigned not null,
	row_name varchar(255),
	created_at datetime default current_timestamp
) engine = Archive;

delimiter //

drop trigger if exists users_insert//
create trigger users_insert after insert on users for each row
begin
	insert into logs(row_id, row_name, tbl_name) values (new.id, new.name, 'users');
end//

drop trigger if exists catalogs_insert//
create trigger catalogs_insert after insert on users for each row
begin
	insert into logs(row_id, row_name, tbl_name) values (new.id, new.name, 'catalogs');
end//

drop trigger if exists products_insert//
create trigger products_insert after insert on users for each row
begin
	insert into logs(row_id, row_name, tbl_name) values (new.id, new.name, 'products');
end//

delimiter ;

insert into users(name) values('Артём');
insert into catalogs(name) values('Интерфейсы');
insert into products(name) values('Pilot');

select * from logs;

-- 2. Создайте SQL-запрос, который помещает в таблицу users миллион записей.
drop table if exists test;
create table test (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

INSERT INTO test(name) VALUES
  ('1'), ('2'),
  ('3'), ('4'),
  ('5'), ('6'), 
  ('7'), ('8'),
  ('9'), ('10');
 
select count(*) from
  samples as s1,
  samples as s2,
  samples as s3,
  samples as s4,
  samples as s5,
  samples as s6;
