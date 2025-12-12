-- base de datos completa y con tablas 
-- Crear la base de datos

CREATE DATABASE Sweetice
USE Sweetice

-- Tabla: Sucursal
CREATE TABLE Sucursal (
    ID_Sucursal INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(255),
    Direccion NVARCHAR(255),
    Ciudad NVARCHAR(255),
    Telefono INT
);

-- Tabla: Empleado
CREATE TABLE Empleado (
    ID_Empleado INT PRIMARY KEY IDENTITY(1,1),
    ID_Sucursal INT,
    Nombre NVARCHAR(255),
    Apellido NVARCHAR(255),
    Carnet INT,
    Cargo NVARCHAR(255),
    FechaContratacion DATE,
    Salario FLOAT,
    Estado NVARCHAR(50),
    FOREIGN KEY (ID_Sucursal) REFERENCES Sucursal(ID_Sucursal)
);

-- Tabla: Cliente
CREATE TABLE Cliente (
    ID_Cliente INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(255),
    Apellido NVARCHAR(255),
    Telefono INT,
    Email NVARCHAR(255),
    Fecha_Registro DATE,
    Tipo_Cliente NVARCHAR(50),
    Activo BIT
);

-- Tabla: CategoriaProducto
CREATE TABLE CategoriaProducto (
    ID_Categoria INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(255),
    Descripcion NVARCHAR(MAX)
);

-- Tabla: Producto
CREATE TABLE Producto (
    ID_Producto INT PRIMARY KEY IDENTITY(1,1),
    ID_Categoria INT,
    Nombre NVARCHAR(255),
    Descripcion NVARCHAR(MAX),
    Precio FLOAT,
    Activo BIT,
    Azucar BIT,
    Lactosa BIT,
    Vegano BIT,
    FOREIGN KEY (ID_Categoria) REFERENCES CategoriaProducto(ID_Categoria)
);

-- Tabla: Sabor
CREATE TABLE Sabor (
    ID_Sabor INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(255),
    Descripcion NVARCHAR(MAX),
    Lactosa BIT,
    Azucar BIT,
    Vegano BIT,
    Activo BIT
);

-- Tabla: ProductoSabor
CREATE TABLE ProductoSabor (
    ID_Producto INT,
    ID_Sabor INT,
    PRIMARY KEY (ID_Producto, ID_Sabor),
    FOREIGN KEY (ID_Producto) REFERENCES Producto(ID_Producto),
    FOREIGN KEY (ID_Sabor) REFERENCES Sabor(ID_Sabor)
);

-- Tabla: Insumo
CREATE TABLE Insumo (
    ID_Insumo INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(255),
    Descripcion NVARCHAR(MAX),
    UnidadMedida NVARCHAR(50)
);

-- Tabla: Receta
CREATE TABLE Receta (
    ID_Producto INT,
    ID_Insumo INT,
    CantidadxUnidad FLOAT,
    PRIMARY KEY (ID_Producto, ID_Insumo),
    FOREIGN KEY (ID_Producto) REFERENCES Producto(ID_Producto),
    FOREIGN KEY (ID_Insumo) REFERENCES Insumo(ID_Insumo)
);

-- Tabla: InventarioSucursal
CREATE TABLE InventarioSucursal (
    ID_Inventario INT PRIMARY KEY IDENTITY(1,1),
    ID_Sucursal INT,
    ID_Insumo INT,
    Cantidad INT,
    FechaActualizacion DATE,
    FOREIGN KEY (ID_Sucursal) REFERENCES Sucursal(ID_Sucursal),
    FOREIGN KEY (ID_Insumo) REFERENCES Insumo(ID_Insumo)
);

-- Tabla: Proveedor
CREATE TABLE Proveedor (
    ID_Proveedor INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(255),
    Contacto NVARCHAR(255),
    Telefono INT,
    Email NVARCHAR(255),
    Direccion NVARCHAR(255),
    Ciudad NVARCHAR(255),
    Activo BIT
);

-- Tabla: Compra
CREATE TABLE Compra (
    ID_Compra INT PRIMARY KEY IDENTITY(1,1),
    ID_Proveedor INT,
    ID_Sucursal INT,
    Fecha DATE,
    Email NVARCHAR(255),
    Estado NVARCHAR(50),
    Total FLOAT,
    FOREIGN KEY (ID_Proveedor) REFERENCES Proveedor(ID_Proveedor),
    FOREIGN KEY (ID_Sucursal) REFERENCES Sucursal(ID_Sucursal)
);

-- Tabla: DetalleCompra
CREATE TABLE DetalleCompra (
    ID_DetalleCompra INT PRIMARY KEY IDENTITY(1,1),
    ID_Compra INT,
    ID_Insumo INT,
    Cantidad INT,
    PrecioUnitario FLOAT,
    Subtotal FLOAT,
    FOREIGN KEY (ID_Compra) REFERENCES Compra(ID_Compra),
    FOREIGN KEY (ID_Insumo) REFERENCES Insumo(ID_Insumo)
);

-- Tabla: MedioPago
CREATE TABLE MedioPago (
    ID_MedioPago INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(255),
    Descripcion NVARCHAR(MAX)
);

-- Tabla: Venta
CREATE TABLE Venta (
    ID_Venta INT PRIMARY KEY IDENTITY(1,1),
    ID_Empleado INT,
    ID_Sucursal INT,
    ID_Cliente INT,
    Fecha DATE,
    Total FLOAT,
    MontoFinal FLOAT,
    ID_MetodoPago INT,
    Estado NVARCHAR(50),
    FOREIGN KEY (ID_Empleado) REFERENCES Empleado(ID_Empleado),
    FOREIGN KEY (ID_Sucursal) REFERENCES Sucursal(ID_Sucursal),
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente),
    FOREIGN KEY (ID_MetodoPago) REFERENCES MedioPago(ID_MedioPago)
);

-- Tabla: DetalleVenta
CREATE TABLE DetalleVenta (
    ID_DetalleVenta INT PRIMARY KEY IDENTITY(1,1),
    ID_Venta INT,
    ID_Producto INT,
    Cantidad INT,
    PrecioUnitario FLOAT,
    ID_Promocion INT,
    descuento FLOAT,
    Subtotal FLOAT,
    FOREIGN KEY (ID_Venta) REFERENCES Venta(ID_Venta),
    FOREIGN KEY (ID_Producto) REFERENCES Producto(ID_Producto)
);

-- Tabla: Caja
CREATE TABLE Caja (
    ID_Caja INT PRIMARY KEY IDENTITY(1,1),
    ID_Sucursal INT,
    FechaApertura NVARCHAR(50),
    FechaCierre DATE,
    MontoInicial FLOAT,
    MontoFinal FLOAT,
    Estado NVARCHAR(50),
    ID_EmpleadoApertura INT,
    ID_EmpleadoCierre INT,
    FOREIGN KEY (ID_Sucursal) REFERENCES Sucursal(ID_Sucursal),
    FOREIGN KEY (ID_EmpleadoApertura) REFERENCES Empleado(ID_Empleado),
    FOREIGN KEY (ID_EmpleadoCierre) REFERENCES Empleado(ID_Empleado)
);

-- Tabla: MovimientoCaja
CREATE TABLE MovimientoCaja (
    ID_MovimientoCaja INT PRIMARY KEY IDENTITY(1,1),
    ID_Caja INT,
    Tipo NVARCHAR(50),
    Monto FLOAT,
    Descripcion NVARCHAR(MAX),
    Fecha DATE,
    ID_Venta INT,
    ID_Empleado INT,
    FOREIGN KEY (ID_Caja) REFERENCES Caja(ID_Caja),
    FOREIGN KEY (ID_Venta) REFERENCES Venta(ID_Venta),
    FOREIGN KEY (ID_Empleado) REFERENCES Empleado(ID_Empleado)
);

-- Tabla: Promocion
CREATE TABLE Promocion (
    ID_Promocion INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(255),
    Descripcion NVARCHAR(MAX),
    FechaInicio DATE,
    FechaFin DATE,
    Tipo NVARCHAR(50),
    Valor FLOAT,
    Activo BIT
);

-- Tabla: PromocionProducto
CREATE TABLE PromocionProducto (
    ID_Promocion INT,
    ID_Producto INT,
    PRIMARY KEY (ID_Promocion, ID_Producto),
    FOREIGN KEY (ID_Promocion) REFERENCES Promocion(ID_Promocion),
    FOREIGN KEY (ID_Producto) REFERENCES Producto(ID_Producto)
);
