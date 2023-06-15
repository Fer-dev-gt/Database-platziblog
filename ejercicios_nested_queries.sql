-- EJERCICIO DE NESTED QUERIES, (hay que tener cuidado con estos queries para que nos afecte una complejidad algoritmia muy alta)
-- Seleccionamos de una tabla que al inicio aun no exites, (será generada en el inner query)
SELECT new_table_projection.date, COUNT(*) AS post_count
FROM (  																				-- La tabla del FROM será generada de una query interna, esa tabla se alamacena en memoria
	SELECT DATE(MIN(fecha_publicacion)) AS date, YEAR(fecha_publicacion) AS post_year
    FROM posts
    GROUP BY post_year
) AS new_table_projection																-- Aqui le colocamos un nuevo nombre a la tabla interna que tomaremos de refencia para el query externo
GROUP BY new_table_projection.date
ORDER BY new_table_projection.date;

-- Segundo ejemplo, usando los 'Nested Queries' como condición en el WHERE, en este caso trae el registro del post con la fecha maxima, mas hacia el futuro
SELECT *
FROM posts
WHERE fecha_publicacion = (
	SELECT MAX(fecha_publicacion)
    FROM posts
);
