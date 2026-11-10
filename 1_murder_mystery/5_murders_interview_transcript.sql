SELECT
	name,
	transcript
FROM person p
JOIN interview i
	ON p.id = i.person_id
WHERE name = 'Jeremy Bowers';