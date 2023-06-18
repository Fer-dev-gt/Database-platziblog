-- EJERCICIOS DEL COMANDO JOIN PARTE 2

-- INNER JOIN (Datos que se encuentran en ambas tablas)
SELECT *
FROM usuarios
	INNER JOIN posts ON usuarios.id = posts.usuario_id;    
    
/* FULL OUTER JOIN (Solo funciona en algunas bases de datos)
  SELECT *
  FROM usuarios
  FULL OUTER JOIN posts ON usuarios.id = posts.usuario_id;    (Aqui este comando no funciona) */

  
-- Para lograr el resultado deseado de un FULL OUTER JOIN hacemos un JOIN compuesto a traves de una unión (Este comando si es estandar)
SELECT *
FROM usuarios
	LEFT JOIN posts ON usuarios.id = posts.usuario_id  
UNION 
SELECT *
FROM usuarios
	RIGHT JOIN posts ON usuarios.id = posts.usuario_id;    
    
    
-- Diferencia Asimetrica (Lo que solo se encuentra en solo 1 tabla al mismo tiempo, no son los datos de en "medio")
SELECT *
FROM usuarios
	LEFT JOIN posts ON usuarios.id = posts.usuario_id
  WHERE posts.usuario_id IS NULL
UNION
SELECT *
FROM usuarios
	RIGHT JOIN posts ON usuarios.id = posts.usuario_id
	WHERE posts.usuario_id IS NULL
    
