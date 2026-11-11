-- Consultar todos los propietarios
-- * de todas las columnas
SELECT * FROM propietario;

-- Todas las columnas.
SELECT * FROM Mascota;

-- SELECCIONAR COLIUMNAS ESPECIDICAS.

SELECT nombres,apellidos,correo FROM propietario;

-- NOMBRE Y ESPECIE Y RAZA DE LA MASCOTA
SELECT nombre,especie,Raza FROM Mascota;

-- ALIAS A NOMBRES DE LAS COLUMNAS (titulos a las columnas)
SELECT nombre AS MASCOTA, especie as TIPO, raza as RAZA_MASCOTA from Mascota;

-- CONSULTAR PAGOS EN EFECTIVO
-- El where quiere decir que queremos alguna condicion para que nos muestre
SELECT * FROM pago WHERE metodo_pago="Efectivo";


-- CONSULTAR PAGOS EN EFECTIVO Y ESTADO PENDIENTE
SELECT * FROM pago WHERE metodo_pago="Efectivo" and estado="pendiente";

-- CONSULTAR PAGOS EN EFECTIVO Y ESTADO PENDIENTE Y VALOR MENOR A 20000
SELECT * FROM pago WHERE metodo_pago="Efectivo" and estado="pendiente" and valor<30000;

-- CONSULTAR PASEOS CON TARIFA SUPERIOR A 30000
SELECT * FROM Paseo WHERE tarifa>30000;

-- CONSULTAR QUE EL ESTADO SEA DIFERENTE A CANCELADO
SELECT * FROM paseo WHERE estado!="Cancelado";
SELECT * FROM paseo WHERE estado<>"Cancelado";
SELECT * FROM paseo WHERE NOT estado ="Cancelado";

-- CONSULTAR PASEOS DE 30 MINUTOS O LA TARIFA ES MENOR O IGUAL A 30000
SELECT * FROM paseo WHERE duracion_minutos=30 OR tarifa<=30000;

-- CONSULTAR PASEOS CON ESTADO CANCELADO O EN CURSO
SELECT*FROM paseo WHERE estado="cancelado" OR estado="en curso";
SELECT*FROM paseo WHERE estado IN ("cancelado","en curso");

-- CONSULTAR MASCOTAS QUE EL NOMBRE EMPIECE CON M, USAMOS EL OPERADOR LIKE
SELECT * FROM mascota WHERE Nombre LIKE "MA%";

-- CONSULTA MASCOTAS QUE EL NOMBRE TERMINE EN O
SELECT * FROM mascota WHERE Nombre LIKE "%O";

-- MASCOTAS DONDE EL NOMBRE DE LAS MASCOTAS CONTENGAN UNA PREPARE
SELECT * FROM mascota WHERE Nombre LIKE "%P%";

-- PASEADOR CORREOS QUE NO SEAN DE GMAIL
SELECT * FROM paseador WHERE NOT correo LIKE "%gmail%";

-- MOSTRAR TODOS LOS PASEOS ORDENADOS DESDE EL MAS COSTOSO AL MAS ECONOMICO
SELECT*FROM paseo ORDER BY tarifa DESC;
SELECT*FROM paseo ORDER BY tarifa DESC, fecha_paseo DESC;

-- PROPIETARIOS EN ORDEN ALFABETICO POR APELLIDO
SELECT apellidos,nombres FROM propietario ORDER BY apellidos; 

-- BETWEEN  PASEOS CON TARIFA ENTRE 20000 Y 35000
SELECT*FROM paseo WHERE tarifa BETWEEN 20000 AND 35000; -- ESTABLECER UN RANGO DE VALORES NUMERICOS
SELECT*FROM paseo WHERE tarifa >= 20000 AND tarifa<=35000;

-- PROPIETARIOS SIN DIRECCION Y CON DIRECCION
SELECT*FROM propietario WHERE direccion IS NOT null; 
SELECT*FROM propietario WHERE direccion IS null; 

-- CONSULTAR LOS 5 PRIMEROS PASEOS CON MAYOR DURACION
SELECT*FROM paseo ORDER BY duracion_minutos DESC LIMIT 5;

-- PARA NO MOSTRAR DUPLICADOS (DISTINCT)
SELECT DISTINCT duracion_minutos FROM paseo ORDER BY duracion_minutos DESC;

-- ESPECIES REGISTRADAS QUITANDO LOS DUPLICADOS DE LA COLUMNA
SELECT DISTINCT Especie FROM mascota;

-- COSULTAR TOTAL DE PAGOS
SELECT SUM(valor) FROM pago;
SELECT SUM(valor) AS Total_pagado FROM pago WHERE estado="Aprobado";

SELECT ROUND (AVG(valor),2) FROM pago;  -- REDONDEAR A DOS DECIMALES

-- PROMEDIO TARIFAS
SELECT ROUND (AVG(tarifa),2) AS Promedio_tarifa FROM paseo;  -- REDONDEAR A DOS DECIMALES
-- max min count

-- CANTIDAD DE MASCOTAS POR ESPECIE
SELECT especie, count(especie) AS total FROM mascota GROUP BY especie;


-- MAXIMO, MINIMO Y PROMEDIO DE TARIFA DE PASEO.
SELECT MAX(tarifa) AS Maxima, MIN(tarifa) AS Minima, ROUND(AVG(tarifa),2) as Promedio FROM Paseo GROUP BY estado IN("Programado","Cancelado");

-- CANTIDAD DE PAGOS APROBADOS
SELECT COUNT(id_pago), COUNT(*) AS Cantidad, sum(valor) AS Total FROM pago WHERE estado="Aprobado";


-- Tarifa promedio por estado del paseo
select estado as Estado, round(avg(tarifa),0) as Tarifa_Media from paseo group by estado;

-- MUESTRE LOS PASEADORES QUE TIENES MAS DE DOS PASEOS
SELECT paseador, COUNT(*) as Total_paseo FROM paseo GROUP BY paseador HAVING Total_paseo>4;

-- ESTADOS CUYA TARIFA PROMEDIO SEA MAYOR A 25000
SELECT estado, avg(tarifa) as Promedio from paseo GROUP BY estado having promedio>25000;


-- CONSULTAS MULTITABLA INNER JOIN (INTERSECCION ENTRE DOS CONJUNTOS O DOS TABLAS), LEFT JOIN, RIGTH JOIN 

-- NOMBRES DE PROPIETARIOS CON DATOS DE MASCOTAS
SELECT p.nombre, p.apellido,m.nombre,m.especie,m.fecha_naciemiento FROM propetarios as p 
inner join mascota as m on p.id_propietarios=m.propietario ORDER BY p.nombres;


-- CANTIDAD DE MASCOTAS POR PROIETARIO
SELECT concat("p.nombres,""p.apellidos") as propietario, 
count(m.id_mascotas) as Total_mascotas from propietario as p inner join mascota as m on p.id_Propietario=m.propietario 
group by propietario order by Total_Mascotas DESC;

-- DATOS DEL PASEO CON DATOS DE LA MASCOTA Y EL PROPIETARIO
SELECT p.nombres as Nom_propetario, 
p.apellido as Apell_ppopietario,m-nombre as Mascota,m.especie,ps.nomnres as Nom_Paseador,
ps-apellido as Apell_Paseador,pa.duracion_minutos,pa.fecha_paseo,pa.tarifa
from prpietario p join mascota m on p.id_propetario=m.propetario
join paseo ps on m.id_mascota=pa.mascota
join paseador ps on pa.paseador=ps.id_paseador order by m.nombre asc;


-- CONSULTAR EL VALOR PAGADO POR CADA ESPECIE 