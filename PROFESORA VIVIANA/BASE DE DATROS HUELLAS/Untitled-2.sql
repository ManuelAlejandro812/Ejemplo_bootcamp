-- Crear la base de datos
CREATE DATABASE huella_urbana
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

-- seleccionar la base de datos
USE huella_urbana;

-- crear tabla propietadio
CREATE TABLE propietario(
id_Propietario INT AUTO_INCREMENT PRIMARY KEY, -- buenas practicas se debe usar una linea por atributo
Nombres VARCHAR(80) NOT NULL,
apellidos VARCHAR(80) NOT NULL,
telefono VARCHAR(20) NOT NULL,
correo VARCHAR(120) NOT NULL,
direccion VARCHAR(180)
)engine = InnoDB; -- permite que se tengam llaves foraneas y relacionar

-- crear tabla paseador
CREATE TABLE Paseador(
id_Paseador INT AUTO_INCREMENT, 
Nombres VARCHAR(80) NOT NULL,
apellidos VARCHAR(80) NOT NULL,
telefono VARCHAR(20) NOT NULL,
correo VARCHAR(120) NOT NULL,
Estado ENUM("Activo", "Inactivo") DEFAULT "Activo",
PRIMARY KEY(id_Paseador)
)engine = InnoDB;

-- Crear tabla mascota con FK con propietario
CREATE TABLE Mascota(
    id_Mascota INT,
    propietario INT NOT NULL,
    Nombre VARCHAR(60) NOT NULL,
    Especie VARCHAR(60) NOT NULL,
    Raza VARCHAR(40),
    Fecha_nacimiento DATE,
    Observaciones TEXT,
    foreign key(propietario) references propietario(id_Propietario)
)engine = InnoDB;

-- Modificar la tabla agregando la PK
ALTER TABLE Mascota ADD PRIMARY KEY(id_Mascota);

-- modificar columna id_Mascotas como auto incrementable
ALTER TABLE Mascota MODIFY id_Mascota INT AUTO_INCREMENT;

-- cambiar el nombre de una columna
ALTER TABLE Mascota RENAME COLUMN Observaciones TO observaciones;
-- descripcion de la tabla

DESCRIBE mascota;

CREATE TABLE paseo(
    id_paseo INT AUTO_INCREMENT PRIMARY KEY,
    mascota INT NOT NULL,
    paseador INT NOT NULL,
    fecha_paseo DATE NOT NULL,
    duracion_minutos INT NOT NULL,
    tarifa float(10,2) NOT NULL,
    estado ENUM("Programado","En curso","Finalizado","Cancelado"),
    CONSTRAINT paseo_duracion CHECK(duracion_minutos>30),
    CONSTRAINT paseo_valor_tarifa CHECK(tarifa>0),
    CONSTRAINT fk_paseo_mascota FOREIGN KEY(mascota) REFERENCES mascota(id_mascota),
    CONSTRAINT fk_paseo_paseador FOREIGN KEY(paseador) REFERENCES paseador(id_Paseador)
)engine = InnoDB;

-- crear tabla de pagos
CREATE TABLE pago(
id_pago int auto_increment primary key,
paseo int not null,
fecha_pago datetime not null default current_timestamp, -- Por defecto el valor es fecha-hora actual
valor decimal(10,2) not null,
metodo_pago enum("Tarjeta","Efectivo","Transferencia") not null,
estado enum("Pendiente","Aprobado","Rechazado") not null,
referencia varchar(100) unique, -- valor que no se repite/duplica
constraint pago_valor check(valor>0),
constraint fk_pago_paseo foreign key(paseo) references paseo(id_paseo) on update cascade on delete cascade
)engine = InnoDB;












