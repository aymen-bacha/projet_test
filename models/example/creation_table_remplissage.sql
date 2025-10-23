{{ config(materialized='table') }}

SELECT *
FROM (
    VALUES 
        (1, 'bacha', 'aymen'),
        (2, 'bacha', 'wael'),
        (3, 'soula', 'wadia'),
        (4, 'berrajeh', 'mohamed')
) AS t(id, nom, prenom)
