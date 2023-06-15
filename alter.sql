-- Forma de cambiar el atributo de alguna tabla o agregar una nueva columna o eliminarla
ALTER TABLE people
ADD date_of_birth date;

ALTER TABLE people
ALTER COLUMN date_of_birth year;

ALTER TABLE people
DROP COLUMN date_of_birth;