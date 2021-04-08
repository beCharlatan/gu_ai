use vk_clone;
-- 1. Проанализировать, какие запросы могут выполняться наиболее часто в процессе работы приложения, и добавить необходимые индексы.
alter table profiles drop index profiles_fst_name_idx;
create index profiles_fst_name_idx on profiles(first_name);

alter table posts drop index posts_head_idx;
create index posts_head_idx on posts(head);

alter table communities drop index communities_name_idx;
create index communities_name_idx on communities(name);

alter table media_types drop index media_types_name_idx;
create unique index media_types_name_idx on media_types(name);

alter table communities_users drop index communities_users_cid_uid_idx;
create unique index communities_users_cid_uid_idx on communities_users(community_id, user_id);

alter table friendship drop index friendship_uid_fid_sid_idx;
create unique index friendship_uid_fid_sid_idx on friendship(user_id, friend_id, status_id);

-- 2. Задание на оконные функции. Построить запрос, который будет выводить следующие столбцы:
-- имя группы
-- среднее количество пользователей в группах
-- самый молодой пользователь в группе
-- самый старший пользователь в группе
-- общее количество пользователей в группе
-- всего пользователей в системе
-- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100
select distinct
	c.name,
    min(p.birthday) over wcid as youngest_comm_user,
    max(p.birthday) over wcid as oldest_comm_user,
    count(cu.user_id) over wcid as total_comm_users,
    count(p.user_id) over () as total_users,
    count(cu.user_id) over wcid / count(p.user_id) over () * 100 as comm_users_percent
from communities c 
join communities_users cu on c.id = cu.community_id 
join profiles p on cu.user_id = p.user_id
window wcid as (partition by c.id);