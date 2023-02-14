select 
	count(inventory_id) as inventory_items,
    store_id

from inventory

group by store_id