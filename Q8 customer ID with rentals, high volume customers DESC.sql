select 
	count(rental_id) as count_of_rentals,
    customer_id
    from rental
    group by customer_id
    order by count_of_rentals DESC