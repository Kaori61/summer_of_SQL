SELECT *
FROM crime_scene_report                            
WHERE type = 'murder'
AND lower(city) = 'sql city'
AND date = 20180115;