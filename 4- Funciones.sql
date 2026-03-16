
-- Calcular total de una venta

DELIMITER //

CREATE FUNCTION calcular_total_venta(idVenta INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);

    SELECT SUM(cantidad * precio_unitario)
    INTO total
    FROM detalle_venta
    WHERE id_venta = idVenta;

    RETURN total;
END //

DELIMITER ;

-- Total comprado por cliente

DELIMITER //

CREATE FUNCTION total_comprado_cliente(idCliente INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;

    SELECT COUNT(*)
    INTO total
    FROM ventas
    WHERE id_cliente = idCliente;

    RETURN total;
END //

DELIMITER ;

-- Calcular duración de garantía en días

DELIMITER //

CREATE FUNCTION dias_garantia(fechaInicio DATE, fechaFin DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN DATEDIFF(fechaFin, fechaInicio);
END //

DELIMITER ;
