
-- EMPLEADOS 

INSERT INTO empleados (nombre, apellido, dni, cargo, fecha_ingreso) VALUES
('Juan','Perez','30111222','Vendedor','2022-01-10'),
('Ana','Gomez','30222333','Vendedor','2022-03-15'),
('Luis','Martinez','30333444','Cajero','2021-05-12'),
('Maria','Lopez','30444555','Gerente','2020-02-01'),
('Carlos','Diaz','30555666','Vendedor','2023-04-18'),
('Sofia','Fernandez','30666777','Vendedor','2023-06-20'),
('Pedro','Ramirez','30777888','Cajero','2022-09-09'),
('Lucia','Torres','30888999','Vendedor','2021-11-11'),
('Diego','Ruiz','30999000','Supervisor','2020-07-30'),
('Valeria','Castro','30000111','Vendedor','2024-01-05');

-- LOCALES

INSERT INTO locales (nombre,direccion,ciudad) VALUES
('Sucursal Centro','Av Siempre Viva 123','Buenos Aires'),
('Sucursal Norte','Av Libertador 456','Buenos Aires'),
('Sucursal Sur','Av Mitre 789','Avellaneda'),
('Sucursal Oeste','Rivadavia 100','Moron'),
('Sucursal Este','Belgrano 222','La Plata'),
('Sucursal Cordoba','Colon 300','Cordoba'),
('Sucursal Rosario','San Martin 500','Rosario'),
('Sucursal Mendoza','San Juan 600','Mendoza'),
('Sucursal Tucuman','25 de Mayo 800','Tucuman'),
('Sucursal Salta','Caseros 900','Salta');

-- VENDEDORES

INSERT INTO vendedores (id_empleado, objetivo_mensual, id_local) VALUES
(1,500000,1),
(2,450000,1),
(5,400000,2),
(6,420000,2),
(8,380000,3),
(10,390000,3),
(1,410000,4),
(2,430000,5),
(5,440000,6),
(6,450000,7);

-- CLIENTES

INSERT INTO clientes (nombre,apellido,email,telefono) VALUES
('Martin','Sosa','martin@mail.com','111111111'),
('Carla','Benitez','carla@mail.com','222222222'),
('Lucas','Rojas','lucas@mail.com','333333333'),
('Mariana','Acosta','mariana@mail.com','444444444'),
('Fernando','Suarez','fernando@mail.com','555555555'),
('Paula','Mendez','paula@mail.com','666666666'),
('Ricardo','Silva','ricardo@mail.com','777777777'),
('Laura','Ortega','laura@mail.com','888888888'),
('Jorge','Vega','jorge@mail.com','999999999'),
('Natalia','Herrera','natalia@mail.com','101010101');

-- CATEGORIAS

INSERT INTO categorias (nombre_categoria) VALUES
('Televisores'),
('Heladeras'),
('Lavarropas'),
('Microondas'),
('Celulares'),
('Notebooks'),
('Aires Acondicionados'),
('Cafeteras'),
('Licuadoras'),
('Parlantes');

-- PROVEEDORES

INSERT INTO proveedores (nombre,contacto,telefono) VALUES
('Samsung','Pedro Kim','111111111'),
('LG','Carlos Lee','222222222'),
('Sony','Ana Tanaka','333333333'),
('Philips','Maria Cruz','444444444'),
('Whirlpool','Juan Gomez','555555555'),
('Motorola','Luis Diaz','666666666'),
('Lenovo','Carlos Chen','777777777'),
('Noblex','Jorge Ruiz','888888888'),
('Atma','Diego Soto','999999999'),
('BGH','Martin Rios','101010101');

-- PRODUCTOS

INSERT INTO productos (nombre,id_categoria,precio,id_proveedor) VALUES
('TV Samsung 50',1,500000,1),
('Heladera LG',2,800000,2),
('Lavarropas Whirlpool',3,600000,5),
('Microondas Philips',4,200000,4),
('Celular Motorola G',5,300000,6),
('Notebook Lenovo',6,900000,7),
('Aire BGH 3000F',7,700000,10),
('Cafetera Philips',8,150000,4),
('Licuadora Atma',9,100000,9),
('Parlante Sony',10,180000,3);

-- INVENTARIOS

INSERT INTO inventario (id_local,id_producto,stock) VALUES
(1,1,20),
(1,2,15),
(2,3,10),
(2,4,18),
(3,5,30),
(3,6,12),
(4,7,8),
(5,8,25),
(6,9,40),
(7,10,22);

-- METODO DE PAGO

INSERT INTO metodos_pago (tipo_pago) VALUES
('Efectivo'),
('Tarjeta Credito'),
('Tarjeta Debito'),
('Transferencia'),
('Mercado Pago'),
('Cuenta DNI'),
('Cheque'),
('Bitcoin'),
('PayPal'),
('Financiado');

-- PROMOCIONES

INSERT INTO promociones (descripcion,descuento,fecha_inicio,fecha_fin) VALUES
('Promo verano',10,'2024-01-01','2024-02-01'),
('Promo invierno',15,'2024-06-01','2024-07-01'),
('Black Friday',25,'2024-11-20','2024-11-30'),
('Navidad',20,'2024-12-01','2024-12-25'),
('Cyber Monday',30,'2024-11-01','2024-11-05'),
('Promo celulares',12,'2024-03-01','2024-04-01'),
('Promo notebooks',18,'2024-05-01','2024-06-01'),
('Electro hogar',14,'2024-07-01','2024-08-01'),
('Promo audio',11,'2024-09-01','2024-10-01'),
('Promo cocina',9,'2024-10-01','2024-11-01');

-- USUARIOS SISTEMAS

INSERT INTO usuarios_sistema (nombre_usuario,password_hash,rol,id_empleado) VALUES
('admin','123','admin',4),
('vendedor1','123','vendedor',1),
('vendedor2','123','vendedor',2),
('cajero1','123','cajero',3),
('gerente','123','gerente',4),
('vendedor3','123','vendedor',5),
('vendedor4','123','vendedor',6),
('cajero2','123','cajero',7),
('supervisor','123','supervisor',9),
('vendedor5','123','vendedor',10);

-- VENTAS

INSERT INTO ventas (id_cliente,id_vendedor,id_metodo_pago,id_promocion,fecha,id_local) VALUES
(1,1,1,1,'2024-02-10',1),
(2,2,2,2,'2024-02-11',1),
(3,3,3,3,'2024-02-12',2),
(4,4,4,4,'2024-02-13',2),
(5,5,5,5,'2024-02-14',3),
(6,6,6,6,'2024-02-15',3),
(7,7,7,7,'2024-02-16',4),
(8,8,8,8,'2024-02-17',5),
(9,9,9,9,'2024-02-18',6),
(10,10,10,10,'2024-02-19',7);

-- DETALLE DE VENTAS

INSERT INTO detalle_venta (id_venta,id_producto,cantidad,precio_unitario) VALUES
(1,1,1,500000),
(2,2,1,800000),
(3,3,1,600000),
(4,4,2,200000),
(5,5,1,300000),
(6,6,1,900000),
(7,7,1,700000),
(8,8,2,150000),
(9,9,1,100000),
(10,10,2,180000);

-- PEDIDO PROVEEDORES

INSERT INTO pedidos_proveedor (id_proveedor,fecha_pedido,estado) VALUES
(1,'2024-01-10','Entregado'),
(2,'2024-01-12','Pendiente'),
(3,'2024-01-15','Entregado'),
(4,'2024-01-18','Pendiente'),
(5,'2024-01-20','Entregado'),
(6,'2024-01-22','Pendiente'),
(7,'2024-01-25','Entregado'),
(8,'2024-01-28','Pendiente'),
(9,'2024-02-01','Entregado'),
(10,'2024-02-03','Pendiente');

-- DETALLE DE PEDIDO

INSERT INTO detalle_pedido (id_pedido,id_producto,cantidad) VALUES
(1,1,10),
(2,2,8),
(3,3,6),
(4,4,15),
(5,5,12),
(6,6,7),
(7,7,5),
(8,8,20),
(9,9,25),
(10,10,14);

-- DEVOLUCIONS

INSERT INTO devoluciones (id_venta,id_producto,motivo,fecha) VALUES
(1,1,'Falla','2024-02-12'),
(2,2,'Cambio','2024-02-13'),
(3,3,'Falla','2024-02-14'),
(4,4,'No funciona','2024-02-15'),
(5,5,'Cambio','2024-02-16'),
(6,6,'Defecto','2024-02-17'),
(7,7,'Falla','2024-02-18'),
(8,8,'Cambio','2024-02-19'),
(9,9,'Defecto','2024-02-20'),
(10,10,'No funciona','2024-02-21');

-- GARANTIAS

INSERT INTO garantias (id_producto,id_cliente,id_venta,fecha_inicio,fecha_fin) VALUES
(1,1,1,'2024-02-10','2025-02-10'),
(2,2,2,'2024-02-11','2025-02-11'),
(3,3,3,'2024-02-12','2025-02-12'),
(4,4,4,'2024-02-13','2025-02-13'),
(5,5,5,'2024-02-14','2025-02-14'),
(6,6,6,'2024-02-15','2025-02-15'),
(7,7,7,'2024-02-16','2025-02-16'),
(8,8,8,'2024-02-17','2025-02-17'),
(9,9,9,'2024-02-18','2025-02-18'),
(10,10,10,'2024-02-19','2025-02-19');


