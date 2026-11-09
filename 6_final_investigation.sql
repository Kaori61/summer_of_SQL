SELECT
	p.name,
	height,
	hair_color,
	car_make,
	car_model,
	f.date,
	event_name
FROM person p
JOIN drivers_license d
	ON p.license_id = d.id
JOIN facebook_event_checkin f
	ON f.person_id = p.id
WHERE height = 66
AND LOWER(hair_color) = 'red'
AND LOWER(car_make) = 'tesla'
AND LOWER(car_model) = 'model s'
AND LOWER(event_name) = 'sql symphony concert'
AND f.date like '201712%' ;