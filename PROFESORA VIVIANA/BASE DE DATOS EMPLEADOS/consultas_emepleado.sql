-- 1. Mostrar el apellido, oficio y número de departamento de cada empleado
SELECT APELLIDO,OFICIO,departamento FROM EMPLEADO;

-- 2. Mostrar el número, nombre y localización de cada departamento.
SELECT CODIGO_DEPART,NOMBRE,LOCALIDAD FROM departamento;

-- 3. Mostrar todos los datos de todos los empleados.
SELECT CODIGO_EMPLEADO,APELLIDO,OFICIO,DIRECCION,FECHA_INGRESO,SALARIO,COMISION,departamento FROM EMPLEADO;
SELECT * FROM EMPLEADO;

-- 4. Datos de los empleados ordenados por apellidos.
SELECT APELLIDO FROM EMPLEADO ORDER BY APELLIDO ASC;

-- 5. Datos de los empleados ordenados por número de departamento descendentemente.
SELECT * FROM EMPLEADO ORDER BY departamento DESC;

-- 6. Datos de los empleados ordenados por número de departamento descendentemente y 
--    dentro de cada departamento ordenados por apellido ascendentemente
SELECT * FROM EMPLEADO ORDER BY departamento DESC, APELLIDO ASC;

-- 7. Mostrar los datos de los empleados cuyo salario sea mayor que 200000
SELECT * FROM empleado WHERE SALARIO>20000 ORDER BY SALARIO ASC;

-- 8. Mostrar los datos de los empleados cuyo oficio sea ʻANALISTAʼ.
SELECT * FROM EMPLEADO WHERE OFICIO="ANALISTA"; 

-- 9. Seleccionar el apellido y oficio de los empleados del departamento número 20.
SELECT APELLIDO, OFICIO, DEPARTAMENTO FROM EMPLEADO WHERE DEPARTAMENTO=20;

-- 10. Mostrar todos los datos de los empleados ordenados por apellido.
SELECT * FROM EMPLEADO ORDER BY APELLIDO;

-- 11.Seleccionar los empleados cuyo oficio sea ʻVENDEDORʼ. Mostrar los datos ordenados por apellido.
SELECT * FROM EMPLEADO WHERE  OFICIO="VENDEDOR" ORDER BY APELLIDO ASC;

-- 12. Mostrar los empleados cuyo departamento sea 10 y cuyo oficio sea ʻANALISTAʼ. Ordenar el resultado por apellido.
SELECT * FROM EMPLEADO WHERE DEPARTAMENTO=20 AND OFICIO="ANALISTA" ORDER BY APELLIDO ASC;

-- 13. Mostrar los empleados que tengan un salario mayor que 200000 o que pertenezcan al departamento número 20.
SELECT * FROM EMPLEADO WHERE SALARIO>20000 OR DEPARTAMENTO=20 ORDER BY APELLIDO ASC;