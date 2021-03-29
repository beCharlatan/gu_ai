use vk_clone;

-- 1. Создать и заполнить таблицы лайков и постов.
drop table if exists likes;
create table likes (
	id serial primary key,
    user_id int unsigned not null,
    target_id int unsigned not null comment "Идентификатор объекта",
    target_type_id int unsigned not null comment "Идентификатор типа объекта",
    like_type tinyint unsigned not null comment "Идентификатор типа лайка (1 - лайк, 0 - дизлайк)",
    created_at datetime default current_timestamp,  
    updated_at datetime default current_timestamp on update current_timestamp
);

drop table if exists target_types;
create table target_types (
  id serial primary key,
  name varchar(255) not null unique comment "Название типа",
  created_at datetime default current_timestamp,  
  updated_at datetime default current_timestamp on update current_timestamp
) COMMENT "Типы объектов лайков";

insert into target_types (name) values ('messages'), ('users'), ('media'), ('posts');
select * from target_types;

DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  community_id INT UNSIGNED,
  head VARCHAR(255),
  body TEXT NOT NULL,
  is_public BOOLEAN DEFAULT TRUE,
  is_archived BOOLEAN DEFAULT FALSE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO posts (user_id, head, body)
  SELECT user_id, substring(body, 1, locate(' ', body) - 1), body FROM (
    SELECT
      (SELECT id FROM users ORDER BY rand() LIMIT 1) AS user_id,
      (SELECT body FROM messages ORDER BY rand() LIMIT 1) AS body
    FROM messages
  ) p;

SELECT * FROM posts;

truncate likes;
INSERT INTO likes (user_id, target_id, target_type_id, like_type) 
  SELECT
    (SELECT id FROM users ORDER BY rand() LIMIT 1),
    (SELECT id FROM messages ORDER BY rand() LIMIT 1),
    (SELECT id FROM target_types WHERE name = 'messages'),
    IF(rand() > 0.5, 0, 1)
  FROM messages
LIMIT 20; 

INSERT INTO likes (user_id, target_id, target_type_id, like_type) 
  SELECT
    (SELECT id FROM users ORDER BY rand() LIMIT 1),
    (SELECT id FROM users ORDER BY rand() LIMIT 1),
    (SELECT id FROM target_types WHERE name = 'users'),
    IF(rand() > 0.5, 0, 1)
  FROM messages
LIMIT 20;

INSERT INTO likes (user_id, target_id, target_type_id, like_type) 
  SELECT
    (SELECT id FROM users ORDER BY rand() LIMIT 1),
    (SELECT id FROM media ORDER BY rand() LIMIT 1),
    (SELECT id FROM target_types WHERE name = 'media'),
    IF(rand() > 0.5, 0, 1)
  FROM messages
LIMIT 20;

INSERT INTO likes (user_id, target_id, target_type_id, like_type) 
  SELECT
    (SELECT id FROM users ORDER BY rand() LIMIT 1),
    (SELECT id FROM posts ORDER BY rand() LIMIT 1),
    (SELECT id FROM target_types WHERE name = 'posts'),
    IF(rand() > 0.5, 0, 1)
  FROM messages
LIMIT 20;

SELECT * FROM likes;

-- 2. Создать все необходимые внешние ключи и диаграмму отношений.
ALTER TABLE profiles
  ADD CONSTRAINT profiles_fk_user_id
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
  ADD CONSTRAINT profiles_fk_gender_id
    FOREIGN KEY (gender_id) REFERENCES gender(id) ON DELETE SET NULL,
  ADD CONSTRAINT profiles_fk_user_status_id
    FOREIGN KEY (user_status_id) REFERENCES user_statuses(id);

ALTER TABLE communities_users
  ADD CONSTRAINT comm_users_fk_comm_id
    FOREIGN KEY (community_id) REFERENCES communities(id),
  ADD CONSTRAINT comm_users_fk_user_id
    FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE messages
  ADD CONSTRAINT messages_fk_from_user_id 
    FOREIGN KEY (from_user_id) REFERENCES users(id),
  ADD CONSTRAINT messages_fk_to_user_id 
    FOREIGN KEY (to_user_id) REFERENCES users(id);

desc friendship;

alter table friendship 
	add constraint friendship_fk_status_id foreign key (status_id) references friendship_statuses(id),
	add constraint friendship_fk_friend_id foreign key (user_id) references users(id),
	add constraint friendship_fk_user_id foreign key (user_id) references users(id);

desc media;

alter table media
	add constraint media_fk_user_id foreign key (user_id) references users(id),
    add constraint media_fk_media_type_id foreign key (media_type_id) references media_types(id);

desc posts;

alter table posts
	add constraint posts_fk_user_id foreign key (user_id) references users(id),
    add constraint posts_fk_community_id foreign key (community_id) references communities(id);

desc likes;

alter table likes add constraint likes_fk_user_id foreign key (user_id) references users(id);
alter table likes add constraint likes_fk_target_type foreign key (target_type_id) references target_types(id);

-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?
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

-- 4. Подсчитать количество лайков которые получили 10 самых молодых пользователей.
select 
	profiles.first_name as name, 
    profiles.birthday, 
    (select count(*) from likes where profiles.user_id = likes.target_id and likes.target_type_id = 2) as amount_of_likes 
from profiles 
order by profiles.birthday desc 
limit 10;

-- 5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети. (допустим это будут люди, которые делают наименьшее количество постов и ставят наименьшее количество лайков)
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











