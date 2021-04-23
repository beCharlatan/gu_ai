use spotify_clone;

-- Выводит все альбомы с песнями
create or replace view show_albums
as
select
	a2.name as 'Альбом',
	count(s.id) as 'Количество песен',
	sum(s.`length`) as 'Продолжительность',
	GROUP_CONCAT(s.name, ', ') as 'Список песен' 
from album_songs as2 
	join songs s on as2.song_id  = s.id
	join albums a2 on a2.id = as2.album_id
group by a2.id
;

-- Выводит все подборки с песнями
create or replace view show_playlists
as
select
	p.name as 'Подборка',
	u.login as 'Автор',
	count(s.id) as 'Количество песен',
	sum(s.`length`) as 'Продолжительность',
	GROUP_CONCAT(s.name, ', ') as 'Список песен'
from paylist_songs ps
	join songs s on ps.song_id = s.id
	join playlists p on p.id = ps.playlist_id
	join users u on u.id = p.user_id 
group by p.id
;