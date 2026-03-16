-- ============================================
-- CREACION DE BASE DE DATOS
-- ============================================

DROP DATABASE IF EXISTS ventas_electro_ruzicska;
CREATE DATABASE ventas_electro_ruzicska;
USE ventas_electro_ruzicska;

-- ============================================
-- TABLAS
-- ============================================

CREATE TABLE empleados (
    id_empleado INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    dni VARCHAR(20) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    fecha_ingreso DATE NOT NULL,
    CONSTRAINT pk_empleados PRIMARY KEY (id_empleado),
    CONSTRAINT uk_empleados_dni UNIQUE (dni)
);

CREATE TABLE vendedores (
    id_vendedor INT NOT NULL AUTO_INCREMENT,
    id_empleado INT NOT NULL,
    objetivo_mensual DECIMAL(10,2) NOT NULL,
    CONSTRAINT pk_vendedores PRIMARY KEY (id_vendedor)
);

CREATE TABLE locales (
    id_local INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
    CONSTRAINT pk_locales PRIMARY KEY (id_local)
);

CREATE TABLE clientes (
    id_cliente INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    CONSTRAINT pk_clientes PRIMARY KEY (id_cliente)
);

CREATE TABLE categorias (
    id_categoria INT NOT NULL AUTO_INCREMENT,
    nombre_categoria VARCHAR(50) NOT NULL,
    CONSTRAINT pk_categorias PRIMARY KEY (id_categoria)
);

CREATE TABLE proveedores (
    id_proveedor INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    contacto VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    CONSTRAINT pk_proveedores PRIMARY KEY (id_proveedor)
);

CREATE TABLE productos (
    id_producto INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    id_categoria INT NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    id_proveedor INT NOT NULL,
    CONSTRAINT pk_productos PRIMARY KEY (id_producto)
);

CREATE TABLE inventario (
    id_inventario INT NOT NULL AUTO_INCREMENT,
    id_local INT NOT NULL,
    id_producto INT NOT NULL,
    stock INT NOT NULL,
    CONSTRAINT pk_inventario PRIMARY KEY (id_inventario)
);

CREATE TABLE metodos_pago (
    id_metodo_pago INT NOT NULL AUTO_INCREMENT,
    tipo_pago VARCHAR(50) NOT NULL,
    CONSTRAINT pk_metodos_pago PRIMARY KEY (id_metodo_pago)
);

CREATE TABLE promociones (
    id_promocion INT NOT NULL AUTO_INCREMENT,
    descripcion VARCHAR(100) NOT NULL,
    descuento DECIMAL(5,2) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    CONSTRAINT pk_promociones PRIMARY KEY (id_promocion)
);

CREATE TABLE usuarios_sistema (
    id_usuario INT NOT NULL AUTO_INCREMENT,
    nombre_usuario VARCHAR(50) NOT NULL,
    password_hash VARCHAR(100) NOT NULL,
    rol VARCHAR(50) NOT NULL,
    CONSTRAINT pk_usuarios_sistema PRIMARY KEY (id_usuario),
    CONSTRAINT uk_usuario UNIQUE (nombre_usuario)
);

CREATE TABLE ventas (
    id_venta INT NOT NULL AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_vendedor INT NOT NULL,
    id_metodo_pago INT NOT NULL,
    id_promocion INT NULL,
    fecha DATE NOT NULL,
    CONSTRAINT pk_ventas PRIMARY KEY (id_venta)
);

CREATE TABLE detalle_venta (
    id_detalle INT NOT NULL AUTO_INCREMENT,
    id_venta INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    CONSTRAINT pk_detalle_venta PRIMARY KEY (id_detalle)
);

CREATE TABLE pedidos_proveedor (
    id_pedido INT NOT NULL AUTO_INCREMENT,
    id_proveedor INT NOT NULL,
    fecha_pedido DATE NOT NULL,
    estado VARCHAR(50) NOT NULL,
    CONSTRAINT pk_pedidos_proveedor PRIMARY KEY (id_pedido)
);

CREATE TABLE detalle_pedido (
    id_detalle_pedido INT NOT NULL AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    CONSTRAINT pk_detalle_pedido PRIMARY KEY (id_detalle_pedido)
);

CREATE TABLE devoluciones (
    id_devolucion INT NOT NULL AUTO_INCREMENT,
    id_venta INT NOT NULL,
    id_producto INT NOT NULL,
    motivo VARCHAR(100) NOT NULL,
    fecha DATE NOT NULL,
    CONSTRAINT pk_devoluciones PRIMARY KEY (id_devolucion)
);

CREATE TABLE garantias (
    id_garantia INT NOT NULL AUTO_INCREMENT,
    id_producto INT NOT NULL,
    id_cliente INT NOT NULL,
    id_venta INT NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    CONSTRAINT pk_garantias PRIMARY KEY (id_garantia)
);

-- ============================================
-- FOREIGN KEYS
-- ============================================

ALTER TABLE vendedores
ADD CONSTRAINT fk_vendedores_empleados
FOREIGN KEY (id_empleado) REFERENCES empleados (id_empleado);

ALTER TABLE productos
ADD CONSTRAINT fk_productos_categorias
FOREIGN KEY (id_categoria) REFERENCES categorias (id_categoria),
ADD CONSTRAINT fk_productos_proveedores
FOREIGN KEY (id_proveedor) REFERENCES proveedores (id_proveedor);

ALTER TABLE inventario
ADD CONSTRAINT fk_inventario_locales
FOREIGN KEY (id_local) REFERENCES locales (id_local),
ADD CONSTRAINT fk_inventario_productos
FOREIGN KEY (id_producto) REFERENCES productos (id_producto);

ALTER TABLE ventas
ADD CONSTRAINT fk_ventas_clientes
FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
ADD CONSTRAINT fk_ventas_vendedores
FOREIGN KEY (id_vendedor) REFERENCES vendedores (id_vendedor),
ADD CONSTRAINT fk_ventas_metodo
FOREIGN KEY (id_metodo_pago) REFERENCES metodos_pago (id_metodo_pago),
ADD CONSTRAINT fk_ventas_promocion
FOREIGN KEY (id_promocion) REFERENCES promociones (id_promocion);

ALTER TABLE detalle_venta
ADD CONSTRAINT fk_detalle_venta_ventas
FOREIGN KEY (id_venta) REFERENCES ventas (id_venta),
ADD CONSTRAINT fk_detalle_venta_productos
FOREIGN KEY (id_producto) REFERENCES productos (id_producto);

ALTER TABLE pedidos_proveedor
ADD CONSTRAINT fk_pedidos_proveedor
FOREIGN KEY (id_proveedor) REFERENCES proveedores (id_proveedor);

ALTER TABLE detalle_pedido
ADD CONSTRAINT fk_detalle_pedido_pedido
FOREIGN KEY (id_pedido) REFERENCES pedidos_proveedor (id_pedido),
ADD CONSTRAINT fk_detalle_pedido_producto
FOREIGN KEY (id_producto) REFERENCES productos (id_producto);

ALTER TABLE devoluciones
ADD CONSTRAINT fk_devoluciones_ventas
FOREIGN KEY (id_venta) REFERENCES ventas (id_venta),
ADD CONSTRAINT fk_devoluciones_productos
FOREIGN KEY (id_producto) REFERENCES productos (id_producto);

ALTER TABLE garantias
ADD CONSTRAINT fk_garantias_productos
FOREIGN KEY (id_producto) REFERENCES productos (id_producto),
ADD CONSTRAINT fk_garantias_clientes
FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
ADD CONSTRAINT fk_garantias_ventas
FOREIGN KEY (id_venta) REFERENCES ventas (id_venta);

-- ============================================
-- MEJORAS DE MODELO
-- ============================================

-- Relacionar vendedores con locales
ALTER TABLE vendedores
ADD COLUMN id_local INT NOT NULL;

ALTER TABLE vendedores
ADD CONSTRAINT fk_vendedores_local
FOREIGN KEY (id_local) REFERENCES locales(id_local);


-- Relacionar ventas con locales
ALTER TABLE ventas
ADD COLUMN id_local INT NOT NULL;

ALTER TABLE ventas
ADD CONSTRAINT fk_ventas_local
FOREIGN KEY (id_local) REFERENCES locales(id_local);


-- Evitar duplicados de producto en inventario por local
ALTER TABLE inventario
ADD CONSTRAINT uk_inventario_local_producto
UNIQUE (id_local, id_producto);

-- ============================================
-- AGREGA COLUMNA USUARIO DEL SISTEMA
-- ============================================

ALTER TABLE usuarios_sistema
ADD COLUMN id_empleado INT NOT NULL;

ALTER TABLE usuarios_sistema
ADD CONSTRAINT fk_usuario_empleado
FOREIGN KEY (id_empleado)
REFERENCES empleados(id_empleado);
