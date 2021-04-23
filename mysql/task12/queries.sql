use spotify_clone;

call get_sample_data('artists');
call get_sample_data('songs');

select * from users order by created_at desc limit 10;

select
	CONCAT(ar.stage_name, ' (', ar.first_name, ' ', ar.last_name, ')') as 'Исполнитель',
	a.name as 'Альбом',
	s.name as 'Песня'
from songs s 
	join albums a on s.album_id = a.id
	join artists ar on s.artist_id = ar.id
limit 10;

select
	s.name as 'Песня',
	s.description as 'Описание',
	count(sa.play_count) over wsid as 'Количество прослушиваний',
	count(sa.liked) over wsid as 'Количество лайков' 
from songs s
	join song_activities sa on s.id = sa.song_id
window wsid as (partition by s.id)
order by RAND() 
limit 10;

select * from show_albums;

select * from show_playlists;

-- Выводит песни с жанрами
select 
	s.name as 'Песня',
	GROUP_CONCAT(g.name, ', ') as 'Жарны'
from song_genres sg
	join songs s on sg.song_id = s.id
	join genres g on g.id = sg.genre_id 
group by s.id
;

