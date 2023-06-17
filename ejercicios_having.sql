-- EJERCICIOS DEL COMANDO HAVING

-- Si usamos WHERE nos devuelve un error, ya que WHERE selecciona los rowsantes de hacer la parte de la agrupación
SELECT MONTHNAME(fecha_publicacion) AS post_month, estatus, COUNT(*) as post_quantity 
FROM posts
WHERE post_quantity > 2			                                                                                       -- Nos devuelve un error, por eso debemos usar HAVING despues de realizar la agrupación
GROUP BY estatus, post_month
ORDER BY post_month;


-- El comando HAVING nos ayuda a filtrar cuando ya realizamos una agrupación con GROUP BY
-- En este Query seleccionamos los registros que tengan un post_quantity mayor a 1 y los agrupamos por estatus y post_month y de ultimo lo ordenamos por post_month
SELECT MONTHNAME(fecha_publicacion) AS post_month, estatus, COUNT(*) as post_quantity
FROM posts
GROUP BY estatus, post_month
HAVING post_quantity > 1
ORDER BY post_month;

