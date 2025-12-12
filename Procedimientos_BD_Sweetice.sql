use Sweetice
go
--procedimientos:
ALTER PROCEDURE ActualizarestadoEmpleado
    @ID_Empleado INT,
    @NuevoEstado NVARCHAR(50)
AS
BEGIN
    update Empleado
    set Estado = @NuevoEstado
    where ID_Empleado = @ID_Empleado;
    
    select 'Estado actualizado' as Mensaje;
end

--==========================================================================================================================
--Nombre:Adrian 
-- Fecha 31/11
-- Descripcion : Actualiza el estado del empleado reciviendo el id y el nuevo estado del empleados y con un set se actualiza
--===========================================================================================================================
go

alter procedure MostrarTodosClientes
as
begin 
    select 
        ID_Cliente,
        Nombre,
        Apellido,
        Telefono,
        Email,
        Fecha_Registro,
        Tipo_Cliente
    FROM Cliente
    order by Nombre;
END
--==========================================================================================================================
--Nombre:Adrian 
-- Fecha 31/11
-- Descripcion : Solo muestra los clientes sin recibir algun parametro 
--===========================================================================================================================
go

alter procedure mostrarclientecompras
    @id_cliente int
as
begin
    select
        v.fecha,
        v.total,
        s.nombre as sucursal,

        (select count(*) 
         from venta v2 
         where v2.id_cliente = v.id_cliente) as cantidad_compras,

        (select sum(v3.total) 
         from venta v3 
         where v3.id_cliente = v.id_cliente) as total_compras

    from venta v
    inner join sucursal s on v.id_sucursal = s.id_sucursal
    where v.id_cliente = @id_cliente
    order by v.fecha;
end;

--==========================================================================================================================
--Nombre:Adrian 
-- Fecha 31/11
-- Descripcion : Muestra la compra de los clientes el primer select cuenta las compras totales, la segunda muestra la suma ya el tercero
--                hice un inner join para conectar sucursal con las ventas de secursal 
--===========================================================================================================================

go

alter PROCEDURE sp_RegistrarVenta
    @ID_Empleado   INT,
    @ID_Sucursal   INT,
    @ID_Cliente    INT,
    @ID_MetodoPago INT
AS
BEGIN
    INSERT INTO Venta (
        ID_Empleado,
        ID_Sucursal,
        ID_Cliente,
        Fecha,
        Total,
        MontoFinal,
        ID_MetodoPago,
        Estado
    )
    VALUES (
        @ID_Empleado, @ID_Sucursal, @ID_Cliente,GETDATE(),0,0,@ID_MetodoPago,'Completada'
    );

    SELECT 'Venta registrada' AS Mensaje;
END
GO
--==========================================================================================================================
--Nombre:Adrian 
-- Fecha 31/11
-- Descripcion : simplemente se insertan los valores basicos de una venta a la tabla ventas como venta es con identity
   --               no hay problema al no colocar el id de la venta 
--===========================================================================================================================
go

alter procedure sp_registrarcliente
    @nombre nvarchar(100),
    @apellido nvarchar(100),
    @telefono int,
    @email nvarchar(255),
    @tipo_cliente nvarchar(50) = 'regular'
as
begin
    insert into cliente (nombre, apellido, telefono, email, fecha_registro, tipo_cliente, activo)
    values (@nombre, @apellido, @telefono, @email, getdate(), @tipo_cliente, 1);
    select 'cliente registrau' Mensaje;
end;
--==========================================================================================================================
--Nombre:Adrian 
-- Fecha 31/11
-- Descripcion : lo mismo que el de venta pero se registra el lciente
--===========================================================================================================================

go

alter procedure consultarinventario
as
begin
    select 
        s.nombre as sucursal,
        i.nombre as insumo,
        inv.cantidad,
        i.unidadmedida
    from inventariosucursal inv
    inner join sucursal s on inv.id_sucursal = s.id_sucursal
   inner  join insumo i on inv.id_insumo = i.id_insumo
    order by s.nombre, i.nombre;
end;
--==========================================================================================================================
--Nombre:Adrian 
-- Fecha 31/11
-- Descripcion : muestra los insumas (inventario) con su cantidad

go

alter procedure sumarinventario
    @id_sucursal int,
    @id_insumo int,
    @cantidad int,
    @mensaje nvarchar(100) output
as
begin
    if exists (select 1 from inventariosucursal 
               where id_sucursal = @id_sucursal and id_insumo = @id_insumo)
    begin
        update inventariosucursal
        set cantidad = cantidad + @cantidad
        where id_sucursal = @id_sucursal and id_insumo = @id_insumo
        
        set @mensaje = 'se sumaron ' + cast(@cantidad as nvarchar) + ' unidades'
    end
end
--==========================================================================================================================
--Nombre:Adrian 
-- Fecha 1/12
-- Descripcion : suma al inventario insumos siempre y cuando enexist y actualiza el invetario de sucursal cantodad = cantidad + @cantidad
--===========================================================================================================================
go

alter procedure buscar_cliente
    @nombre nvarchar(100)
as
begin
    select 
        id_cliente,
        nombre + ' ' + apellido as nombrecompleto,
        telefono,
        email
    from cliente
    where nombre like '%' + @nombre + '%'
       or apellido like '%' + @nombre + '%'
end
go
--==========================================================================================================================
--Nombre:Adrian 
-- Fecha 1/12
-- Descripcion : Buscar cliente con nombre
--===========================================================================================================================

alter procedure ventas_hoy
as
begin
    select 
        v.id_venta,
        c.nombre + ' ' + c.apellido as cliente,
        v.total,
        v.fecha
    from venta v
    join cliente c on v.id_cliente = c.id_cliente
    where cast(v.fecha as date) = cast(getdate() as date)
end

--==========================================================================================================================
--Nombre:Adrian 
-- Fecha 1/12
-- Descripcion : ver ventas en el dia
--===========================================================================================================================

go

alter procedure empleados_sucursal
    @id_sucursal int
as
begin
    select 
        id_empleado,
        nombre + ' ' + apellido as nombre,
        cargo,
        estado
    from empleado
    where id_sucursal = @id_sucursal
    order by nombre
end

--==========================================================================================================================
--Nombre:Adrian 
-- Fecha 1/12
-- Descripcion : Ver empleados por sucursal
--===========================================================================================================================


go

alter procedure CierreCajaDiario
    @ID_Caja int,
    @MontoFinal float
as
Begin

    
    update Caja
    set
        FechaCierre = GETDATE(),
        MontoFinal = @MontoFinal,
        Estado = 'Cerrada'
    where ID_Caja = @ID_Caja;
    
    select 'Caja cerrada' Mensaje;
end

--==========================================================================================================================
--Nombre:Adrian 
-- Fecha 1/12
-- Descripcion : abre y cierra la caja al dia con el id y el monto (suponiendo que lo contamos en fisico) y la actualiza el estado y fecha
--===========================================================================================================================

    