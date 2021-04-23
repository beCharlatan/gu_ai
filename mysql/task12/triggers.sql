use spotify_clone;

drop trigger if exists auto_like_song;

delimiter //

-- Триггер, который ставит лайк песне от пользователя, который добавил ее в свою подборку
create trigger auto_like_song after insert on paylist_songs
for each row
begin
	update 
		song_activities 
	set 
		liked = 1 
	where user_id = (
		select 
			p.user_id 
		from playlists p 
		where p.id = NEW.playlist_id
	)
	;
end

delimiter ;