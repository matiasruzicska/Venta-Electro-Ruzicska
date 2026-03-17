
-- Trigger que descuenta stock al vender un producto

DELIMITER //

CREATE TRIGGER descontar_stock
AFTER INSERT ON detalle_venta
FOR EACH ROW
BEGIN
    UPDATE inventario
    SET stock = stock - NEW.cantidad
    WHERE id_producto = NEW.id_producto;
END //

DELIMITER ;

-- Trigger que registra cambios de precio de productos

-- Creamos la tabla de Historial

CREATE TABLE historial_precios (
    id_historial INT AUTO_INCREMENT PRIMARY KEY,
    id_producto INT,
    precio_anterior DECIMAL(10,2),
    precio_nuevo DECIMAL(10,2),
    fecha_cambio DATETIME
);

-- Luego el tigger

DELIMITER //

CREATE TRIGGER registrar_cambio_precio
AFTER UPDATE ON productos
FOR EACH ROW
BEGIN
    IF OLD.precio <> NEW.precio THEN
        INSERT INTO historial_precios
        (id_producto, precio_anterior, precio_nuevo, fecha_cambio)
        VALUES
        (OLD.id_producto, OLD.precio, NEW.precio, NOW());
    END IF;
END //

DELIMITER ;

