-- EJERCICIOS DEL COMANDO 'NOT'

-- Traemos todos los registros donde el usuario_id es null
SELECT *
FROM posts 
Where usuario_id IS NULL; 

SELECT *
FROM posts 
Where categoria_id IS NULL;

-- Forma de traer los registros que no sean 'null' usando el comando NOT
SELECT *
FROM posts 
Where usuario_id IS NOT NULL;

-- Podemos crear filtros 'anidados' usando WHERE y AND
SELECT *
FROM posts 
Where usuario_id IS NOT NULL
	AND estatus = 'activo';
    
SELECT *
FROM posts 
Where usuario_id IS NOT NULL
	AND estatus = 'activo'
  AND id < 50;
    
SELECT *
FROM posts 
Where usuario_id IS NOT NULL
	AND estatus = 'activo'
  AND id < 50
  AND categoria_id  = 2;
    
SELECT *
FROM posts 
Where usuario_id IS NOT NULL
	AND estatus = 'activo'
  AND id < 50
  AND YEAR(fecha_publicacion) = '2025';
    
-- Usando operador IN para comparar multiples valores en una columna
SELECT *
FROM posts
WHERE categoria_id IN (2,3,4);		                                           -- Con el comando IN podemos traer todos los registros que tengan en la columna 'categoria_id' los valores declarados