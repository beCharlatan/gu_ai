use shop;

-- 1. Подсчитайте средний возраст пользователей в таблице users.
select avg(
	timestampdiff(
		year, 
        birthday_at, 
        now()
	)
) as avg_age from users;

-- 2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. Следует учесть, что необходимы дни недели текущего года, а не года рождения.
select date_format(date(concat_ws('-', year(now()), month(birthday_at), day(birthday_at))), '%W') as day, COUNT(*) as total from users group by day;

-- 3. Подсчитайте произведение чисел в столбце таблицы.
SELECT ROUND(
	EXP(
		SUM(
			LN(
				id
			)
		)
	)
) as product_ids FROM catalogs;