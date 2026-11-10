SELECT 
	person_id,
	name,
	transcript
FROM interview i
JOIN person p
	ON p.id = i.person_id
WHERE id = 14887 OR id = 16371;