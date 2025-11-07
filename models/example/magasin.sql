{{ config(materialized='table') }}

SELECT *
FROM (
    VALUES
        (1, 'aldi', 'puteaux'),
        (2, 'monoprix', 'suresnes'),
	(3, 'mono', 'med')
) AS t(id, nom, ville)
