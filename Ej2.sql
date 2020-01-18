"""Esto va en la terminal """
"""Tipo: por columna """
CREATE TABLE concepto_pago (concepto_id numeric(10,0) constraint
concepto_pagp_pk primary key,
tipo_concepto char(1) not null constraint cp_tipo_concepto_chk check
    (tipo_concepto in ('A','B','C')),
clave varchar(1) not null constraint cp_clave_uk unique,
    descripcion varchar(255),
importe numeric(8,2) not null constraint cp_importe_chk check(
    importe < 100000)        
);

CREATE TABLE quincena( quincena_ID number(10,0) constraint
quincena_pk primary key,
numero_quincena number(2,0) not null,
fecha_inicio date not null,
fecha_fin date not null
);

CREATE TABLE nomina( nomina_id NUMBER(10,0) constraint nomina_pk
PRIMARY KEY,
fecha_creacion DATE NOT NULL,
quincena_ID NOT NULL constraint quincena_ID_fk references
quincena(quincena_ID)
);

"""Por tabla"""
CREATE TABLE venta( venta_ID NUMERIC(10,0) NOT NULL,
fecha_venta DATE NOT NULL,
tipo_venta CHAR(3),
constraint venta_pk PRIMARY KEY(venta_ID),
constraint ve_tipo_venta_chk check(tipo_venta in('MA','EL'))
);

CREATE TABLE orden_venta( orden_ID NUMERIC(10,0) NOT NULL,
venta_ID NUMERIC(10,0) NOT NULL,
constraint orden_venta_pk PRIMARY KEY(orden_ID),
constraint venta_ov_venta_ID_fk FOREIGN KEY(venta_ID),
references venta(venta_ID)
);

CREATE TABLE asignatura( asignatura_ID NUMERIC(10,0) NOT NULL,
clave NUMERIC(10,0) NOT NULL,
constraint asignatura_ID_pk PRIMARY KEY(asignatura_ID),
constraint clave_uk unique (clave)
);

CREATE TABLE profesor( profesor_ID NUMERIC(10,0) NOT NULL,
rfc VARCHAR2(10) NOT NULL,
constraint profesor_ID_pk PRIMARY KEY(profesor_ID),
constraint rfc_uk unique (rfc),
nombre VARCHAR2(20)
);

CREATE TABLE asignatura_profesor( profesor_ID NUMERIC(10,0) NOT NULL,
asignatura_ID NUMERIC (10,0) NOT NULL,
constraint asignatura_profesor_ID_pk PRIMARY KEY(profesor_ID,asignatura_ID),
constraint asignatura_profesor_profesor_ID_fk FOREIGN KEY(profesor_ID) references profesor(profesor_ID), 
constraint asignatura_profesor_asignatura_ID_fk FOREIGN KEY(asignatura_ID) references asignatura(asignatura_ID)
);

select username from dba_users;

SELECT
select * 
from asignatura
where A1=3;

project
select A1,A3;
from A;

union all --- para que permita agregar elementos repetidos

select *
from A;
intersect 

select *
from B;

RESTA A-B
select *
from A;
minus

select *
from B;

PRODUCTO AxB
De un tabla 
A
A1   A2
1    x
2    y
3    z

B
B1   B2
1    xx
4    w

AxB
1 x 1xx
1 x 4w
2 y 1xx
2 y 4w
3 z 1xx
3 z 4w 

select AxB
from A,B

Se realiza una consulta donde A1 sea igual a 3 y A1 igual a 4 y la proyección
Sigma_(A1=3,A1=4)((Pi_(A1,A3)(A))
select A1, A3
from A
where A1=3
and A1=4


