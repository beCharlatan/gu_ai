use shop;

-- 1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.
update users set created_at = now(), updated_at = now();

-- 2. Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате 20.10.2017 8:10. Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.
drop table if exists users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at VARCHAR(255),
  updated_at VARCHAR(255)
) COMMENT = 'Покупатели';

INSERT INTO
  users (name, birthday_at, created_at, updated_at)
VALUES
  ('Геннадий', '1990-10-05', '07.01.2016 12:05', '07.01.2016 12:05'),
  ('Наталья', '1984-11-12', '20.05.2016 16:32', '20.05.2016 16:32'),
  ('Александр', '1985-05-20', '14.08.2016 20:10', '14.08.2016 20:10'),
  ('Сергей', '1988-02-14', '21.10.2016 9:14', '21.10.2016 9:14'),
  ('Иван', '1998-01-12', '15.12.2016 12:45', '15.12.2016 12:45'),
  ('Мария', '2006-08-29', '12.01.2017 8:56', '12.01.2017 8:56'),
  ('Дмитрий', '1985-12-29', '15.04.2018 18:46', '15.04.2018 18:46'),
  ('Елена', '1990-12-30', '17.01.2017 19:05', '17.01.2017 19:05');

alter table users add column created_at_t timestamp default now(), add column updated_at_t timestamp default now();
update users set created_at_t = str_to_date(created_at, '%d.%m.%Y %k:%i'), updated_at_t = str_to_date(updated_at, '%d.%m.%Y %k:%i');
alter table users drop column created_at, drop column updated_at;
alter table users rename column created_at_t to created_at, rename column updated_at_t to updated_at;
alter table users change column created_at created_at datetime default now(), change column updated_at updated_at datetime default now();
select * from users;

-- 3.В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, если товар закончился и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value. Однако нулевые запасы должны выводиться в конце, после всех записей.
DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT 'Запас товарной позиции на складе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Запасы на складе';

INSERT INTO
  storehouses_products (storehouse_id, product_id, value)
VALUES
  (1, 543, 0),
  (1, 789, 2500),
  (1, 3432, 0),
  (1, 826, 30),
  (1, 719, 500),
  (1, 638, 1);

select * from storehouses_products order by value = 0, value;

-- 4. Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. Месяцы заданы в виде списка английских названий (may, august)
select * from users where monthname(birthday_at) = 'may' || monthname(birthday_at) = 'august';

-- 5. Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2); Отсортируйте записи в порядке, заданном в списке IN.
select * from catalogs where id in (5, 1, 2) order by field(id, 5, 1, 2);