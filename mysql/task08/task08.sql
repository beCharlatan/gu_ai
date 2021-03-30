-- 1. Переписать запросы, заданные к ПЗ урока 6 (п.3,4,5), с использованием JOIN
-- уже там я использовал джоины в пунктах 3 и 5:
-- п.3
select
	gender.gender as gender_name,
    count(*) as amount_of_likes
from likes 
join profiles 
    on likes.user_id = profiles.user_id
join gender
	on profiles.gender_id = gender.id
group by gender.gender
order by amount_of_likes desc;

-- п.5
select
	profiles.user_id,
    profiles.first_name,
    count(*) as amount_of_likes_and_posts
from profiles
join likes
	on likes.user_id = profiles.user_id
join posts
	on profiles.user_id = posts.user_id
group by profiles.user_id
order by amount_of_likes_and_posts
limit 10;

-- п.4
select 
	likes.target_id, 
    profiles.first_name, 
    profiles.birthday,
    count(*) as amount_of_likes
from likes
join profiles 
	on likes.target_id = profiles.user_id 
where likes.target_type_id = 2
group by likes.target_id
order by profiles.birthday desc
limit 10;

-- 2. Доработать запрос "Список медиафайлов пользователя с количеством лайков", чтобы он выводил количество лайков и дизлайков
-- изначальный запрос:
-- SELECT
--   m.filename,
--   CONCAT(p.first_name, ' ', p.last_name) AS owner,
--   count(l.target_id) AS total_likes
-- FROM media m
-- JOIN users u ON u.id = m.user_id
-- JOIN profiles p ON p.user_id = u.id
-- LEFT JOIN likes l ON l.target_id = m.id AND l.target_type_id = 3
-- WHERE u.id = 5
-- GROUP BY m.id;

-- итог:
select
	media.filename,
	CONCAT(profiles.first_name, ' ', profiles.last_name) AS owner,
    sum(if(likes.like_type = 0, 1, 0)) as dislikes,
    sum(if(likes.like_type = 1, 1, 0)) as likes,
    count(likes.target_id) as total_likes
from media 
join profiles 
	on profiles.user_id = media.user_id
left join likes 
	on likes.target_id = media.id && likes.target_type_id = 3
group by media.id
order by total_likes desc
limit 5;



