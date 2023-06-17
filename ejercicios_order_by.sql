-- EJERCICIOS DE COMANDOS ORDER BY Y HAVING

-- Ordenando por la fecha de publicación usando ORDER BY, el modo por defecto es Ascendent (ASC)
SELECT *
FROM posts
ORDER BY fecha_publicacion ASC;

-- Forma descendente
SELECT *
FROM posts
ORDER BY fecha_publicacion DESC;

-- Ordenando por titulo de forma ascendente, de la A-Z
SELECT *
FROM posts
ORDER BY titulo ASC;

SELECT *
FROM posts
ORDER BY titulo DESC;

-- Ordenando por el usuario_id, el valor 'null' va antes que el 1 
SELECT *
FROM posts
ORDER BY usuario_id ASC;

SELECT *
FROM posts
ORDER BY usuario_id DESC;

-- Usando el Comando LIMIT para limitar el número de registros que quiero que me muestre
SELECT *
FROM posts
ORDER BY fecha_publicacion ASC
LIMIT 5;