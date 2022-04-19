set @hour_list = -1;

select (@hour_list := @hour_list + 1) as "hour", 
(select count(*) from animal_outs where hour(datetime) = @hour_list ) as "count"
    from animal_outs
    where @hour_list <=22
    order by hour;