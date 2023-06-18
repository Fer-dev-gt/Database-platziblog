-- Podemos usar el subcomando YEAR para solo tomar en cuenta el año de datos tipo TIMESTAMP
SELECT *
FROM posts
WHERE Year(fecha_publicacion) < '2024';
