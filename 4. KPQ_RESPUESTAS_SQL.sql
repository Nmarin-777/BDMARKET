--PREGUNTA 1: �Cu�les son los tres principales proveedores por monto total facturado de octubre a diciembre de 2024, incluyendo su porcentaje de participaci�n correspondiente?
SELECT TOP 3 
    p.IdProveedor, 
    prov.Rsocial, 
    SUM(pxv.PrecioFinal) AS TotalFacturado,
    (SUM(pxv.PrecioFinal) * 100.0 / (SELECT SUM(pxv2.PrecioFinal) 
                                      FROM G3.[PRODUCTOS X VENTA] pxv2
                                      JOIN G3.VENTA v2 ON pxv2.IdVenta = v2.IdVenta
                                      WHERE v2.FechaVenta BETWEEN '2024-10-01' AND '2024-12-31')) AS Porcentaje
FROM G3.[PRODUCTOS X VENTA] pxv
JOIN G3.VENTA v ON pxv.IdVenta = v.IdVenta
JOIN G3.PRODUCTO p ON pxv.IdProducto = p.IdProducto
JOIN G3.PROVEEDOR prov ON p.IdProveedor = prov.IdProveedor
WHERE v.FechaVenta BETWEEN '2024-10-01' AND '2024-12-31'
GROUP BY p.IdProveedor, prov.Rsocial
ORDER BY TotalFacturado DESC;


--PREGUNTA 2: �Cu�les son los cinco productos con la mayor cantidad de unidades vendidas en 2024, incluyendo su porcentaje de participaci�n correspondiente?
SELECT TOP 5 
    p.NomProducto, 
    SUM(pxv.Cantidad) AS TotalUnidadesVendidas,
    (SUM(pxv.Cantidad) * 100.0 / (SELECT SUM(pxv2.Cantidad) FROM G3.[PRODUCTOS X VENTA] pxv2)) AS Porcentaje
FROM G3.[PRODUCTOS X VENTA] pxv
JOIN G3.PRODUCTO p ON pxv.IdProducto = p.IdProducto
JOIN G3.VENTA v ON pxv.IdVenta = v.IdVenta
WHERE YEAR(v.FechaVenta) = 2024
GROUP BY p.NomProducto
ORDER BY TotalUnidadesVendidas DESC;


--PREGUNTA 3: �Cu�ntos clientes realizaron compras en cada mes, de octubre a diciembre de 2024?
SELECT 
    FORMAT(FechaVenta, 'yyyy-MM') AS Mes,
    COUNT(IdVenta) AS TotalVentas
FROM G3.VENTA
WHERE FechaVenta BETWEEN '2024-10-01' AND '2024-12-31'
GROUP BY FORMAT(FechaVenta, 'yyyy-MM')
ORDER�BY�Mes;


--PREGUNTA 4: �Cu�l fue el m�todo de pago con la mayor cantidad de transacciones y el mayor monto facturado en el �ltimo trimestre de 2024, incluyendo su porcentaje de participaci�n correspondiente?
SELECT 
    mp.MedioDePago,
    COUNT(v.IdVenta) AS CantidadTransacciones,
    SUM(pxv.PrecioFinal) AS MontoFacturado,
    (SUM(pxv.PrecioFinal) * 100.0 / (SELECT SUM(pxv2.PrecioFinal) 
                                     FROM G3.[PRODUCTOS X VENTA] pxv2
                                     JOIN G3.VENTA v2 ON pxv2.IdVenta = v2.IdVenta
                                     WHERE v2.FechaVenta BETWEEN '2024-10-01' AND '2024-12-31')) AS Porcentaje
FROM G3.VENTA v
JOIN G3.[MEDIO DE PAGO] mp ON v.IdMedioDePago = mp.IdMedioDePago
JOIN G3.[PRODUCTOS X VENTA] pxv ON v.IdVenta = pxv.IdVenta
WHERE v.FechaVenta BETWEEN '2024-10-01' AND '2024-12-31'
GROUP BY mp.MedioDePago
ORDER BY MontoFacturado DESC;


--PREGUNTA 5: �Cu�les son los empleados con la mayor cantidad de transacciones y montos facturados en 2024, incluyendo su porcentaje de participaci�n correspondiente?
SELECT 
    e.IdEmpleado, 
    e.NomEmpleado, 
    COUNT(v.IdVenta) AS TotalTransacciones, 
    SUM(pxv.PrecioFinal) AS TotalFacturado,
    (SUM(pxv.PrecioFinal) * 100.0 / (SELECT SUM(pxv2.PrecioFinal) FROM G3.[PRODUCTOS X VENTA] pxv2)) AS Porcentaje
FROM G3.VENTA v
JOIN G3.EMPLEADO e ON v.IdEmpleado = e.IdEmpleado
JOIN G3.[PRODUCTOS X VENTA] pxv ON v.IdVenta = pxv.IdVenta
WHERE YEAR(v.FechaVenta) = 2024
GROUP BY e.IdEmpleado, e.NomEmpleado
ORDER BY TotalFacturado DESC;


--PREGUNTA 6: �Cu�l fue el total de costos, facturaci�n y ganancia en ventas de todos los productos en 2024, incluyendo el porcentaje de ganancia correspondiente?
SELECT 
    SUM(p.CostoUnidad * pxv.Cantidad) AS TotalCosto,
    SUM(pxv.PrecioFinal) AS TotalFacturacion,
    SUM(pxv.PrecioFinal) - SUM(p.CostoUnidad * pxv.Cantidad) AS Ganancia,
    ((SUM(pxv.PrecioFinal) - SUM(p.CostoUnidad * pxv.Cantidad)) * 100.0 / SUM(pxv.PrecioFinal)) AS PorcentajeGanancia
FROM G3.[PRODUCTOS X VENTA] pxv
JOIN G3.PRODUCTO p ON pxv.IdProducto = p.IdProducto
JOIN G3.VENTA v ON pxv.IdVenta = v.IdVenta
WHERE YEAR(v.FechaVenta) = 2024;


--PREGUNTA 7: �Cu�l fue la categor�a de productos con la mayor cantidad de unidades vendidas y facturaci�n en diciembre de 2024, incluyendo su porcentaje de participaci�n correspondiente?
SELECT 
    c.NomCategoria,
    SUM(pxv.Cantidad) AS TotalUnidadesVendidas,
    SUM(pxv.PrecioFinal) AS TotalFacturacion,
    (SUM(pxv.PrecioFinal) * 100.0 / (SELECT SUM(pxv2.PrecioFinal) FROM G3.[PRODUCTOS X VENTA] pxv2
                                     JOIN G3.VENTA v2 ON pxv2.IdVenta = v2.IdVenta
                                     WHERE MONTH(v2.FechaVenta) = 12 AND YEAR(v2.FechaVenta) = 2024)) AS Porcentaje
FROM G3.[PRODUCTOS X VENTA] pxv
JOIN G3.PRODUCTO p ON pxv.IdProducto = p.IdProducto
JOIN G3.CATEGORIA c ON p.IdCategoria = c.IdCategoria
JOIN G3.VENTA v ON pxv.IdVenta = v.IdVenta
WHERE MONTH(v.FechaVenta) = 12 AND YEAR(v.FechaVenta) = 2024
GROUP BY c.NomCategoria
ORDER BY TotalFacturacion DESC;


--PREGUNTA 8: �En qu� hora del d�a se registr� la mayor cantidad de transacciones de ventas durante el �ltimo trimestre de 2024, incluyendo su porcentaje de participaci�n correspondiente?
SELECT 
    DATEPART(HOUR, HoraVenta) AS Hora, 
    COUNT(v.IdVenta) AS CantidadTransacciones,
    (COUNT(v.IdVenta) * 100.0 / (SELECT COUNT(v2.IdVenta) FROM G3.VENTA v2 
                                 WHERE v2.FechaVenta BETWEEN '2024-10-01' AND '2024-12-31')) AS Porcentaje
FROM G3.VENTA v
WHERE v.FechaVenta BETWEEN '2024-10-01' AND '2024-12-31'
GROUP BY DATEPART(HOUR, HoraVenta)
ORDER BY CantidadTransacciones DESC;


--PREGUNTA 9: �Cu�les fueron los proveedores con la mayor cantidad de unidades y montos facturados de todos los productos durante 2024, incluyendo su porcentaje de participaci�n correspondiente?
SELECT 
    p.IdProveedor, 
    prov.Rsocial, 
    SUM(pxv.Cantidad) AS TotalUnidadesVendidas,
    SUM(pxv.PrecioFinal) AS TotalFacturado,
    (SUM(pxv.PrecioFinal) * 100.0 / (SELECT SUM(pxv2.PrecioFinal) FROM G3.[PRODUCTOS X VENTA] pxv2)) AS Porcentaje
FROM G3.[PRODUCTOS X VENTA] pxv
JOIN G3.PRODUCTO p ON pxv.IdProducto = p.IdProducto
JOIN G3.PROVEEDOR prov ON p.IdProveedor = prov.IdProveedor
JOIN G3.VENTA v ON pxv.IdVenta = v.IdVenta
WHERE YEAR(v.FechaVenta) = 2024
GROUP BY p.IdProveedor, prov.Rsocial
ORDER BY TotalFacturado DESC;


--PREGUNTA 10: �Cu�l fue la presentaci�n de bebidas con la mayor cantidad de unidades vendidas y facturaci�n en el primer trimestre de 2024, incluyendo su porcentaje de participaci�n correspondiente?
SELECT 
    pre.Descripcion, 
    SUM(pxv.Cantidad) AS TotalUnidadesVendidas,
    SUM(pxv.PrecioFinal) AS TotalFacturacion,
    (SUM(pxv.PrecioFinal) * 100.0 / (SELECT SUM(pxv2.PrecioFinal) FROM G3.[PRODUCTOS X VENTA] pxv2)) AS Porcentaje
FROM G3.[PRODUCTOS X VENTA] pxv
JOIN G3.PRODUCTO p ON pxv.IdProducto = p.IdProducto
JOIN G3.PRESENTACION pre ON p.IdPresentacion = pre.IdPresentacion
JOIN G3.VENTA v ON pxv.IdVenta = v.IdVenta
WHERE YEAR(v.FechaVenta) = 2024 AND MONTH(v.FechaVenta) BETWEEN 1 AND 3
GROUP BY pre.Descripcion
ORDER BY TotalFacturacion DESC;
