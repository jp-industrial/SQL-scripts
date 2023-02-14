select
	customer_id,
    count(customer_id) AS total_rentals
from rental

group by
	customer_id

having count(customer_id) < 15