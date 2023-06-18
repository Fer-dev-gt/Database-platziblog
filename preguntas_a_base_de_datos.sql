-- Realizamos un INNER JOIN de 3 Tablas para mostrar el número de etiquetas que tiene cada post
SELECT posts.titulo, COUNT(*) AS num_etiquetas
FROM posts
INNER JOIN posts_etiquetas ON posts.id = posts_etiquetas.post_id
INNER JOIN etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
GROUP BY posts.id;


SELECT posts.titulo, COUNT(*) AS num_etiquetas
FROM posts
INNER JOIN posts_etiquetas ON posts.id = posts_etiquetas.post_id
INNER JOIN etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
GROUP BY posts.id
ORDER BY num_etiquetas DESC;


-- El nombre de los tags/categorias que pertenecen a cada posts usando el comando GROUP_CONCAT() 
-- GROUP_CONCAT en ves de agrupar el resultado del query en un row tras otro, los coloca en un solo campo separado por comas
SELECT posts.titulo, GROUP_CONCAT(nombre_etiqueta SEPARATOR " - ")
FROM posts
INNER JOIN posts_etiquetas ON posts.id = posts_etiquetas.post_id
INNER JOIN etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
GROUP BY posts.id;


-- Manera de darle formato al comando GROUP_CONCAT() con los comandos DISTINCT, ORDER BY y SEPARATOS
SELECT posts.titulo, GROUP_CONCAT(DISTINCT etiquetas.nombre_etiqueta ORDER BY etiquetas.nombre_etiqueta SEPARATOR " - "), posts.id, COUNT(*) AS num_etiquetas
FROM posts
INNER JOIN posts_etiquetas ON posts.id = posts_etiquetas.post_id
INNER JOIN etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
GROUP BY posts.id
ORDER BY num_etiquetas DESC;


-- Mostramos cuales son aquellas etiquetas que no tienen algun posts asociado
SELECT *
FROM etiquetas
LEFT JOIN posts_etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
WHERE posts_etiquetas.etiqueta_id IS NULL;


-- Mostramos las categorias que tienen mas posts
SELECT c.nombre_categoria, COUNT(*) AS cantidad_posts
FROM categorias AS c
INNER JOIN posts AS p ON c.id = p.categoria_id
GROUP BY c.id
ORDER BY cantidad_posts DESC;


-- Para mostrar la categoria con mas posts
SELECT c.nombre_categoria, COUNT(*) AS cantidad_posts
FROM categorias AS c
INNER JOIN posts AS p ON c.id = p.categoria_id
GROUP BY c.id
ORDER BY cantidad_posts DESC
LIMIT 1;


-- Mostramos que usuario ha creado más posts en el sistema
SELECT u.nickname, COUNT(*) AS cantidad_posts
FROM usuarios AS u
INNER JOIN posts AS p ON u.id = p.usuario_id
GROUP BY u.id
ORDER BY cantidad_posts DESC;


-- Ahora tambien quiero saber de que categorias estan escribiendo estos usuarios (Tenemos que hacer un INNER JOIN de 3 tablas)
SELECT u.nickname, COUNT(*) AS cantidad_posts, GROUP_CONCAT(nombre_categoria SEPARATOR " - ")
FROM usuarios AS u
INNER JOIN posts AS p ON u.id = p.usuario_id
INNER JOIN categorias AS c ON c.id = p.categoria_id
GROUP BY u.id
ORDER BY cantidad_posts DESC;


-- Usando el Subcomando de DISTINCT le decimos a GROUP_CONCAT que muestre los datos 1 vez, evitando que muestre categorias repetidas como: "ciencia - ciencia"
SELECT u.nickname, COUNT(*) AS cantidad_posts, GROUP_CONCAT(DISTINCT nombre_categoria SEPARATOR " - ")
FROM usuarios AS u
INNER JOIN posts AS p ON u.id = p.usuario_id
INNER JOIN categorias AS c ON c.id = p.categoria_id
GROUP BY u.id
ORDER BY cantidad_posts DESC;


-- Mostramos los usuarios que no han escrito ningun post
SELECT *
FROM usuarios AS u
	LEFT JOIN posts ON u.id = posts.usuario_id
  WHERE posts.usuario_id IS NULL;






