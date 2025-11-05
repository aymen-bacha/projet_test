{{ config(materialized='table') }}

SELECT *
FROM (
    VALUES 
        (1, 'Puteaux', '92800'),
        (2, 'Argenteuil', '95100'),
        (3, 'Paris', '75000'),
	(4, 'Medenine' '4100')
) AS t(id, nom, code postal)
