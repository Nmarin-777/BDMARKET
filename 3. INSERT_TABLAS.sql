-- Inserta los datos en G3.CATEGORIA
INSERT INTO G3.CATEGORIA (NomCategoria, Descripción)
VALUES 
('Abarrotes', 'Productos básicos y de despensa esenciales para el hogar'),
('Bebidas', 'Variedad de bebidas refrescantes y energéticas, incluyendo aguas, jugos, refrescos, tés, café, así como bebidas alcohólicas como cervezas y licores.'),
('Lácteos', 'Productos derivados de la leche como leche líquida y en polvo, yogures, quesos, crema y mantequilla, esenciales para una alimentación equilibrada.'),
('Botanas', 'Snacks y antojos para cualquier momento del día, como papas fritas, galletas, chocolates, cacahuates, chicles y productos horneados.'),
('Limpieza', 'Artículos para la higiene y el cuidado del hogar, incluyendo detergentes, limpiadores multiusos, cloro, jabón para trastes, suavizantes y esponjas.');
GO

-- Inserta los datos en G3.PRESENTACION
INSERT INTO G3.PRESENTACION (Descripcion)
VALUES 
('Bolsa'),
('Lata'),
('Botella'),
('Caja'),
('Pack');


-- Inserta los datos en G3.PROVEEDOR
INSERT INTO G3.PROVEEDOR (Rsocial, NomContacto, CargoContacto, Direccion, Distrito, Telefono)
VALUES
('HERM DEL PERU EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA - HERM DEL PERU E.I.R.L.', 'Verenice Caballlero', 'Gerente de compras', 'AV. JAVIER PRADO ESTE NRO. 6210 INT. 806 URB. LA RIVIERA DE MONTERRICO', 'LA MOLINA', '985065555'),
('MASTER GROUP SOLUTIONS SOCIEDAD COMERCIAL DE RESPONSABILIDAD LIMITADA - MASTER GROUP SOLUTIONS S.R.L', 'Antonio Salas', 'Administrador de pedidos', 'AV. MICAELA BASTIDAS NRO. 647 (FRENTE A EMERGENCIAS DE ESSALUD)', 'WANCHAQ', '985857555'),
('AMASAM S.A.C.', 'Carmen Casas', 'Agente de ventas', 'AV. DE LA CULTURA LOTE. B-4 URB. LOS ANDES (FT HOTEL UNION REAL CARRIL SUB 7MO PAR)', 'SAN SEBASTIAN', '985666522'),
('SALAS ESCOBAR RUTH ASUNCION', 'Marianela Juarez', 'Agente de ventas', 'CAL. LAS CAOBAS NRO. 112 URB. NEPTUNO', 'SANTIAGO DE SURCO', '965652355'),
('SUPERMERCADO LA CANASTA EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA-SUPERMERCADO LA CANASTA EIRL,', 'Oscar Callo', 'Agente de ventas', 'PZA. SAN FRANCISCO NRO. 369 INT. 2 (JUNTO AL ARCO SANTA CLARA)', 'CUSCO', '985221154'),
('CORNEJO PEÑA RUTBEL', 'Ruth Ttito', 'Agente de ventas', 'AV. JORGE CHAVEZ NRO. 1218', 'SANTIAGO DE SURCO', '927529436'),
('CHILE LENES RUTH VERONICA', 'Martin Bein', 'Agente de ventas', 'AV. JORGE CHAVEZ NRO. 1218', 'WANCHAQ', '927854658'),
('A & D MANUFACTURAS ELECTRICAS SOCIEDAD COMERCIAL DE RESPONSABILIDAD LIMITADA', 'Arely Giraldo', 'Administrador de pedidos', 'AV. BOLIVIA NRO. 180 INT. 218 CERCADO DE LIMA', 'LIMA', '985215325'),
('LEZAMA S.R.L.', 'Daniel Jimenez', 'administrador de pedidos', 'AV. DE LA CULTURA LOTE. B-4 URB. LOS ANDES (FT HOTEL UNION REAL CARRIL SUB 7MO PAR)', 'CUSCO', '985455441');


-- Inserta los datos en G3.PRODUCTOS
INSERT INTO G3.PRODUCTO 
(NomProducto, IdProveedor, IdCategoria, TipoUnidad, CantidadUnidad, CostoUnidad, PrecioUnidad, IdPresentacion)
VALUES
('Aceite Primor', 2, 1, 'Litros', 1, 8, 10, 3),
('Fideos Don Vittorio', 2, 1, 'Gramos', 500, 1, 1.5, 1),
('Mayonesa AlaCena', 2, 1, 'Gramos', 500, 4, 6, 3),
('Galletas Casino', 6, 4, 'Gramos', 100, 1, 1.5, 4),
('Detergente Bolívar', 8, 5, 'Gramos', 1000, 9, 10.5, 1),
('Leche Gloria', 4, 3, 'Litros', 1, 4, 4.5, 3),
('Refresco Inca Kola', 3, 2, 'Litros', 1.5, 5, 6.9, 3),
('Café Altomayo', 2, 1, 'Gramos', 250, 25, 28.7, 2),
('Arroz Costeño', 2, 1, 'Kilogramos', 100, 3.5, 4.9, 1),
('Azúcar Rubia Fina', 2, 1, 'Kilogramos', 100, 3.5, 4.6, 1),
('Yogurt Laive', 4, 3, 'Mililitros', 850, 7, 8.9, 3),
('Cerveza Cusqueña', 3, 2, 'Mililitros', 330, 3.5, 5, 2),
('Jugo Kero', 3, 2, 'Litros', 40, 3.3, 4.4, 3),
('Pan de Molde Bimbo', 2, 1, 'Gramos', 600, 4, 6, 1),
('Salsa de Tomate Don Vittorio', 2, 1, 'Gramos', 400, 3, 3.9, 3),
('Atún Florida', 2, 1, 'Gramos', 170, 5, 6.4, 2),
('Mantequilla Gloria', 4, 3, 'Gramos', 200, 5, 6.4, 4),
('Queso Andino Laive', 4, 3, 'Gramos', 250, 9, 12.9, 4),
('Gaseosa Coca Cola', 3, 2, 'Litros', 20, 4.5, 6.5, 3),
('Agua Cielo', 3, 2, 'Litros', 30, 2, 3, 3),
('Chocolate Sublime', 6, 4, 'Gramos', 32, 1.5, 2, 4),
('Galletas Field', 6, 4, 'Gramos', 120, 2, 3.5, 4),
('Jabón Marsella', 8, 5, 'Gramos', 250, 4, 5.4, 1),
('Suavizante Downy', 8, 5, 'Litros', 18, 7, 8.9, 3),
('Shampoo Head & Shoulders', 8, 5, 'Mililitros', 375, 15, 18.9, 3),
('Pasta Dental Colgate', 8, 5, 'Gramos', 90, 4, 5, 4),
('Desodorante Rexona', 8, 5, 'Mililitros', 150, 8, 10, 3),
('Arroz Paisana', 2, 1, 'Kilogramos', 1, 3.5, 5, 1),
('Fideos Nicolini', 2, 1, 'Gramos', 500, 1.3, 2, 4),
('Leche Evaporada Ideal', 4, 3, 'Mililitros', 410, 4, 4.5, 2),
('Galletas Morochas', 6, 4, 'Gramos', 130, 2, 3.5, 4),
('Detergente Ace', 8, 5, 'Gramos', 300, 9, 13, 1),
('Galletas Tentación', 2, 1, 'Gramos', 34, 1.3, 1.5, 5),
('Cereal Angel', 2, 1, 'Gramos', 50, 17, 21.9, 1),
('Mermelada Gloria', 6, 4, 'Gramos', 29, 10, 12.49, 3),
('Mantequilla Sello de Oro', 2, 1, 'Gramos', 30, 3.3, 4.4, 1),
('Queso Paria Laive', 4, 3, 'Gramos', 8, 9.76, 11.9, 1),
('Aceite Vegetal Primor', 1, 1, 'Mililitros', 3, 33, 47.1, 5),
('Fideos Molitalia', 1, 1, 'Gramos', 55, 1.3, 2, 3),
('Jabón Liquido Aval', 8, 5, 'Litros', 7, 10, 12.6, 3),
('Shampoo Pantene', 9, 5, 'Mililitros', 14, 17, 20.9, 3),
('Desodorante Nivea', 9, 5, 'Gramos', 1, 10, 13.9, 1),
('Yogurt Griego', 3, 2, 'Gramos', 12, 12, 15.9, 5),
('Leche Deslactosada Laive', 4, 3, 'Mililitros', 20, 17, 22.9, 1),
('Gaseosa Pepsi', 3, 2, 'Mililitros', 19, 6.5, 8, 3),
('Cerveza Pilsen Callao', 3, 2, 'Mililitros', 50, 27.25, 34.9, 5),
('Vino Tacama', 3, 2, 'Mililitros', 9, 11.4, 16.9, 3),
('Detergente Sapolio', 9, 5, 'Gramos', 2, 9, 13.7, 5),
('Papel Higiénico Suave', 9, 5, 'Unidad', 80, 3, 4.5, 5),
('Gelatina Universal', 1, 1, 'Gramos', 10, 2.8, 3.8, 1),
('Café Tradición Nescafé', 1, 1, 'Gramos', 20, 17, 25.9, 5),
('Chocolates Winters', 1, 1, 'Gramos', 21, 12, 17.2, 4),
('Atún gloria', 1, 1, 'Gramos', 10, 5, 6.4, 2),
('Azúcar Blanca Casa Blanca', 1, 1, 'Gramos', 7, 3.8, 4.9, 1),
('Salsa Golf AlaCena', 1, 1, 'Gramos', 11, 11, 13.99, 3),
('Mayonesa Hellmann''s', 1, 1, 'Mililitros', 8, 16, 19.8, 4),
('Te Verde Wawasana', 1, 1, 'Gramos', 6, 6, 9.7, 4),
('Refresco Kola Inglesa', 3, 2, 'Litros', 20, 8, 10.5, 3),
('Arroz Extra Costeño', 1, 1, 'Kg', 20, 3.3, 4.9, 1),
('Fideos Bell''s', 1, 1, 'Gramos', 7, 0.9, 1.3, 1),
('Jabón Bolívar', 9, 5, 'Kg', 20, 4, 5.7, 1),
('Desodorante Dove', 9, 5, 'Mililitros', 12, 10.44, 14.9, 5),
('Leche Condensada Nestlé', 1, 1, 'gramos', 10, 4.5, 6.1, 2),
('Gaseosa Guaraná Antarctica', 1, 1, 'Litros', 15, 5.3, 7.2, 3),
('Agua Mineral San Mateo', 3, 2, 'Litros', 12, 6, 8.5, 3),
('Refresco Big Cola', 3, 2, 'Litros', 20, 8, 11.9, 3),
('Salsa de Tomate Heinz', 1, 1, 'Litros', 15, 7, 10.8, 1),
('Aceite Oliva Cocinero', 1, 1, 'Gramos', 9, 44, 57.4, 3),
('Suavizante Boreal', 9, 5, 'Litros', 10, 9, 12.5, 1),
('Paguete gaseosa KR', 1, 1, 'Litros', 20, 3.3, 5.5, 1),
('Pan de Molde Artesanal', 9, 5, 'Gramos', 7, 9, 13, 1),
('Helado Donofrio', 4, 3, 'Litros', 9, 18, 22.5, 5),
('Sal Marina', 1, 1, 'Gramos', 20, 1.5, 2.4, 1),
('Te Manzanilla Hornimans', 1, 1, 'Gramos', 14, 9, 13.8, 4),
('Spaghetti San Jorgue', 1, 1, 'Gramos', 10, 2, 3.3, 1),
('Chips Ahoy!', 6, 4, 'Gramos', 20, 4.5, 7.3, 1),
('Café Granulado Oro', 1, 1, 'Kg', 9, 36, 49.9, 1),
('Cerveza Corona', 3, 2, 'Mililitros', 5, 15, 20.9, 5),
('Papas Lays', 6, 4, 'Gramos', 4, 8, 13.9, 1),
('Durazno en almibar', 9, 5, 'Gramos', 20, 7, 9.9, 5);


-- Inserta los datos en G3.EMPLEADO
INSERT INTO G3.EMPLEADO (ApEmpleado, NomEmpleado, Cargo, FechaNac, FechaContrato, Direccion, Distrito, Telefono)
VALUES
('RADO CHINO', 'ANGHIE MELANNY', 'ADMINISTRADOR', '1995-01-01', '2024-01-01', 'CALLE REAL N° 860', 'HUANCAYO', '985421212'),
('AGUAYO ESPINOZA', 'JUVENAL', 'CAJERO', '1985-02-23', '2023-06-01', 'AV. HUANCAVELICA 481', 'HUANCAYO', '985221212'),
('CHOQUE MORIEL', 'LIZBET', 'CAJERO', '1990-01-19', '2021-10-10', 'AV. PROGRESO MZ. D LT. 16 UMUTO', 'EL TAMBO', '985132132'),
('PALOMINO ZAMALLOA', 'MARY LUZ', 'VENDEDOR', '1993-01-27', '2023-01-15', 'CALLE REAL Nº 475 2do PISO', 'HUANCAN', '985212121'),
('QUISPE MAYORGA', 'KARINA', 'VENDEDOR', '1991-01-31', '2022-12-01', 'PASEO LA BREÑA Nº 162', 'CONCEPCION', '986473222'),
('QUISPE CUSIYUPANQUI', 'OLGA', 'VENDEDOR', '1971-01-06', '2022-06-01', 'JR. DOS DE MAYO 460', 'EL TAMBO', '986521212'),
('CHRISTINA SIEBERT', 'SABINE MONIKA', 'VENDEDOR', '1981-01-07', '2022-06-01', 'JR. JUNIN Nº 956 PISO 2 - INT. A', 'LA MERCED', '986451122'),
('QUISPE ALIAGA', 'PAMELA', 'ALMACEN', '1997-01-08', '2020-01-01', 'AV. LEANDRA TORRES Nº 441', 'EL TAMBO', '956454132'),
('CARDENAS APAZA', 'JIMMY', 'ALMACEN', '1989-01-09', '2019-01-01', 'JR. BOLOGNESI 256', 'HUANCAYO', '986534131');


-- Inserta los datos en G3.MEDIOPAGO
INSERT INTO G3.[MEDIO DE PAGO] 
VALUES
('Efectivo'),
('Tarjeta de credito/debito'),
('Yape'),
('Plin');