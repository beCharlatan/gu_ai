drop database if exists spotify_clone;

create database spotify_clone;

use spotify_clone;

create table users (
	id serial primary key,
	email varchar(100) unique not null comment '����������� ����� ������������',
	password varchar(100) not null comment '������ ������������',
	first_name varchar(100) not null comment '��� ������������',
	last_name varchar(100) comment '������� ������������',
	login varchar(100) unique not null comment '���������� ���� ������������ (���������, �������)',
	twitter_url varchar(100) unique comment '������ �� twitter-�������',
	facebook_url varchar(100) unique comment '������ �� facebook-�������',
	inst_url varchar(100) unique comment '������ �� instargam-�������',
	avatar_id bigint unsigned comment '������������� ����� ����� ��� �������',
	created_at datetime default current_timestamp,
	updated_at datetime default current_timestamp
) comment '������� ����������';

create table artists (
	id serial primary key,
	first_name varchar(100) comment '��� �����������',
	last_name varchar(100) comment '������� ������������',
	stage_name varchar(100) not null comment '����������� ��������� �����������',
	avatar_id bigint unsigned comment '������������� ����� ����� ��� �������',
	created_at datetime default current_timestamp,
	updated_at datetime default current_timestamp
) comment '������� ������������';

create table songs (
	id serial primary key,
	album_id bigint unsigned comment '������������� ������������ �������',
	artist_id bigint unsigned not null comment '������������� ������ ����������',
	name varchar(255) not null comment '�������� ����������',
	file_url varchar(255) not null comment '������ �� ����� ���� ����������',
	length float not null comment '������������ ����������',
	description text comment '�������� ����������',
	cover_id bigint unsigned comment '������������� ����� ����� ��� ������� ����������',
	created_at datetime default current_timestamp,
	updated_at datetime default current_timestamp
) comment '������� ����������';

create table albums (
	id serial primary key,
	artist_id bigint unsigned not null comment '������������� ������ ����������',
	name varchar(255) not null comment '�������� �������',
	cover_id bigint unsigned comment '������������� ����� ����� ��� ������� �������',
	created_at datetime default current_timestamp,
	updated_at datetime default current_timestamp
) comment '������� ����������� ��������';

create table album_songs (
	album_id bigint unsigned not null comment '������������� �������',
	song_id bigint unsigned not null comment '������������� ����������',
	song_order int unsigned not null comment '����������� ����� � �������'
) comment '������� ���������� � ������ �������';

create table playlists (
	id serial primary key,
	user_id bigint unsigned not null comment '������������� ������ ��������',
	name varchar(100) not null comment '�������� ��������',
	created_at datetime default current_timestamp,
	updated_at datetime default current_timestamp
) comment '������� ���������������� ��������';

create table paylist_songs (
	playlist_id bigint unsigned not null comment '������������� ��������',
	song_id bigint unsigned not null comment '������������� ����������'
) comment '������� ����� � ��������';

create table song_activities (
	id serial primary key,
	user_id bigint unsigned not null comment '������������� ������������',
	song_id bigint unsigned not null comment '������������� ����������',
	liked boolean not null default false comment '����������� �� ���������� (������� � �� �� ������������)',
	play_count int not null default 0 comment '���������� �������������',
	created_at datetime default current_timestamp,
	updated_at datetime default current_timestamp
) comment '������� �������������� ������������ � ����������';

create table genres (
	id serial primary key,
	name varchar(100) not null comment '������������ �����'
) comment '���������� ����������� ������';

create table song_genres (
	song_id bigint unsigned not null comment '������������� ����������',
	genre_id bigint unsigned not null comment '������������� �����'
) comment '������� ����������� ������ ���������� (�������, ��� ���� ���������� ����� ������ ������ ������������ �����)';

create table images (
	id serial primary key,
	name varchar(100) not null comment '�������� �����',
	file_size bigint unsigned not null comment '������ �����',
	url varchar(255) not null comment '������ �� ����'
) comment '���������� (�������, ��� �������� ������ ����� ���� images)';

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