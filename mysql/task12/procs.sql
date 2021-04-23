use spotify_clone;

drop procedure if exists get_sample_data;

delimiter //

-- �������� 10 ����� �� �������, ���������� � ����������
create procedure get_sample_data (tbl_name varchar(50))
begin
	set @sql := CONCAT('select * from ', tbl_name,' limit 10');
  	prepare stmt from @SQL;
  	execute stmt;
  	deallocate prepare stmt;
end

delimiter ;