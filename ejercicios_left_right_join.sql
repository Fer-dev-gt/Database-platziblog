-- EJERCICIOS DEL COMANDO JOIN PARTE 1

-- LEFT and RIGTH JOIN
SELECT *
FROM usuarios
	LEFT JOIN posts ON usuarios.id = posts.usuario_id;
    
-- Mostramos los valores que no estan en las 2 tablas (que esten de un lado pero no en el otro)
SELECT *
FROM usuarios
	LEFT JOIN posts ON usuarios.id = posts.usuario_id
	WHERE posts.usuario_id IS NULL;
    
-- Hacemos un RIGHT JOIN
SELECT *
FROM usuarios
	RIGHT JOIN posts ON usuarios.id = posts.usuario_id;    
    
-- Mostramos los valores que no estan en las 2 tablas (que esten de un lado pero no en el otro)
SELECT *
FROM usuarios
	RIGHT JOIN posts ON usuarios.id = posts.usuario_id
  WHERE posts.usuario_id IS NULL;

    
    