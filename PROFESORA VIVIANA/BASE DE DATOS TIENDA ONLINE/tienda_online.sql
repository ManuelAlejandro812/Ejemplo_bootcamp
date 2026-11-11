-- Crear base de datos con codificacion
CREATE DATABASE tienda_online
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

-- Seleccionar Base de datos
USE tienda_online;

-- crear Tabla categoria
CREATE TABLE categoria(
id_categoria INT PRIMARY KEY,
nombre VARCHAR(60) NOT NULL UNIQUE
)ENGINE=InnoDB;

-- Mostrar descripcion de la tabla
DESCRIBE categoria;

-- Crear la tabla cliente
CREATE TABLE cliente(
id_cliente INT,
nombres VARCHAR(80) NOT NULL,
apellidos VARCHAR(80) NOT NULL,
correo VARCHAR(120) UNIQUE NOT NULL,
telefono VARCHAR(20),
direccion_envio VARCHAR(150) NOT NULL,
fecha_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP -- Fecha y hora actual
)ENGINE = InnoDB;

-- Agregar la llave primaria a la tabla ciente
ALTER TABLE cliente ADD PRIMARY KEY(id_cliente);

-- Insertar Cliente
INSERT INTO cliente (id_cliente,nombres,apellidos,correo,telefono,direccion_envio)
VALUE(202589,"Juan Esteban","Sanchez Rojas","juan@gmail.com","32045667895","calle 6 # 2-45");

-- Consultar clientes
SELECT * FROM cliente;

-- Crear tabla producto
CREATE TABLE producto(
id_producto INT PRIMARY KEY,
sku VARCHAR(20) UNIQUE NOT NULL,
nombre VARCHAR(100) NOT NULL,
descripcion TEXT,
precio FLOAT(10,3) NOT NULL,
stock INT NOT NULL,
activo BOOLEAN NOT NULL,
id_categoria INT,
CONSTRAINT fk_producto_categoria FOREIGN KEY(id_categoria) REFERENCES categoria(id_categoria)
)ENGINE = InnoDB;

-- Crear tabla pedido
CREATE TABLE pedido(
id_pedido INT AUTO_INCREMENT PRIMARY KEY,
id_cliente INT NOT NULL,
fecha_pedido DATE NOT NULL,
estado ENUM("Solicitado","Despachado","Entregado","Finalizado"),
metodo_pago ENUM("Efectivo","Tarjeta","Transferencia"),
total DECIMAL(10,2) NOT NULL DEFAULT 0,
CONSTRAINT fk_pedido_cliente FOREIGN KEY(id_cliente) REFERENCES cliente(id_cliente)
)ENGINE = InnoDB;

-- Crear tabla envio
CREATE TABLE envio(
id_envio INT AUTO_INCREMENT PRIMARY KEY,
id_pedido INT UNIQUE NOT NULL,
transportadora VARCHAR(60),
numero_guia VARCHAR(30) UNIQUE,
fecha_envio DATETIME,
estado ENUM("En proceso","Enviado","Finalizado") NOT NULL,
CONSTRAINT fk_envio_pedido FOREIGN KEY(id_pedido) REFERENCES pedido(id_pedido)
)ENGINE = InnoDB;


-- Crear tabla detalle pedido
CREATE TABLE detalle_pedido(
id_pedido INT NOT NULL,
id_producto INT NOT NULL,
cantidad INT NOT NULL,
PRIMARY KEY(id_pedido, id_producto), -- Llave primaria compuesta
CONSTRAINT fk_pedido_detalle FOREIGN KEY(id_pedido) REFERENCES pedido(id_pedido),
CONSTRAINT fk_producto_detalle FOREIGN KEY(id_producto) REFERENCES producto(id_producto)
)









