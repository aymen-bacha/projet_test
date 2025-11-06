{{ config(materialized='table') }}

SELECT *
FROM (
    VALUES
        (1, 'aldi', 'puteaux'),
        (2, 'monoprix', 'suresnes')
) AS t(id, nom, ville)
