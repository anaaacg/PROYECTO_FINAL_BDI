-- funciones 
use Sweetice

--Clientes con mayor consumo
SELECT TOP 10
    c.Nombre + ' ' + c.Apellido  Cliente,
    count(v.ID_Venta) as Compras,
    sum(v.Total)  MontoTotal
from Venta v
inner join Cliente c on v.ID_Cliente = c.ID_Cliente
group by c.Nombre, c.Apellido
order by MontoTotal desc

-- Insumos con bajo stock
select 
    i.Nombre as Insumo,
    s.Nombre as Sucursal,
    inv.Cantidad as Stock,
    i.UnidadMedida
from InventarioSucursal inv
inner join Insumo i ON inv.ID_Insumo = i.ID_Insumo
inner join Sucursal s ON inv.ID_Sucursal = s.ID_Sucursal
where inv.Cantidad < 10 --  10 tomando como poco
order by inv.Cantidad asc

-- empleados con más ventas
select 
    e.nombre + ' ' + e.apellido as empleado,
    count(v.id_venta) as ventas_realizadas,
    sum(v.total) as monto_vendido
from venta v
join empleado e on v.id_empleado = e.id_empleado
group by e.nombre, e.apellido
order by ventas_realizadas desc

-- listado de productos (ma vendidos)
select top 10
    p.nombre as producto,
    sum(dv.cantidad) as unidades_vendidas,
    count(*) as veces_comprado,
    avg(dv.PrecioUnitario) as precio_promedio,
    sum(dv.cantidad * dv.PrecioUnitario) as total_vendido
from detalleventa dv
join producto p on dv.id_producto = p.id_producto
group by p.nombre, p.id_producto
order by unidades_vendidas desc

