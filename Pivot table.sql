select
	film_id,
    COUNT(CASE WHEN store_id = 1 then inventory_id else null end) as store_1_copies,
    count(case when store_id = 2 then inventory_id else null end) as store_2_copies,
    count(inventory_id) as total_copies
from inventory
group by film_id
order by film_id;