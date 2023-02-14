select distinct
	title,
    case
		when rental_duration <= 4 then 'rental_period_too_short'
        when rental_rate >= 3.99 then 'too_expensive'
        when rating in ('NC-17', 'R') then 'too_adult'
        when length not between 60 and 90 then 'too_long_or_too_short'
        else 'good_reco'
        end as fit_for_reco
	from film
    
order by fit_for_reco