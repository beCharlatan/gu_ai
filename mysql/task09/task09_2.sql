-- 1. Создайте двух пользователей которые имеют доступ к базе данных shop. Первому пользователю shop_read должны быть доступны только запросы на чтение данных, второму пользователю shop — любые операции в пределах базы данных shop.
drop user if exists user1;
drop user if exists user2;

create user shop_read;
create user shop;

grant select on shop.* to shop_read;
grant all on shop.* to shop;

-- 2. Пусть имеется таблица accounts содержащая три столбца id, name, password, содержащие первичный ключ, имя пользователя и его пароль. Создайте представление username таблицы accounts, предоставляющий доступ к столбца id и name. Создайте пользователя user_read, который бы не имел доступа к таблице accounts, однако, мог бы извлекать записи из представления username.
use sample;

drop user if exists user_read;
drop view if exists username;
drop table if exists accounts;

create table accounts (
	id serial primary key,
    name varchar(100) unique,
    password varchar(100)
);

create view username as select id, name from accounts;

create user user_read;

grant select on sample.username to user_read;