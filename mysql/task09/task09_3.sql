-- 1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".
DELIMITER //

drop function if exists hello;
create function hello ()
returns text deterministic
begin
	declare h int;
    declare g varchar(100);
	set h = hour(current_timestamp());
    
    if h >= 6 and h <= 12 then set g = 'Доброе утро!';
    elseif h > 12 and h <= 18 then set g = 'Добрый день!';
    elseif h > 18 and h <= 0 then set g = 'Добрый вечер!';
    else set g = 'Доброй ночи!';
    end if;
    
    return g;
end //

DELIMITER ;

select hello();

-- 2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием. Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. При попытке присвоить полям NULL-значение необходимо отменить операцию.
drop trigger if exists products_content_gruard;

delimiter //

create trigger products_content_gruard before insert on products
for each row begin
	if new.name is null and new.description is null then 
		signal sqlstate '45000' set message_text = 'Error';
	end if;
end//

delimiter ;

insert into products (name, description) values (null, null);

-- 3. Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. Вызов функции FIBONACCI(10) должен возвращать число 55. 
drop function if exists _fib;

delimiter //

-- без рекурсии
CREATE FUNCTION _fib (n INT)
	RETURNS NUMERIC(38) deterministic
BEGIN
	declare counter INT;
    declare one NUMERIC(38);
    declare two NUMERIC(38);
	
	set two = 1;
	
	IF n > 2 then
		set counter = 3;
		set one = 1;
			
		while n >= counter do
			set two = one + two;
			set one = two - one;
			set counter = counter + 1;
		end while;
    end if;    
	RETURN two;
END//

delimiter ;

select _fib(10);