-- Rafael Martín Mayor.

-- Proporciona una consulta que muestre solo los clientes de Brasil.
select FirstName, Country from customers where Country = "Brazil";
/**
┌───────────┬─────────┐
│ FirstName │ Country │
├───────────┼─────────┤
│ Luís      │ Brazil  │
│ Eduardo   │ Brazil  │
│ Alexandre │ Brazil  │
│ Roberto   │ Brazil  │
│ Fernanda  │ Brazil  │
└───────────┴─────────┘
**/
-- Proporciona una consulta que muestre las facturas de clientes que son de Brasil. La tabla resultante debe mostrar el nombre completo del cliente, ID de factura, fecha de la factura y país de facturación.
select ctmr.FirstName, ctmr.LastName, i.InvoiceId, i.InvoiceDate, i.BillingCountry, i.Total from customers ctmr join invoices i on i.CustomerId = ctmr.CustomerId where Country = "Brazil";
/**
┌───────────┬───────────┬───────────┬─────────────────────┬────────────────┬───────┐
│ FirstName │ LastName  │ InvoiceId │     InvoiceDate     │ BillingCountry │ Total │
├───────────┼───────────┼───────────┼─────────────────────┼────────────────┼───────┤
│ Luís      │ Gonçalves │ 98        │ 2010-03-11 00:00:00 │ Brazil         │ 3.98  │
│ Luís      │ Gonçalves │ 121       │ 2010-06-13 00:00:00 │ Brazil         │ 3.96  │
│ Luís      │ Gonçalves │ 143       │ 2010-09-15 00:00:00 │ Brazil         │ 5.94  │
│ Luís      │ Gonçalves │ 195       │ 2011-05-06 00:00:00 │ Brazil         │ 0.99  │
│ Luís      │ Gonçalves │ 316       │ 2012-10-27 00:00:00 │ Brazil         │ 1.98  │
│ Luís      │ Gonçalves │ 327       │ 2012-12-07 00:00:00 │ Brazil         │ 13.86 │
│ Luís      │ Gonçalves │ 382       │ 2013-08-07 00:00:00 │ Brazil         │ 8.91  │
│ Eduardo   │ Martins   │ 25        │ 2009-04-09 00:00:00 │ Brazil         │ 8.91  │
│ Eduardo   │ Martins   │ 154       │ 2010-11-14 00:00:00 │ Brazil         │ 1.98  │
│ Eduardo   │ Martins   │ 177       │ 2011-02-16 00:00:00 │ Brazil         │ 3.96  │
│ Eduardo   │ Martins   │ 199       │ 2011-05-21 00:00:00 │ Brazil         │ 5.94  │
│ Eduardo   │ Martins   │ 251       │ 2012-01-09 00:00:00 │ Brazil         │ 0.99  │
│ Eduardo   │ Martins   │ 372       │ 2013-07-02 00:00:00 │ Brazil         │ 1.98  │
│ Eduardo   │ Martins   │ 383       │ 2013-08-12 00:00:00 │ Brazil         │ 13.86 │
│ Alexandre │ Rocha     │ 57        │ 2009-09-06 00:00:00 │ Brazil         │ 1.98  │
│ Alexandre │ Rocha     │ 68        │ 2009-10-17 00:00:00 │ Brazil         │ 13.86 │
│ Alexandre │ Rocha     │ 123       │ 2010-06-17 00:00:00 │ Brazil         │ 8.91  │
│ Alexandre │ Rocha     │ 252       │ 2012-01-22 00:00:00 │ Brazil         │ 1.98  │
│ Alexandre │ Rocha     │ 275       │ 2012-04-25 00:00:00 │ Brazil         │ 3.96  │
│ Alexandre │ Rocha     │ 297       │ 2012-07-28 00:00:00 │ Brazil         │ 5.94  │
│ Alexandre │ Rocha     │ 349       │ 2013-03-18 00:00:00 │ Brazil         │ 0.99  │
│ Roberto   │ Almeida   │ 34        │ 2009-05-23 00:00:00 │ Brazil         │ 0.99  │
│ Roberto   │ Almeida   │ 155       │ 2010-11-14 00:00:00 │ Brazil         │ 1.98  │
│ Roberto   │ Almeida   │ 166       │ 2010-12-25 00:00:00 │ Brazil         │ 13.86 │
│ Roberto   │ Almeida   │ 221       │ 2011-08-25 00:00:00 │ Brazil         │ 8.91  │
│ Roberto   │ Almeida   │ 350       │ 2013-03-31 00:00:00 │ Brazil         │ 1.98  │
│ Roberto   │ Almeida   │ 373       │ 2013-07-03 00:00:00 │ Brazil         │ 3.96  │
│ Roberto   │ Almeida   │ 395       │ 2013-10-05 00:00:00 │ Brazil         │ 5.94  │
│ Fernanda  │ Ramos     │ 35        │ 2009-06-05 00:00:00 │ Brazil         │ 1.98  │
│ Fernanda  │ Ramos     │ 58        │ 2009-09-07 00:00:00 │ Brazil         │ 3.96  │
│ Fernanda  │ Ramos     │ 80        │ 2009-12-10 00:00:00 │ Brazil         │ 5.94  │
│ Fernanda  │ Ramos     │ 132       │ 2010-07-31 00:00:00 │ Brazil         │ 0.99  │
│ Fernanda  │ Ramos     │ 253       │ 2012-01-22 00:00:00 │ Brazil         │ 1.98  │
│ Fernanda  │ Ramos     │ 264       │ 2012-03-03 00:00:00 │ Brazil         │ 13.86 │
│ Fernanda  │ Ramos     │ 319       │ 2012-11-01 00:00:00 │ Brazil         │ 8.91  │
└───────────┴───────────┴───────────┴─────────────────────┴────────────────┴───────┘
**/
-- Proporciona una consulta que muestre solo los empleados que son Agentes de Ventas.
select FirstName, LastName, Title from employees where Title = "Sales Support Agent";
/**
┌───────────┬──────────┬─────────────────────┐
│ FirstName │ LastName │        Title        │
├───────────┼──────────┼─────────────────────┤
│ Jane      │ Peacock  │ Sales Support Agent │
│ Margaret  │ Park     │ Sales Support Agent │
│ Steve     │ Johnson  │ Sales Support Agent │
└───────────┴──────────┴─────────────────────┘
**/
-- Proporciona una consulta que muestre una lista única de países de facturación de la tabla de Facturas.
select distinct BillingCountry from invoices;
/**
┌────────────────┐
│ BillingCountry │
├────────────────┤
│ Germany        │
│ Norway         │
│ Belgium        │
│ Canada         │
│ USA            │
│ France         │
│ Ireland        │
│ United Kingdom │
│ Australia      │
│ Chile          │
│ India          │
│ Brazil         │
│ Portugal       │
│ Netherlands    │
│ Spain          │
│ Sweden         │
│ Czech Republic │
│ Finland        │
│ Denmark        │
│ Italy          │
│ Poland         │
│ Austria        │
│ Hungary        │
│ Argentina      │
└────────────────┘
**/
-- Proporciona una consulta que muestre las facturas de clientes que son de Brasil.
select ctmr.FirstName, ctmr.LastName, i.InvoiceId, i.InvoiceDate, i.BillingCountry, i.Total from customers ctmr join invoices i on i.CustomerId = ctmr.CustomerId where Country = "Brazil";
/**
┌───────────┬───────────┬───────────┬─────────────────────┬────────────────┬───────┐
│ FirstName │ LastName  │ InvoiceId │     InvoiceDate     │ BillingCountry │ Total │
├───────────┼───────────┼───────────┼─────────────────────┼────────────────┼───────┤
│ Luís      │ Gonçalves │ 98        │ 2010-03-11 00:00:00 │ Brazil         │ 3.98  │
│ Luís      │ Gonçalves │ 121       │ 2010-06-13 00:00:00 │ Brazil         │ 3.96  │
│ Luís      │ Gonçalves │ 143       │ 2010-09-15 00:00:00 │ Brazil         │ 5.94  │
│ Luís      │ Gonçalves │ 195       │ 2011-05-06 00:00:00 │ Brazil         │ 0.99  │
│ Luís      │ Gonçalves │ 316       │ 2012-10-27 00:00:00 │ Brazil         │ 1.98  │
│ Luís      │ Gonçalves │ 327       │ 2012-12-07 00:00:00 │ Brazil         │ 13.86 │
│ Luís      │ Gonçalves │ 382       │ 2013-08-07 00:00:00 │ Brazil         │ 8.91  │
│ Eduardo   │ Martins   │ 25        │ 2009-04-09 00:00:00 │ Brazil         │ 8.91  │
│ Eduardo   │ Martins   │ 154       │ 2010-11-14 00:00:00 │ Brazil         │ 1.98  │
│ Eduardo   │ Martins   │ 177       │ 2011-02-16 00:00:00 │ Brazil         │ 3.96  │
│ Eduardo   │ Martins   │ 199       │ 2011-05-21 00:00:00 │ Brazil         │ 5.94  │
│ Eduardo   │ Martins   │ 251       │ 2012-01-09 00:00:00 │ Brazil         │ 0.99  │
│ Eduardo   │ Martins   │ 372       │ 2013-07-02 00:00:00 │ Brazil         │ 1.98  │
│ Eduardo   │ Martins   │ 383       │ 2013-08-12 00:00:00 │ Brazil         │ 13.86 │
│ Alexandre │ Rocha     │ 57        │ 2009-09-06 00:00:00 │ Brazil         │ 1.98  │
│ Alexandre │ Rocha     │ 68        │ 2009-10-17 00:00:00 │ Brazil         │ 13.86 │
│ Alexandre │ Rocha     │ 123       │ 2010-06-17 00:00:00 │ Brazil         │ 8.91  │
│ Alexandre │ Rocha     │ 252       │ 2012-01-22 00:00:00 │ Brazil         │ 1.98  │
│ Alexandre │ Rocha     │ 275       │ 2012-04-25 00:00:00 │ Brazil         │ 3.96  │
│ Alexandre │ Rocha     │ 297       │ 2012-07-28 00:00:00 │ Brazil         │ 5.94  │
│ Alexandre │ Rocha     │ 349       │ 2013-03-18 00:00:00 │ Brazil         │ 0.99  │
│ Roberto   │ Almeida   │ 34        │ 2009-05-23 00:00:00 │ Brazil         │ 0.99  │
│ Roberto   │ Almeida   │ 155       │ 2010-11-14 00:00:00 │ Brazil         │ 1.98  │
│ Roberto   │ Almeida   │ 166       │ 2010-12-25 00:00:00 │ Brazil         │ 13.86 │
│ Roberto   │ Almeida   │ 221       │ 2011-08-25 00:00:00 │ Brazil         │ 8.91  │
│ Roberto   │ Almeida   │ 350       │ 2013-03-31 00:00:00 │ Brazil         │ 1.98  │
│ Roberto   │ Almeida   │ 373       │ 2013-07-03 00:00:00 │ Brazil         │ 3.96  │
│ Roberto   │ Almeida   │ 395       │ 2013-10-05 00:00:00 │ Brazil         │ 5.94  │
│ Fernanda  │ Ramos     │ 35        │ 2009-06-05 00:00:00 │ Brazil         │ 1.98  │
│ Fernanda  │ Ramos     │ 58        │ 2009-09-07 00:00:00 │ Brazil         │ 3.96  │
│ Fernanda  │ Ramos     │ 80        │ 2009-12-10 00:00:00 │ Brazil         │ 5.94  │
│ Fernanda  │ Ramos     │ 132       │ 2010-07-31 00:00:00 │ Brazil         │ 0.99  │
│ Fernanda  │ Ramos     │ 253       │ 2012-01-22 00:00:00 │ Brazil         │ 1.98  │
│ Fernanda  │ Ramos     │ 264       │ 2012-03-03 00:00:00 │ Brazil         │ 13.86 │
│ Fernanda  │ Ramos     │ 319       │ 2012-11-01 00:00:00 │ Brazil         │ 8.91  │
└───────────┴───────────┴───────────┴─────────────────────┴────────────────┴───────┘
**/
-- Proporciona una consulta que muestre las facturas asociadas con cada agente de ventas. La tabla resultante debe incluir el nombre completo del Agente de Ventas.
select e.FirstName, e.LastName, e.Title, i.InvoiceId, i.InvoiceDate, i.BillingCountry, i.Total from employees e join invoices i on e.EmployeeId = i.EmployeeId where Title = "Sales Support Agent";
/**
No devuelve nada porque en la tabla de facturas no hay id de empleado. (Los empleados no tienen faacturas)
**/
-- Proporciona una consulta que muestre el Total de la Factura, nombre del cliente, país y nombre del Agente de Ventas para todas las facturas y clientes.
select i.Total, c.FirstName, c.Country, e.
/**

**/
-- ¿Cuántas facturas hubo en 2009 y 2011? ¿Cuáles son las ventas totales respectivas para cada uno de esos años?

/**

**/
-- Mirando la tabla de InvoiceLine, proporciona una consulta que CUENTE el número de ítems de línea para el ID de factura 37.

/**

**/
-- Mirando la tabla de InvoiceLine, proporciona una consulta que CUENTE el número de ítems de línea para cada Factura. PISTA: [GROUP BY](http://www.sqlite.org/lang_select.html#resultset)

/**

**/
-- Proporciona una consulta que incluya el nombre de la pista con cada ítem de línea de factura.

/**

**/
-- Proporciona una consulta que incluya el nombre de la pista comprada Y el nombre del artista con cada ítem de línea de factura.

/**

**/
-- Proporciona una consulta que muestre el número total de pistas en cada lista de reproducción. El nombre de la lista de reproducción debe estar incluido en la tabla resultante.

/**

**/
-- Proporciona una consulta que muestre todas las pistas, pero no muestre IDs. La tabla resultante debe incluir el nombre del álbum, el tipo de medio y el género.

/**

**/
-- Proporciona una consulta que muestre todas las facturas.

/**

**/
-- Proporciona una consulta que muestre las ventas totales realizadas por cada agente de ventas.

/**

**/
-- ¿Qué agente de ventas realizó más ventas en 2009?

/**

**/
-- Escribir una consulta que muestre todas las playlists de la base de datos.

/**

**/
-- Escribe una consulta que liste todas las canciones de una playlist.

/**

**/
-- Escribe una consulta que liste **exclusivamente** el nombre de las canciones de una playlist concreta, con el nombre de su género y el nombre de tipo de medio.

/**

**/