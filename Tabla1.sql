"""Esto se copia en la terminal para crear tabla, sin los comentarios """
CREATE TABLE estudiante ( """los nombres de las cosas van en minúscula"""
    estudiante_ID NUMERIC (4), """(Cantidad de datos, cantidad de decimales)"""
    edad NUMERIC(2),
    correo_electronico VARCHAR2(30),
    promedio NUMERIC(2, 2),
    estatura NUMERIC(2 ,2),
    carrera VARCHAR2(30)
);
