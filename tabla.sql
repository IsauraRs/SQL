CREATE TABLE datos( 
    dato_id NUMERIC(5) PRIMARY KEY,
    profundidad_medida NUMERIC(5),
    profundidad_vertical NUMERIC (6),
    inclinacion NUMERIC(6)
);
SELECT * FROM datos;"""Consulta""" 
WHERE profundidad_medida=5050;"""Los datos que sean ese valor"""
SELECT profundidad_medida FROM datos; "Extrae solo esa columna"
INSERT INTO datos(dato_id,profundidad_medida,profundidad_vertical,inclinacion) VALUES(1,500,500,0);