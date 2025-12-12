use Sweetice

-- ==========================================
-- INSERTS PARA BD Sweetice 
-- ==========================================

-- sucursal 
INSERT INTO Sucursal (Nombre, Direccion, Ciudad, Telefono) VALUES
('Heladería Principal', 'Av. Principal 123', 'Santa Cruz', 76089757);

-- categoria de productos 
INSERT INTO CategoriaProducto (Nombre, Descripcion) VALUES
('Helados', 'Helados de diversos sabores'),
('Postres', 'Postres helados'),
('Bebidas', 'Bebidas frías'),
('Toppings', 'Aderezos para helados');

-- metodo de pago 
INSERT INTO MedioPago (Nombre, Descripcion) VALUES
('Efectivo', 'Pago en efectivo'),
('Tarjeta Débito', 'Pago con tarjeta de débito'),
('Tarjeta Crédito', 'Pago con tarjeta de crédito'),
('Transferencia', 'Transferencia bancaria');

-- clientes 
INSERT INTO Cliente (Nombre, Apellido, Telefono, Email, Fecha_Registro, Tipo_Cliente, Activo) VALUES
('Aracely', 'Calvimontes', 77711122, 'aracely@email.com', '2024-01-10', 'Frecuente', 1),
('Melanie', 'Gomez Pedriel', 77722333, 'melanie@email.com', '2024-02-15', 'Regular', 1),
('Enzo', 'Cortese Melgar', 77733444, 'enzo@email.com', '2024-03-20', 'VIP', 1),
('Emily', 'Vargas', 77744555, 'emily@email.com', '2024-04-25', 'Regular', 1),
('Juan', 'Pérez', 77755666, 'juan@email.com', '2024-01-05', 'Frecuente', 1),
('Maria', 'López', 77766777, 'maria@email.com', '2024-02-10', 'Regular', 1),
('Carlos', 'Rodríguez', 77777888, 'carlos@email.com', '2024-03-15', 'VIP', 1),
('Ana', 'Martínez', 77788999, 'ana@email.com', '2024-04-20', 'Regular', 1);

-- proveedores 
INSERT INTO Proveedor (Nombre, Contacto, Telefono, Email, Direccion, Ciudad, Activo) VALUES
('Lácteos S.A.', 'Juan Mendoza', 22211122, 'lacteos@email.com', 'Av. Industrial 456', 'La Paz', 1),
('Dulces del Valle', 'María Flores', 22233344, 'dulces@email.com', 'Calle Comercio 789', 'Cochabamba', 1),
('Envases Plásticos', 'Carlos Ruiz', 22255566, 'envases@email.com', 'Zona Franca 101', 'Santa Cruz', 1);

-- insumos (modelo mixto: bases de helado compradas + cosas para armar)
INSERT INTO Insumo (Nombre, Descripcion, UnidadMedida) VALUES
('Base helado vainilla', 'Base cremosa sabor vainilla lista para usar', 'Litro'),
('Base helado chocolate', 'Base cremosa sabor chocolate lista para usar', 'Litro'),
('Base helado fresa', 'Base cremosa sabor fresa lista para usar', 'Litro'),
('Base helado lúcuma', 'Base cremosa sabor lúcuma lista para usar', 'Litro'),
('Sirope y cacao', 'Mezcla de cacao y jarabes para toppings', 'Kilo'),
('Mix de frutas', 'Frutas picadas para helados y copas', 'Kilo'),
('Pulpa de fruta', 'Pulpa concentrada para bases frutales', 'Kilo'),
('Vasos', 'Vasos desechables para helado y bebidas', 'Unidad'),
('Conos', 'Conos de galleta para helado', 'Unidad'),
('Cucharas', 'Cucharas plasticas para servir', 'Unidad');

-- sabores
INSERT INTO Sabor (Nombre, Descripcion, Lactosa, Azucar, Vegano, Activo) VALUES
('Vainilla', 'Clásico sabor vainilla', 1, 1, 0, 1),
('Chocolate', 'Chocolate cremoso', 1, 1, 0, 1),
('Fresa', 'Fresa natural', 1, 1, 0, 1),
('Lúcuma', 'Típico sabor peruano', 1, 1, 0, 1),
('Limón', 'Refrescante sabor cítrico', 1, 1, 1, 1),
('Menta', 'Sabor refrescante menta', 1, 1, 0, 1),
('Manjar', 'Dulce de leche', 1, 1, 0, 1);

-- empleados 
INSERT INTO Empleado (ID_Sucursal, Nombre, Apellido, Carnet, Cargo, FechaContratacion, Salario, Estado) VALUES
(1, 'Adrian', 'Rada Paredes', 1234567, 'Gerente', '2023-01-15', 5000, 'Activo'),
(1, 'Jose', 'Uria Chavez', 2345678, 'Cajero', '2023-03-20', 2500, 'Activo'),
(1, 'Nikol', 'Justiniano Zabala', 3456789, 'Vendedor', '2023-05-10', 2200, 'Activo'),
(1, 'Ana', 'Cabrera', 4567890, 'Vendedor', '2023-06-15', 2200, 'Activo');

-- productitos
INSERT INTO Producto (ID_Categoria, Nombre, Descripcion, Precio, Activo, Azucar, Lactosa, Vegano) VALUES
(1, 'Cono Simple', 'Cono con una bola de helado', 12.50, 1, 1, 1, 0),
(1, 'Cono Doble', 'Cono con dos bolas de helado', 18.00, 1, 1, 1, 0),
(1, 'Copa Helada', 'Copa con helado y toppings', 25.00, 1, 1, 1, 0),
(1, 'Helado en Vaso', 'Helado servido en vaso', 15.00, 1, 1, 1, 0),
(2, 'Sundae Chocolate', 'Helado con salsa de chocolate', 28.00, 1, 1, 1, 0),
(2, 'Banana Split', 'Helado con banana y toppings', 32.00, 1, 1, 1, 0),
(2, 'Malteada', 'Batido de helado espeso', 22.00, 1, 1, 1, 0),
(3, 'Limonada Helada', 'Limonada con hielo', 10.00, 1, 1, 0, 1),
(3, 'Jugo de Fruta', 'Jugo natural de frutas', 12.00, 1, 0, 0, 1),
(4, 'Chispas Chocolate', 'Chispas de chocolate', 5.00, 1, 1, 0, 0),
(4, 'Crema Chantilly', 'Crema batida dulce', 4.00, 1, 1, 1, 0),
(4, 'Sirope de Fresa', 'Salsa de fresa', 4.00, 1, 1, 0, 1);

-- sabores de cada producto
INSERT INTO ProductoSabor (ID_Producto, ID_Sabor) VALUES
(1, 1), (1, 2), (1, 3),  -- Cono Simple: Vainilla, Chocolate, Fresa
(2, 1), (2, 2), (2, 3), (2, 4),  -- Cono Doble: Vainilla, Chocolate, Fresa, Lúcuma
(3, 2), (3, 4), (3, 7),  -- Copa Helada: Chocolate, Lúcuma, Manjar
(4, 1), (4, 2), (4, 3), (4, 5),  -- Vaso: Vainilla, Chocolate, Fresa, Limón
(5, 2),  -- Sundae: Chocolate
(6, 1), (6, 2), (6, 3),  -- Banana Split: Vainilla, Chocolate, Fresa
(7, 1), (7, 2), (7, 3);  -- Malteada: Vainilla, Chocolate, Fresa

-- recetas medio a ojo la verdad xd 
INSERT INTO Receta (ID_Producto, ID_Insumo, CantidadxUnidad) VALUES
-- Receta para Cono Simple (producto 1)
(1, 1, 0.12),   -- base helado vainilla
(1, 9, 1),      -- 1 cono

-- Receta para Cono Doble (producto 2)
(2, 1, 0.12),   -- base helado vainilla
(2, 2, 0.12),   -- base helado chocolate
(2, 9, 1),      -- 1 cono

-- Receta para Copa Helada (producto 3)
(3, 1, 0.10),   -- base vainilla
(3, 3, 0.10),   -- base fresa
(3, 6, 0.05),   -- mix de frutas
(3, 8, 1),      -- 1 vaso

-- Receta para Sundae Chocolate (producto 5)
(5, 2, 0.18),   -- base chocolate
(5, 5, 0.05),   -- sirope y cacao extra
(5, 8, 1),      -- vaso

-- Receta para Banana Split (producto 6)
(6, 1, 0.12),   -- base vainilla
(6, 2, 0.12),   -- base chocolate
(6, 6, 0.08),   -- mix de frutas
(6, 8, 1);      -- vaso/plato

-- compras de algunos insumos 
INSERT INTO Compra (ID_Proveedor, ID_Sucursal, Fecha, Email, Estado, Total) VALUES
(1, 1, '2024-11-25', 'abc@gmail.com', 'Completada', 1200.00),  -- Compra a Lácteos S.A.
(2, 1, '2024-11-20', 'def@gmail.com', 'Completada', 800.00),   -- Compra a Dulces del Valle
(3, 1, '2024-11-15', 'hij@gmail.com', 'Completada', 500.00),   -- Compra a Envases Plásticos
(1, 1, '2024-12-01', 'efg@gmail.com', 'Completada', 900.00);   -- Otra compra a Lácteos S.A.

INSERT INTO DetalleCompra (ID_Compra, ID_Insumo, Cantidad, PrecioUnitario, Subtotal) VALUES
-- Detalles compra 1 (Lácteos S.A.)
(1, 1, 100, 8.00, 800.00),    
(1, 2, 50, 8.00, 400.00),     

-- Detalles compra 2 (Dulces del Valle)
(2, 3, 200, 3.00, 600.00),   
(2, 4, 20, 10.00, 200.00),    

-- Detalles compra 3 (Envases Plásticos)
(3, 8, 1000, 0.30, 300.00),   
(3, 9, 500, 0.20, 100.00),    
(3, 10, 2000, 0.05, 100.00),  

-- Detalles compra 4 (Lácteos S.A.)
(4, 1, 50, 9.00, 450.00),     
(4, 2, 30, 9.00, 270.00),     
(4, 5, 20, 9.00, 180.00);     

-- inventario (stock actual de insumos en la sucursal 1)
INSERT INTO InventarioSucursal (ID_Sucursal, ID_Insumo, Cantidad, FechaActualizacion) VALUES
(1, 1, 50, GETDATE()),  -- base helado vainilla
(1, 2, 30, GETDATE()),  -- base helado chocolate
(1, 3, 20, GETDATE()),  -- base helado fresa
(1, 4, 5, GETDATE()),   -- base helado lúcuma
(1, 5, 10, GETDATE()),  -- sirope y cacao
(1, 6, 15, GETDATE()),  -- mix de frutas
(1, 7, 8, GETDATE()),   -- pulpa de frutas
(1, 8, 200, GETDATE()), -- vasos
(1, 9, 150, GETDATE()), -- conos
(1, 10, 300, GETDATE()); -- cucharas

-- movida de cafa
INSERT INTO Caja (ID_Sucursal, FechaApertura, FechaCierre, MontoInicial, MontoFinal, Estado, ID_EmpleadoApertura, ID_EmpleadoCierre) VALUES
(1, '2024-12-05 08:00', NULL, 500.00, NULL, 'Abierta', 1, NULL);

-- ventas
INSERT INTO Venta (ID_Empleado, ID_Sucursal, ID_Cliente, Fecha, Total, MontoFinal, ID_MetodoPago, Estado) VALUES
(2, 1, 1, '2024-12-05', 37.50, 37.50, 1, 'Completada'),  
(3, 1, 2, '2024-12-05', 25.00, 25.00, 2, 'Completada'),
(4, 1, 3, '2024-12-05', 18.00, 18.00, 1, 'Completada'),  
(2, 1, 4, '2024-12-04', 50.00, 50.00, 3, 'Completada'),  
(3, 1, 5, '2024-12-04', 32.00, 32.00, 1, 'Completada'),  
(4, 1, 3, '2024-12-05', 60.00, 60.00, 1, 'Completada'),  
(2, 1, 3, '2024-12-05', 32.00, 32.00, 2, 'Completada'),  
(3, 1, 4, '2024-12-05', 15.00, 15.00, 1, 'Completada'),  
(4, 1, 5, '2024-12-05', 28.00, 28.00, 1, 'Completada'),  
(2, 1, 6, '2024-12-05', 50.00, 50.00, 3, 'Completada'), 
(3, 1, 7, '2024-12-05', 37.50, 37.50, 1, 'Completada'),  
(4, 1, 8, '2024-12-05', 22.00, 22.00, 2, 'Completada'); 

-- detalle de ventas
INSERT INTO DetalleVenta (ID_Venta, ID_Producto, Cantidad, PrecioUnitario, Subtotal) VALUES
-- Venta 1: Aracely - 2 Conos Dobles diferentes
(1, 2, 1, 18.00, 18.00),  -- Cono Doble de Chocolate
(1, 2, 1, 18.00, 18.00),  -- Cono Doble de Vainilla

-- Venta 2: Aracely - Copa Helada
(2, 3, 1, 25.00, 25.00),  -- Copa Helada

-- Venta 3: Aracely - Malteada
(3, 7, 1, 22.00, 22.00),  -- Malteada

-- Venta 4: Melanie - Combo grande
(4, 3, 1, 25.00, 25.00),  -- Copa Helada
(4, 10, 2, 5.00, 10.00),  -- 2 Chispas Chocolate
(4, 11, 2, 4.00, 8.00),   -- 2 Cremas Chantilly
(4, 12, 1, 4.00, 4.00),   -- 1 Sirope de Fresa

-- Venta 5: Melanie - Cono Simple
(5, 1, 1, 12.00, 12.00),  -- Cono Simple
(5, 11, 1, 4.00, 4.00),   -- Crema Chantilly
(5, 12, 1, 2.00, 2.00),   -- Sirope de Fresa (promo)

-- Venta 6: Enzo - Pedido grande
(6, 5, 1, 28.00, 28.00),  -- Sundae Chocolate
(6, 6, 1, 32.00, 32.00),  -- Banana Split

-- Venta 7: Enzo - Cono Doble
(7, 2, 1, 18.00, 18.00),  -- Cono Doble
(7, 10, 1, 5.00, 5.00),   -- Chispas Chocolate
(7, 11, 1, 4.00, 4.00),   -- Crema Chantilly
(7, 12, 1, 5.00, 5.00),   -- Sirope de Fresa

-- Venta 8: Emily - Helado simple
(8, 4, 1, 15.00, 15.00),  -- Helado en Vaso

-- Venta 9: Juan - Sundae
(9, 5, 1, 28.00, 28.00),  -- Sundae Chocolate

-- Venta 10: María - Combo familiar
(10, 3, 1, 25.00, 25.00), -- Copa Helada
(10, 1, 2, 12.00, 24.00), -- 2 Conos Simples
(10, 8, 1, 1.00, 1.00),   -- Limonada (ajustar precio)

-- Venta 11: Carlos - Varios
(11, 2, 2, 18.00, 36.00), -- 2 Conos Dobles
(11, 12, 1, 1.50, 1.50),  -- Sirope

-- Venta 12: Ana - Malteada
(12, 7, 1, 22.00, 22.00); -- Malteada

-- promociones
INSERT INTO Promocion (Nombre, Descripcion, FechaInicio, FechaFin, Tipo, Valor, Activo) VALUES
('2x1 en Conos', 'Promo 2x1 en Conos Simples y Dobles', '2024-12-01', '2024-12-31', 'Porcentaje', 50, 1),
('Combo Familiar', 'Descuento especial en combo familiar', '2024-12-01', '2024-12-31', 'Monto', 10, 1);

INSERT INTO PromocionProducto (ID_Promocion, ID_Producto) VALUES
(1, 1),  -- Promo 2x1 en Conos Simples
(1, 2),  -- Promo 2x1 en Conos Dobles
(2, 3),  -- Combo Familiar incluye Copa
(2, 1);  -- Combo Familiar incluye Conos

-- Aplicar promociones a algunas ventas
UPDATE DetalleVenta SET 
    ID_Promocion = 1,
    descuento = PrecioUnitario * 0.5  -- 50% descuento (2x1)
WHERE ID_Venta IN (1, 5, 7) AND ID_Producto IN (1, 2);

-- Actualizar subtotales con descuento
UPDATE dv
SET dv.Subtotal = (dv.Cantidad * dv.PrecioUnitario) - dv.descuento
FROM DetalleVenta dv
WHERE dv.ID_Promocion IS NOT NULL;

-- Actualizar totales de ventas con promociones
UPDATE v
SET v.MontoFinal = v.Total - ISNULL((SELECT SUM(descuento) FROM DetalleVenta WHERE ID_Venta = v.ID_Venta), 0)
FROM Venta v
WHERE v.ID_Venta IN (1, 5, 7);

-- algunos movimientos de caja
INSERT INTO MovimientoCaja (ID_Caja, Tipo, Monto, Descripcion, Fecha, ID_Venta, ID_Empleado) VALUES
(1, 'APERTURA', 500.00, 'Apertura de caja', '2024-12-05 08:00', NULL, 1),
(1, 'VENTA', 36.00, 'Venta #1 - Aracely', '2024-12-05 10:30', 1, 2),
(1, 'VENTA', 25.00, 'Venta #2 - Aracely', '2024-12-05 10:45', 2, 3),
(1, 'VENTA', 60.00, 'Venta #6 - Enzo', '2024-12-05 14:00', 6, 4),
(1, 'VENTA', 15.00, 'Venta #8 - Emily', '2024-12-05 15:30', 8, 3),
(1, 'VENTA', 28.00, 'Venta #9 - Juan', '2024-12-05 16:15', 9, 4);

