SELECT 
	p.id,
	person_id,
	check_in_date,         
    p.name,
	membership_start_date,
	membership_status,
	plate_number
FROM get_fit_now_member m
JOIN get_fit_now_check_in c
	ON m.id = c.membership_id
JOIN person p
	ON m.person_id = p.id
JOIN drivers_license d
	ON p.license_id = d.id
WHERE check_in_date = 20180109
AND LOWER(membership_status) = 'gold'
AND plate_number like '%H42W%';