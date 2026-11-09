--First witness
SELECT 
	id,
	name,
	license_id,
	max(address_number) as address_number,
	address_street_name,
	ssn
FROM person
WHERE address_street_name = 'Northwestern Dr';

--Second witness
SELECT *
FROM person
WHERE name like 'Annabel%'
AND address_street_name = 'Franklin Ave';
