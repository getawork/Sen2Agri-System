create or replace function sp_mark_l1_tile_failed(
    _satellite_id int,
    _orbit_id int,
    _tile_id text,
    _reason text
)
returns int
as
$$
declare _downloader_history_id int;
begin
	if (select current_setting('transaction_isolation') not ilike 'serializable') then
		raise exception 'Please set the transaction isolation level to serializable.' using errcode = 'UE001';
	end if;

    update l1_tile_history
    set status_id = 2, -- failed
        status_timestamp = now(),
        retry_count = retry_count + 1,
        failed_reason = _reason
    where (satellite_id, orbit_id, tile_id) = (_satellite_id, _orbit_id, _tile_id)
      and status_id = 1 -- processing
    returning downloader_history_id
    into _downloader_history_id;

    return sp_update_l1_tile_status(_downloader_history_id);
end;
$$ language plpgsql volatile;
