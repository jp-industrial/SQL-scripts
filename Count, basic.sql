select
    *,
    count(rental_duration) AS number_of_films_with_this_duration
from
	film
group by rental_duration	
    