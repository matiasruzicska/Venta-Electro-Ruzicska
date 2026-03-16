
-- VISTA VENTA POR VENDEDOR

CREATE VIEW vista_ventas_por_vendedor AS
SELECT 
    v.id_vendedor,
    e.nombre,
    e.apellido,
    COUNT(ve.id_venta) AS cantidad_ventas
FROM ventas ve
JOIN vendedores v ON ve.id_vendedor = v.id_vendedor
JOIN empleados e ON v.id_empleado = e.id_empleado
GROUP BY v.id_vendedor;

-- VISTA PRODUCTO MAS VENDIDO

CREATE VIEW vista_productos_mas_vendidos AS
SELECT 
    p.nombre,
    SUM(dv.cantidad) AS total_vendido
FROM detalle_venta dv
JOIN productos p ON dv.id_producto = p.id_producto
GROUP BY p.nombre
ORDER BY total_vendido DESC;

-- VISTA STOCK POR LOCAL

CREATE VIEW vista_stock_por_local AS
SELECT 
    l.nombre AS local,
    p.nombre AS producto,
    i.stock
FROM inventario i
JOIN locales l ON i.id_local = l.id_local
JOIN productos p ON i.id_producto = p.id_producto;

-- VISTA VENTAS POR CLIENTE

CREATE VIEW vista_ventas_por_cliente AS
SELECT 
    c.nombre,
    c.apellido,
    COUNT(v.id_venta) AS total_compras
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente
GROUP BY c.id_cliente;

-- VISTA POR CATEGORIA

CREATE VIEW vista_ventas_por_categoria AS
SELECT 
    cat.nombre_categoria,
    SUM(dv.cantidad) AS total_vendido
FROM detalle_venta dv
JOIN productos p ON dv.id_producto = p.id_producto
JOIN categorias cat ON p.id_categoria = cat.id_categoria
GROUP BY cat.nombre_categoria;
