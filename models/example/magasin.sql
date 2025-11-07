{{ config(materialized='table') }}

SELECT *
FROM (
    VALUES
        (1, 'aldi', 'puteaux'),
        (2, 'monoprix', 'suresnes'),
	(3, 'lidl', 'medenine')
) AS t(id, nom, ville)
