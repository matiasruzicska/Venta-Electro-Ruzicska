
--Registro Cliente

DELIMITER //

CREATE PROCEDURE registrar_cliente(
IN p_nombre VARCHAR(50),
IN p_apellido VARCHAR(50),
IN p_email VARCHAR(100),
IN p_telefono VARCHAR(20)
)
BEGIN

INSERT INTO clientes(nombre,apellido,email,telefono)
VALUES(p_nombre,p_apellido,p_email,p_telefono);

END //

DELIMITER ;

-- Registro Srocñ

DELIMITER //

CREATE PROCEDURE actualizar_stock(
IN p_producto INT,
IN p_local INT,
IN p_cantidad INT
)
BEGIN

UPDATE inventario
SET stock = stock - p_cantidad
WHERE id_producto = p_producto
AND id_local = p_local;

END //

DELIMITER ;

-- Registro devoluvcioon

DELIMITER //

CREATE PROCEDURE registrar_devolucion(
IN p_venta INT,
IN p_producto INT,
IN p_motivo VARCHAR(100),
IN p_fecha DATE
)
BEGIN

INSERT INTO devoluciones(id_venta,id_producto,motivo,fecha)
VALUES(p_venta,p_producto,p_motivo,p_fecha);

END //

DELIMITER ;
