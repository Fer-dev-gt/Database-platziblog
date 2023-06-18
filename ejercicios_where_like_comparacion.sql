-- EJERCICIOS DEL COMANDO 'WHERE'

SELECT *
FROM posts
WHERE id < 50;

SELECT *
FROM posts
WHERE id <= 50;

SELECT *
FROM posts
WHERE id >= 50;

-- Tambien podemos usar estos filtros con fechas
SELECT *
FROM posts
WHERE fecha_publicacion > '2025-01-01';

SELECT *
FROM posts
WHERE fecha_publicacion < '2025-01-01';

-- Tambien podemos filtrar por cadenas/strings si sabes cual es el valor exacto
SELECT *
FROM posts
WHERE estatus = 'activo';

SELECT *
FROM posts
WHERE estatus = 'inactivo';

-- Podemos tambien excluir de los resultados un valor en especifico con el simbolo '!='
SELECT *
FROM posts
WHERE estatus != 'activo';

-- Podemos encadenar condiciones con el comando AND
SELECT *
FROM posts
WHERE id != 50 AND estatus = 'activo';

-- Usando WHERE con el Comando LIKE, nos sirve cuando no conocemos el 'string' exacto que estamos buscando. Para esto tenemos que usar el simbolo porcentaje '%%'
SELECT *
FROM posts
WHERE titulo LIKE '%escandalo%';                                                                    -- Cuando son 2 %% significa que traiga la palabra donde sea que se encuentre ya sea al inicio, final o en medio del campo a buscar

-- Cuando queremos que la palabra a buscar este estrictamente en el comienzo usamos solo un %
SELECT *
FROM posts
WHERE titulo LIKE 'escandalo%';

-- Ahora que la palabra a buscar este en el final
SELECT *
FROM posts
WHERE titulo LIKE '%roja';

-- Podemos usar el Comando BETWEEN para seleccionar valores que esten en el rango de otros 2 valores
SELECT *
FROM posts
WHERE fecha_publicacion BETWEEN '2023-01-01' AND '2025-12-31';

SELECT *
FROM posts
WHERE id BETWEEN 50 AND 60;                                                                          -- BETWEEN si es un comando 'incluyente' asi que si acepta el número 50 y 60

-- Podemos manipular la proyección de los datos, en este caso vamos a seleccionar la fecha solo usando el año como valor con el comando YEAR()
SELECT *
FROM posts
WHERE YEAR(fecha_publicacion) BETWEEN '2023' AND '2024';

-- Tambien lo podemos filtrar usando MONTH, en este caso traigo las noticias que se publicaron en el mes de abril (04)
SELECT *
FROM posts
WHERE MONTH(fecha_publicacion) = '04';



