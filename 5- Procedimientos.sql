
-- Prosediemto ineertar cliente 

DELIMITER //

CREATE PROCEDURE insertar_cliente(
    IN p_nombre VARCHAR(50),
    IN p_apellido VARCHAR(50),
    IN p_email VARCHAR(100)
)
BEGIN
    INSERT INTO clientes(nombre, apellido, email)
    VALUES (p_nombre, p_apellido, p_email);
END //

DELIMITER ;

-- Para usar el prosedimiento

CALL insertar_cliente('Juan','Perez','juanp@gmail.com');

-- Prosedimiento Actualizar Stock

DELIMITER //

CREATE PROCEDURE actualizar_stock(
    IN p_id_producto INT,
    IN p_id_local INT,
    IN p_stock INT
)
BEGIN
    UPDATE inventario
    SET stock = p_stock
    WHERE id_producto = p_id_producto
    AND id_local = p_id_local;
END //

DELIMITER ;

-- Para usar el prosedimiento

CALL actualizar_stock(3,1,50);
