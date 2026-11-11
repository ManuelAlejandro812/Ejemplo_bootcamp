
-- =========================================================================
-- 1. LIMPIEZA PREVENTIVA Y REINICIO DE CONTADORES


-- =========================================================================
-- Desactivamos la verificación de llaves temporalmente para poder vaciar todo sin bloqueos
SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE pago;
TRUNCATE TABLE paseo;
TRUNCATE TABLE mascota;
TRUNCATE TABLE propietario;
TRUNCATE TABLE Paseador;

-- Reactivamos las llaves seguras
SET FOREIGN_KEY_CHECKS = 1;


-- =========================================================================
-- 2. AJUSTE DE RESTRICCIONES (Por si acaso)
-- =========================================================================
ALTER TABLE paseo DROP CHECK paseo_valor_tarifa;
ALTER TABLE paseo ADD CONSTRAINT paseo_valor_tarifa CHECK (tarifa > 0);

ALTER TABLE paseo DROP CHECK paseo_duracion;
ALTER TABLE paseo ADD CONSTRAINT paseo_duracion CHECK (duracion_minutos >= 30);


-- =========================================================================
-- 3. INSERTAR PROPIETARIOS (Garantiza IDs del 1 al 10)
-- =========================================================================
INSERT INTO propietario(nombres,apellidos,telefono,correo,direccion)
VALUES("Juan Andres","Celis Galvis","3201589623","viviana@gmail.com","cra 23#24-45"),
('Laura',   'Gómez',      '3001110001', 'laura.gomez@mail.com',   'Calle 10 # 12-30'),
('Andrés',  'Rodríguez',  '3001110002', 'andres.rodriguez@mail.com', 'Carrera 5 # 20-15'),
('Camila',  'Martínez',   '3001110003', 'camila.martinez@mail.com', 'Calle 8 # 4-21'),
('Julián',  'Pérez',      '3001110004', 'julian.perez@mail.com',  'Carrera 12 # 7-40'),
('Sofía',   'Ramírez',    '3001110005', 'sofia.ramirez@mail.com', 'Calle 15 # 9-18'),
('Daniel',  'Torres',     '3001110006', 'daniel.torres@mail.com', 'Carrera 3 # 18-22'),
('Mariana', 'Castro',     '3001110007', 'mariana.castro@mail.com','Calle 20 # 6-11'),
('Felipe',  'Moreno',     '3001110008', 'felipe.moreno@mail.com','Carrera 9 # 14-19'),
('Carlos',  'Mendoza',    '3001110010', 'carlos.mendoza@mail.com','Calle 100 # 15-20');


-- =========================================================================
-- 4. INSERTAR MASCOTAS (Garantiza IDs del 1 al 13)
-- =========================================================================
INSERT INTO mascota(propietario,Nombre,Especie,Raza,Fecha_nacimiento,observaciones)
VALUES (1,"Max","Canino","criollo","2022-05-09","Ninguno"),
(1, 'Max',     'Perro', 'Labrador',       '2020-03-12', 'Muy activo'),
(1, 'Luna',    'Gato',  'Criollo',        '2021-07-20', 'Prefiere espacios tranquilos'),
(8, 'Rocky',   'Perro', 'Bulldog',        '2019-11-05', 'No caminar bajo sol fuerte'),
(8, 'Nala',    'Perro', 'Golden Retriever','2022-01-18','Sociable con otros perros'),
(3, 'Milo',    'Gato',  'Siamés',         '2020-09-09', 'No aplica para paseos'),
(3, 'Toby',    'Perro', 'Beagle',         '2021-02-14', 'Le gusta correr'),
(4, 'Coco',    'Perro', 'Poodle',         '2018-06-30', 'Requiere pausas'),
(5, 'Simba',   'Perro', 'Pastor alemán',  '2020-12-01', 'Buen comportamiento'),
(5, 'Mía',     'Gato',  'Persa',          '2022-04-11', 'Permanecer en casa'),
(9, 'Bruno',   'Perro', 'Boxer',          '2019-08-23', 'Alta energía'),
(7, 'Kira',    'Perro', 'Husky',          '2021-05-17', 'Necesita paseos largos'),
(10, 'Pelusa',  'Conejo','Enano',          '2023-02-02', 'No requiere paseo');


-- =========================================================================
-- 5. INSERTAR PASEADORES (Garantiza IDs del 1 al 8)
-- =========================================================================
INSERT INTO Paseador(Nombres,apellidos,telefono,correo)
VALUES ("Francisco","Gomez","3123455678","fran@gmail.com"),
("Mateo","Segura","3145456789","mateo@gmail.com"),
("Carlos",  'López',     '3102220001', 'carlos.lopez@huella.com'),
('Natalia', 'Vargas',    '3102220002', 'natalia.vargas@huella.com'),
('Mateo',   'Sánchez',   '3102220003', 'mateo.sanchez@huella.com'),
('Paula',   'Díaz',      '3102220004', 'paula.diaz@huella.com'),
('Santiago','Herrera',   '3102220005', 'santiago.herrera@huella.com'),
('Valentina','Rojas',    '3102220006', 'valentina.rojas@huella.com');


-- =========================================================================
-- 6. INSERTAR PASEOS (Garantiza IDs exactamente del 1 al 21)
-- =========================================================================
INSERT INTO paseo(mascota,paseador,fecha_paseo,duracion_minutos,tarifa,estado)
VALUES(1,2,"2026-11-05",60,300000,"Programado"), -- ID: 1
(1, 1, '2026-10-01', 45, 25000, 'Finalizado'),   -- ID: 2
(3, 2, '2026-10-01', 40, 20000, 'Finalizado'),   -- ID: 3
(4, 3, '2026-10-02', 60, 30000, 'Finalizado'),   -- ID: 4
(6, 1, '2026-10-02', 45, 25000, 'Finalizado'),   -- ID: 5
(7, 4, '2026-10-03', 500, 20000, 'Finalizado'),  -- ID: 6
(8, 6, '2026-10-03', 60, 30000, 'Finalizado'),   -- ID: 7
(10, 2, '2026-10-04', 45, 25000, 'Finalizado'),  -- ID: 8
(10, 3, '2026-10-04', 90, 40000, 'Finalizado'),  -- ID: 9
(1, 4, '2026-10-05', 50, 20000, 'Finalizado'),   -- ID: 10
(3, 6, '2026-10-05', 45, 25000, 'Finalizado'),   -- ID: 11
(4, 1, '2026-10-06', 60, 30000, 'Finalizado'),   -- ID: 12
(6, 2, '2026-10-06', 50, 20000, 'Finalizado'),   -- ID: 13
(5, 3, '2026-10-07', 45, 25000, 'Programado'),   -- ID: 14
(8, 4, '2026-10-07', 60, 30000, 'Programado'),   -- ID: 15
(10, 6, '2026-10-08', 45, 25000, 'Programado'),  -- ID: 16
(10, 1, '2026-10-08', 90, 40000, 'Programado'),  -- ID: 17
( 1, 2, '2026-10-09', 60, 20000, 'Cancelado'),    -- ID: 18
(3, 3, '2026-10-09', 45, 25000, 'Cancelado'),    -- ID: 19
(4, 4, '2026-10-10', 60, 30000, 'En curso'),     -- ID: 20
(6, 6, '2026-10-10', 60, 20000, 'Programado');   -- ID: 21


-- =========================================================================
-- 7. INSERTAR PAGOS (Mapeados perfectamente del ID 1 al 21)
-- =========================================================================
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE pago;
SET FOREIGN_KEY_CHECKS = 1;

-- =========================================================================
-- EJECUTAR INSERCIÓN
-- =========================================================================
INSERT INTO pago(paseo, fecha_pago, valor, metodo_pago, estado, referencia)
VALUES(1, '2026-10-01', 25000, 'Transferencia', 'Rechazado', 'TRX-001'), 
(2, '2026-10-01', 20000, 'Efectivo',      'Aprobado', 'EF-002'), 
(8, '2026-10-04', 20000, 'Efectivo',      'Aprobado', 'EF-010'), 
(9, '2026-10-05', 20000, 'Efectivo',      'Aprobado', 'EF-011'), 
(10, '2026-10-05', 25000, 'Transferencia', 'Aprobado', 'TRX-012'), 
(11, '2026-10-06', 30000, 'Tarjeta',       'Aprobado', 'TJ-013'), 
(12, '2026-10-06', 10000, 'Efectivo',      'Pendiente', 'EF-014'), 
(12, '2026-10-06', 10000, 'Transferencia', 'Aprobado', 'TRX-015'), 
(13, '2026-10-07', 25000, 'Transferencia', 'Pendiente', 'TRX-016'), 
(14, '2026-10-07', 30000, 'Tarjeta',       'Pendiente', 'TJ-017'), 
(15, '2026-10-08', 25000, 'Efectivo',      'Pendiente', 'EF-018'), 
(16, '2026-10-08', 40000, 'Transferencia', 'Pendiente', 'TRX-019'), 
(17, '2026-10-09', 20000, 'Tarjeta',       'Rechazado',  'TJ-020'), 
(18, '2026-10-09', 25000, 'Transferencia', 'Rechazado',  'TRX-021'), 
(19, '2026-10-10', 15000, 'Efectivo',      'Pendiente', 'EF-022'), 
(19, '2026-10-10', 15000, 'Transferencia', 'Pendiente', 'TRX-023'), 
(21, '2026-10-10', 20000, 'Transferencia', 'Pendiente', 'TRX-024'), 
(1, '2026-10-02',  5000, 'Efectivo',      'Aprobado', 'EF-025');