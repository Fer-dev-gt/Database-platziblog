-- EJERCICIOS BASICOS DEL COMANDO SELECT
SELECT *
FROM posts;

SELECT titulo, fecha_publicacion, estatus
FROM posts;

-- Cambiando los nombres de las columnas de los datos seleccionados usando 'AS' (Los nuevos nombres se llaman 'alias')
SELECT titulo AS encabezado, fecha_publicacion AS publicado_en, estatus AS estado
FROM posts;

-- Contamos el número de registros
SELECT COUNT(*)
FROM posts;

-- Tambien le podamos colocar alias
SELECT COUNT(*) AS numero_posts
FROM posts;