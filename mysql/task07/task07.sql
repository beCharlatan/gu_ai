-- 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
select * from users where users.id in (select orders.user_id from orders);

-- 2. Выведите список товаров products и разделов catalogs, который соответствует товару.
select *, (select catalogs.name from catalogs where catalogs.id = products.catalog_id) as catalog_name from products;

-- 3. Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). Поля from, to и label содержат английские названия городов, поле name — русское. Выведите список рейсов flights с русскими названиями городов.\
select 
	id, 
    (select cities.name from cities where cities.label = flights.from) as from_rus, 
    (select cities.name from cities where cities.label = flights.to) as to_rus 
from flights;