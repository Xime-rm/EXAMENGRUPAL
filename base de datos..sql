
CREATE DATABASE IF NOT EXISTS tienda_ropa;
drop database tienda_ropa;
USE tienda_ropa;


CREATE TABLE IF NOT EXISTS clientes (
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(255) NOT NULL,
  apellidos VARCHAR(255) NOT NULL,
  correo_electronico VARCHAR(255) NOT NULL,
  direccion VARCHAR(255) NOT NULL,
  telefono VARCHAR(255) NOT NULL
);

-- Insert data into the 'clientes' table
INSERT INTO clientes (nombre, apellidos, correo_electronico, direccion, telefono) 
VALUES
  ('Carlos Arturo', 'Zapata Perez', 'car124@gmail.com', 'mz34 #5', '311 356 78 90'),
  ('Juan Manuel', 'Mendez Ortiz', 'juan124@gmail.com', 'mz35 #2', '310 963 45 21'),
  ('Carlos Arturo', 'Zapata Perez', 'car124@gmail.com', 'mz34 #5', '311 356 78 90'),
  ('Carlos Arturo', 'Zapata Perez', 'car124@gmail.com', 'mz34 #5', '311 356 78 90'),
  ('Carlos Arturo', 'Zapata Perez', 'car124@gmail.com', 'mz34 #5', '311 356 78 90');


CREATE TABLE IF NOT EXISTS productos (
  id_producto INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(255) NOT NULL,
  precio DECIMAL(10,2) NOT NULL,
  categoria VARCHAR(255) NOT NULL,
  stock INT NOT NULL
);


INSERT INTO productos (nombre, precio, categoria, stock)
VALUES
  ('Blusa', 30.00, 'ropa', 5),
  ('Pantalón', 60.00, 'ropa', 3),
  ('Medias', 15.00, 'ropa', 2),
  ('Saco', 70.00, 'ropa', 7),
  ('Camiseta', 30.00, 'ropa', 4);


CREATE TABLE IF NOT EXISTS pedidos (
  id_pedido INT AUTO_INCREMENT PRIMARY KEY,
  fecha DATE NOT NULL,
  total DECIMAL(10,2) NOT NULL,
  id_cliente INT NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente)
);


INSERT INTO pedidos (fecha, total, id_cliente)
VALUES
  ('2023-09-05', 1.00, 1),
  ('2023-09-05', 2.00, 2),
  ('2023-09-05', 3.00, 3),
  ('2023-09-05', 4.00, 4),
  ('2023-09-05', 5.00, 5);

CREATE TABLE IF NOT EXISTS detalles_pedidos (
  id_pedido INT NOT NULL,
  id_producto INT NOT NULL,
  cantidad INT NOT NULL,
  PRIMARY KEY (id_pedido, id_producto),
  FOREIGN KEY (id_pedido) REFERENCES pedidos (id_pedido),
  FOREIGN KEY (id_producto) REFERENCES productos (id_producto)
);

INSERT INTO pedidos (fecha, total, id_cliente)
VALUES
  ('2023-09-05', 1.00, 1),
  ('2023-09-05', 2.00, 2),
  ('2023-09-05', 3.00, 3),
  ('2023-09-05', 4.00, 4),
  ('2023-09-05', 5.00, 5);
  
