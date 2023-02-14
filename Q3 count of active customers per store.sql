select distinct
    count(active) as 'active customers',
    store_id
    
from customer
Where active = 1
group by store_id




