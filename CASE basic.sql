select 
	first_name,
    last_name,
    CASE
		WHEN store_id = 1 AND active = 1 then 'store 1 active'
        WHEN store_id = 1 AND active = 0 then 'store 1 inactive'
        WHEN store_id = 2 AND active = 1 then 'store 2 active'
        WHEN store_id = 2 AND active = 0 then 'store 2 inactive'
        ELSE 'logic error!'
	END AS store_status

from customer