-- EJERCICIOS DEL COMANDO GROUP BY

-- Seleccionamos la columna estatus y creamos una nueva columna llamada 'post_quantity' donde contamos con COUNT(*) los registros que estan como activo e inactivo usando el Comando GROUP BY
SELECT estatus, COUNT(*) AS post_quantity
FROM posts 
GROUP BY estatus;

-- Podemos tambien usar el GROUP BY para sumar por ejemplo las cantindades de una cuenta bancaria
SELECT estatus, SUM(id) suma_id
FROM posts
GROUP BY estatus;

-- Agrupamos por la fecha de publicación y mostramos cuantos posts se hicieron por año, con formato (YEAR)
SELECT YEAR(fecha_publicacion) AS post_year, COUNT(*) AS post_quantity
FROM posts
GROUP BY post_year;

-- Tambien podemos seleccionar por nombre del mes para el apartado de fecha de publicación de post usando el Comando MONTHNAME
SELECT MONTHNAME(fecha_publicacion) AS post_month, COUNT(*) AS post_quantity
FROM posts
GROUP BY post_month;

-- Podemos agrupar por varios campos (columnas) en este caso agrupamos por el estatus y por la fecha de publicacion
SELECT estatus, MONTHNAME(fecha_publicacion) AS post_month, COUNT(*) AS post_quantity
FROM posts
GROUP BY estatus, post_month; -- Le digo que primero los agrupe por estatus y luego por post_month