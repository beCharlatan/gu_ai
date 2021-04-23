drop database if exists spotify_clone;

create database spotify_clone;

use spotify_clone;

create table users (
	id serial primary key,
	email varchar(100) unique not null comment 'Электронная почта пользователя',
	password varchar(100) not null comment 'Пароль пользователя',
	first_name varchar(100) not null comment 'Имя пользователя',
	last_name varchar(100) comment 'Фамилия пользователя',
	login varchar(100) unique not null comment 'Уникальный логи пользователя (псевдоним, никнэйм)',
	twitter_url varchar(100) unique comment 'Ссылка на twitter-аккаунт',
	facebook_url varchar(100) unique comment 'Ссылка на facebook-аккаунт',
	inst_url varchar(100) unique comment 'Ссылка на instargam-аккаунт',
	avatar_id bigint unsigned comment 'Идентификатор медиа файла для аватара',
	created_at datetime default current_timestamp,
	updated_at datetime default current_timestamp
) comment 'Таблица слушателей';

create table artists (
	id serial primary key,
	first_name varchar(100) comment 'Имя исполнителя',
	last_name varchar(100) comment 'Фамилия пользователя',
	stage_name varchar(100) not null comment 'Сценический псевдоним исполнителя',
	avatar_id bigint unsigned comment 'Идентификатор медиа файла для аватара',
	created_at datetime default current_timestamp,
	updated_at datetime default current_timestamp
) comment 'Таблица исполнителей';

create table songs (
	id serial primary key,
	album_id bigint unsigned comment 'Идентификатор музыкального альбома',
	artist_id bigint unsigned not null comment 'Идентификатор автора композиции',
	name varchar(255) not null comment 'Название композиции',
	file_url varchar(255) not null comment 'Ссылка на медиа файл композиции',
	length float not null comment 'Длительность композиции',
	description text comment 'Описание композиции',
	cover_id bigint unsigned comment 'Идентификатор медиа файла для обложки композиции',
	created_at datetime default current_timestamp,
	updated_at datetime default current_timestamp
) comment 'Таблица композиций';

create table albums (
	id serial primary key,
	artist_id bigint unsigned not null comment 'Идентификатор автора композиции',
	name varchar(255) not null comment 'Название альбома',
	cover_id bigint unsigned comment 'Идентификатор медиа файла для обложки альбома',
	created_at datetime default current_timestamp,
	updated_at datetime default current_timestamp
) comment 'Таблица музыкальных альбомов';

create table album_songs (
	album_id bigint unsigned not null comment 'Идентификатор альбома',
	song_id bigint unsigned not null comment 'Идентификатор композиции',
	song_order int unsigned not null comment 'Очередность песни в альбоме'
) comment 'Маппинг композиций в рамках альбома';

create table playlists (
	id serial primary key,
	user_id bigint unsigned not null comment 'Идентификатор автора подборки',
	name varchar(100) not null comment 'Название подборки',
	created_at datetime default current_timestamp,
	updated_at datetime default current_timestamp
) comment 'Таблица пользовательских подборок';

create table paylist_songs (
	playlist_id bigint unsigned not null comment 'Идентификатор подборки',
	song_id bigint unsigned not null comment 'Идентификатор композиции'
) comment 'Маппинг песен в подборке';

create table song_activities (
	id serial primary key,
	user_id bigint unsigned not null comment 'Идентификатор пользователя',
	song_id bigint unsigned not null comment 'Идентификатор композиции',
	liked boolean not null default false comment 'Понравилась ли композиция (дизлайк в бд не предусмотрен)',
	play_count int not null default 0 comment 'Количество прослушиваний',
	created_at datetime default current_timestamp,
	updated_at datetime default current_timestamp
) comment 'Таблица взаимодействия пользователя и композиции';

create table genres (
	id serial primary key,
	name varchar(100) not null comment 'Наименование жанра'
) comment 'Справочник музыкальных жанров';

create table song_genres (
	song_id bigint unsigned not null comment 'Идентификатор композиции',
	genre_id bigint unsigned not null comment 'Идентификатор жанра'
) comment 'Маппинг музыкальных жанров композиции (считаем, что одна композиция может больше одного музыкального жарна)';

create table images (
	id serial primary key,
	name varchar(100) not null comment 'Название файла',
	file_size bigint unsigned not null comment 'Размер файла',
	url varchar(255) not null comment 'Ссылка на файл'
) comment 'Медиафайлы (считаем, что хранятся только файлы типа images)';

alter table users add constraint users_fk_images_id foreign key (avatar_id) references images(id) on delete set null;
alter table artists add constraint artists_fk_images_id foreign key (avatar_id) references images(id) on delete set null;

alter table songs
	add constraint songs_fk_albums_id foreign key (album_id) references albums(id) on delete set null,
	add constraint songs_fk_artists_id foreign key (artist_id) references artists(id) on delete cascade,
	add constraint songs_fk_cover_id foreign key (cover_id) references images(id) on delete set null
; 

alter table albums 
	add constraint albums_fk_artists_id foreign key (artist_id) references artists(id) on delete cascade, 
	add constraint albums_fk_cover_id foreign key (cover_id) references images(id) on delete set null
;

alter table album_songs 
	add constraint album_songs_fk_album_id foreign key (album_id) references albums(id) on delete cascade, 
	add constraint album_songs_fk_song_id foreign key (song_id) references songs(id) on delete cascade
;

alter table playlists add constraint playlists_fk_user_id foreign key (user_id) references users(id) on delete cascade;

alter table paylist_songs 
	add constraint paylist_songs_fk_playlist_id foreign key (playlist_id) references playlists(id) on delete cascade,
	add constraint paylist_songs_fk_song_id foreign key (song_id) references songs(id) on delete cascade
;

alter table song_activities 
	add constraint song_activities_fk_user_id foreign key (user_id) references users(id) on delete cascade,
	add constraint song_activities_fk_song_id foreign key (song_id) references songs(id) on delete cascade
;

alter table song_genres
	add constraint song_genres_fk_song_id foreign key (song_id) references songs(id) on delete cascade,
	add constraint song_genres_fk_genre_id foreign key (genre_id) references genres(id) on delete cascade
;

create index users_first_name_idx on users(first_name);
create index users_login_idx on users(login);

create index artists_first_name_idx on artists(first_name);
create index artists_stage_name_idx on artists(stage_name);

create index songs_name_idx on songs(name);

create index albums_name_idx on albums(name);

create unique index album_songs_aid_sid_idx on album_songs(album_id, song_id);

create index playlists_name_idx on playlists(name);

create index playlist_songs_pid_sid_idx on paylist_songs(playlist_id, song_id);

create unique index song_activities_uid_sid_idx on song_activities(user_id, song_id);

create unique index genres_name_idx on genres(name);

create unique index song_genres_sid_gid_idx on song_genres(song_id, genre_id);