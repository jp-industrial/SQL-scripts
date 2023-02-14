select 
	avg(amount) as 'average_payment',
    max(amount) as 'largest_payment'
    from payment