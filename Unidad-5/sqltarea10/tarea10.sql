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
select e.FirstName, e.LastName, e.Title, i.InvoiceId, i.InvoiceDate, i.BillingCountry, i.Total from employees e join invoices i on e.EmployeeId = i.EmployeeId where e.Title = "Sales Support Agent";
/**
No devuelve nada porque en la tabla de facturas no hay id de empleado. (Los empleados no tienen facturas)
**/
-- Proporciona una consulta que muestre el Total de la Factura, nombre del cliente, país y nombre del Agente de Ventas para todas las facturas y clientes.
select i.Total, c.FirstName as customer_name, c.Country as customer_country, e.FirstName as sales_support_agent_name from customers c join invoices i on c.CustomerId = i.CustomerId join employees e on e.EmployeeId = c.SupportRepId where e.Title = "Sales Support Agent";
/**
┌───────┬───────────────┬──────────────────┬──────────────────────────┐
│ Total │ customer_name │ customer_country │ sales_support_agent_name │
├───────┼───────────────┼──────────────────┼──────────────────────────┤
│ 3.98  │ Luís          │ Brazil           │ Jane                     │
│ 3.96  │ Luís          │ Brazil           │ Jane                     │
│ 5.94  │ Luís          │ Brazil           │ Jane                     │
│ 0.99  │ Luís          │ Brazil           │ Jane                     │
│ 1.98  │ Luís          │ Brazil           │ Jane                     │
│ 13.86 │ Luís          │ Brazil           │ Jane                     │
│ 8.91  │ Luís          │ Brazil           │ Jane                     │
│ 3.98  │ François      │ Canada           │ Jane                     │
│ 13.86 │ François      │ Canada           │ Jane                     │
│ 8.91  │ François      │ Canada           │ Jane                     │
│ 1.98  │ François      │ Canada           │ Jane                     │
│ 3.96  │ François      │ Canada           │ Jane                     │
│ 5.94  │ François      │ Canada           │ Jane                     │
│ 0.99  │ François      │ Canada           │ Jane                     │
│ 0.99  │ Roberto       │ Brazil           │ Jane                     │
│ 1.98  │ Roberto       │ Brazil           │ Jane                     │
│ 13.86 │ Roberto       │ Brazil           │ Jane                     │
│ 8.91  │ Roberto       │ Brazil           │ Jane                     │
│ 1.98  │ Roberto       │ Brazil           │ Jane                     │
│ 3.96  │ Roberto       │ Brazil           │ Jane                     │
│ 5.94  │ Roberto       │ Brazil           │ Jane                     │
│ 1.98  │ Jennifer      │ Canada           │ Jane                     │
│ 13.86 │ Jennifer      │ Canada           │ Jane                     │
│ 9.91  │ Jennifer      │ Canada           │ Jane                     │
│ 1.98  │ Jennifer      │ Canada           │ Jane                     │
│ 3.96  │ Jennifer      │ Canada           │ Jane                     │
│ 5.94  │ Jennifer      │ Canada           │ Jane                     │
│ 0.99  │ Jennifer      │ Canada           │ Jane                     │
│ 1.98  │ Michelle      │ USA              │ Jane                     │
│ 3.96  │ Michelle      │ USA              │ Jane                     │
│ 5.94  │ Michelle      │ USA              │ Jane                     │
│ 0.99  │ Michelle      │ USA              │ Jane                     │
│ 1.98  │ Michelle      │ USA              │ Jane                     │
│ 13.86 │ Michelle      │ USA              │ Jane                     │
│ 8.91  │ Michelle      │ USA              │ Jane                     │
│ 1.98  │ Tim           │ USA              │ Jane                     │
│ 13.86 │ Tim           │ USA              │ Jane                     │
│ 8.91  │ Tim           │ USA              │ Jane                     │
│ 1.98  │ Tim           │ USA              │ Jane                     │
│ 3.96  │ Tim           │ USA              │ Jane                     │
│ 5.94  │ Tim           │ USA              │ Jane                     │
│ 1.99  │ Tim           │ USA              │ Jane                     │
│ 1.98  │ Frank         │ USA              │ Jane                     │
│ 15.86 │ Frank         │ USA              │ Jane                     │
│ 8.91  │ Frank         │ USA              │ Jane                     │
│ 1.98  │ Frank         │ USA              │ Jane                     │
│ 7.96  │ Frank         │ USA              │ Jane                     │
│ 5.94  │ Frank         │ USA              │ Jane                     │
│ 0.99  │ Frank         │ USA              │ Jane                     │
│ 0.99  │ Robert        │ Canada           │ Jane                     │
│ 1.98  │ Robert        │ Canada           │ Jane                     │
│ 13.86 │ Robert        │ Canada           │ Jane                     │
│ 8.91  │ Robert        │ Canada           │ Jane                     │
│ 1.98  │ Robert        │ Canada           │ Jane                     │
│ 3.96  │ Robert        │ Canada           │ Jane                     │
│ 5.94  │ Robert        │ Canada           │ Jane                     │
│ 1.98  │ Edward        │ Canada           │ Jane                     │
│ 3.96  │ Edward        │ Canada           │ Jane                     │
│ 5.94  │ Edward        │ Canada           │ Jane                     │
│ 0.99  │ Edward        │ Canada           │ Jane                     │
│ 1.98  │ Edward        │ Canada           │ Jane                     │
│ 13.86 │ Edward        │ Canada           │ Jane                     │
│ 8.91  │ Edward        │ Canada           │ Jane                     │
│ 0.99  │ Ellie         │ Canada           │ Jane                     │
│ 1.98  │ Ellie         │ Canada           │ Jane                     │
│ 13.86 │ Ellie         │ Canada           │ Jane                     │
│ 8.91  │ Ellie         │ Canada           │ Jane                     │
│ 1.98  │ Ellie         │ Canada           │ Jane                     │
│ 3.96  │ Ellie         │ Canada           │ Jane                     │
│ 5.94  │ Ellie         │ Canada           │ Jane                     │
│ 0.99  │ Fynn          │ Germany          │ Jane                     │
│ 1.98  │ Fynn          │ Germany          │ Jane                     │
│ 13.86 │ Fynn          │ Germany          │ Jane                     │
│ 14.91 │ Fynn          │ Germany          │ Jane                     │
│ 1.98  │ Fynn          │ Germany          │ Jane                     │
│ 3.96  │ Fynn          │ Germany          │ Jane                     │
│ 5.94  │ Fynn          │ Germany          │ Jane                     │
│ 1.98  │ Niklas        │ Germany          │ Jane                     │
│ 3.96  │ Niklas        │ Germany          │ Jane                     │
│ 5.94  │ Niklas        │ Germany          │ Jane                     │
│ 0.99  │ Niklas        │ Germany          │ Jane                     │
│ 1.98  │ Niklas        │ Germany          │ Jane                     │
│ 13.86 │ Niklas        │ Germany          │ Jane                     │
│ 8.91  │ Niklas        │ Germany          │ Jane                     │
│ 3.96  │ Wyatt         │ France           │ Jane                     │
│ 5.94  │ Wyatt         │ France           │ Jane                     │
│ 0.99  │ Wyatt         │ France           │ Jane                     │
│ 3.98  │ Wyatt         │ France           │ Jane                     │
│ 13.86 │ Wyatt         │ France           │ Jane                     │
│ 8.91  │ Wyatt         │ France           │ Jane                     │
│ 1.98  │ Wyatt         │ France           │ Jane                     │
│ 1.98  │ Isabelle      │ France           │ Jane                     │
│ 3.96  │ Isabelle      │ France           │ Jane                     │
│ 5.94  │ Isabelle      │ France           │ Jane                     │
│ 0.99  │ Isabelle      │ France           │ Jane                     │
│ 1.98  │ Isabelle      │ France           │ Jane                     │
│ 16.86 │ Isabelle      │ France           │ Jane                     │
│ 8.91  │ Isabelle      │ France           │ Jane                     │
│ 8.91  │ Terhi         │ Finland          │ Jane                     │
│ 1.98  │ Terhi         │ Finland          │ Jane                     │
│ 7.96  │ Terhi         │ Finland          │ Jane                     │
│ 5.94  │ Terhi         │ Finland          │ Jane                     │
│ 0.99  │ Terhi         │ Finland          │ Jane                     │
│ 1.98  │ Terhi         │ Finland          │ Jane                     │
│ 13.86 │ Terhi         │ Finland          │ Jane                     │
│ 1.98  │ Ladislav      │ Hungary          │ Jane                     │
│ 21.86 │ Ladislav      │ Hungary          │ Jane                     │
│ 8.91  │ Ladislav      │ Hungary          │ Jane                     │
│ 1.98  │ Ladislav      │ Hungary          │ Jane                     │
│ 3.96  │ Ladislav      │ Hungary          │ Jane                     │
│ 5.94  │ Ladislav      │ Hungary          │ Jane                     │
│ 0.99  │ Ladislav      │ Hungary          │ Jane                     │
│ 5.94  │ Hugh          │ Ireland          │ Jane                     │
│ 0.99  │ Hugh          │ Ireland          │ Jane                     │
│ 1.98  │ Hugh          │ Ireland          │ Jane                     │
│ 21.86 │ Hugh          │ Ireland          │ Jane                     │
│ 8.91  │ Hugh          │ Ireland          │ Jane                     │
│ 1.98  │ Hugh          │ Ireland          │ Jane                     │
│ 3.96  │ Hugh          │ Ireland          │ Jane                     │
│ 8.91  │ Emma          │ United Kingdom   │ Jane                     │
│ 1.98  │ Emma          │ United Kingdom   │ Jane                     │
│ 3.96  │ Emma          │ United Kingdom   │ Jane                     │
│ 5.94  │ Emma          │ United Kingdom   │ Jane                     │
│ 0.99  │ Emma          │ United Kingdom   │ Jane                     │
│ 1.98  │ Emma          │ United Kingdom   │ Jane                     │
│ 13.86 │ Emma          │ United Kingdom   │ Jane                     │
│ 1.98  │ Phil          │ United Kingdom   │ Jane                     │
│ 13.86 │ Phil          │ United Kingdom   │ Jane                     │
│ 8.91  │ Phil          │ United Kingdom   │ Jane                     │
│ 1.98  │ Phil          │ United Kingdom   │ Jane                     │
│ 3.96  │ Phil          │ United Kingdom   │ Jane                     │
│ 5.94  │ Phil          │ United Kingdom   │ Jane                     │
│ 0.99  │ Phil          │ United Kingdom   │ Jane                     │
│ 1.98  │ Manoj         │ India            │ Jane                     │
│ 13.86 │ Manoj         │ India            │ Jane                     │
│ 8.91  │ Manoj         │ India            │ Jane                     │
│ 1.98  │ Manoj         │ India            │ Jane                     │
│ 3.96  │ Manoj         │ India            │ Jane                     │
│ 5.94  │ Manoj         │ India            │ Jane                     │
│ 1.99  │ Manoj         │ India            │ Jane                     │
│ 3.96  │ Puja          │ India            │ Jane                     │
│ 5.94  │ Puja          │ India            │ Jane                     │
│ 1.99  │ Puja          │ India            │ Jane                     │
│ 1.98  │ Puja          │ India            │ Jane                     │
│ 13.86 │ Puja          │ India            │ Jane                     │
│ 8.91  │ Puja          │ India            │ Jane                     │
│ 3.96  │ Bjørn         │ Norway           │ Margaret                 │
│ 5.94  │ Bjørn         │ Norway           │ Margaret                 │
│ 0.99  │ Bjørn         │ Norway           │ Margaret                 │
│ 1.98  │ Bjørn         │ Norway           │ Margaret                 │
│ 15.86 │ Bjørn         │ Norway           │ Margaret                 │
│ 8.91  │ Bjørn         │ Norway           │ Margaret                 │
│ 1.98  │ Bjørn         │ Norway           │ Margaret                 │
│ 1.98  │ František     │ Czech Republic   │ Margaret                 │
│ 3.96  │ František     │ Czech Republic   │ Margaret                 │
│ 5.94  │ František     │ Czech Republic   │ Margaret                 │
│ 0.99  │ František     │ Czech Republic   │ Margaret                 │
│ 1.98  │ František     │ Czech Republic   │ Margaret                 │
│ 16.86 │ František     │ Czech Republic   │ Margaret                 │
│ 8.91  │ František     │ Czech Republic   │ Margaret                 │
│ 5.94  │ Daan          │ Belgium          │ Margaret                 │
│ 0.99  │ Daan          │ Belgium          │ Margaret                 │
│ 1.98  │ Daan          │ Belgium          │ Margaret                 │
│ 13.86 │ Daan          │ Belgium          │ Margaret                 │
│ 8.91  │ Daan          │ Belgium          │ Margaret                 │
│ 1.98  │ Daan          │ Belgium          │ Margaret                 │
│ 3.96  │ Daan          │ Belgium          │ Margaret                 │
│ 1.98  │ Kara          │ Denmark          │ Margaret                 │
│ 3.96  │ Kara          │ Denmark          │ Margaret                 │
│ 5.94  │ Kara          │ Denmark          │ Margaret                 │
│ 0.99  │ Kara          │ Denmark          │ Margaret                 │
│ 1.98  │ Kara          │ Denmark          │ Margaret                 │
│ 13.86 │ Kara          │ Denmark          │ Margaret                 │
│ 8.91  │ Kara          │ Denmark          │ Margaret                 │
│ 8.91  │ Eduardo       │ Brazil           │ Margaret                 │
│ 1.98  │ Eduardo       │ Brazil           │ Margaret                 │
│ 3.96  │ Eduardo       │ Brazil           │ Margaret                 │
│ 5.94  │ Eduardo       │ Brazil           │ Margaret                 │
│ 0.99  │ Eduardo       │ Brazil           │ Margaret                 │
│ 1.98  │ Eduardo       │ Brazil           │ Margaret                 │
│ 13.86 │ Eduardo       │ Brazil           │ Margaret                 │
│ 1.98  │ Fernanda      │ Brazil           │ Margaret                 │
│ 3.96  │ Fernanda      │ Brazil           │ Margaret                 │
│ 5.94  │ Fernanda      │ Brazil           │ Margaret                 │
│ 0.99  │ Fernanda      │ Brazil           │ Margaret                 │
│ 1.98  │ Fernanda      │ Brazil           │ Margaret                 │
│ 13.86 │ Fernanda      │ Brazil           │ Margaret                 │
│ 8.91  │ Fernanda      │ Brazil           │ Margaret                 │
│ 0.99  │ Frank         │ USA              │ Margaret                 │
│ 1.98  │ Frank         │ USA              │ Margaret                 │
│ 13.86 │ Frank         │ USA              │ Margaret                 │
│ 8.91  │ Frank         │ USA              │ Margaret                 │
│ 1.98  │ Frank         │ USA              │ Margaret                 │
│ 3.96  │ Frank         │ USA              │ Margaret                 │
│ 5.94  │ Frank         │ USA              │ Margaret                 │
│ 1.98  │ Dan           │ USA              │ Margaret                 │
│ 13.86 │ Dan           │ USA              │ Margaret                 │
│ 8.91  │ Dan           │ USA              │ Margaret                 │
│ 3.98  │ Dan           │ USA              │ Margaret                 │
│ 3.96  │ Dan           │ USA              │ Margaret                 │
│ 5.94  │ Dan           │ USA              │ Margaret                 │
│ 0.99  │ Dan           │ USA              │ Margaret                 │
│ 1.98  │ Heather       │ USA              │ Margaret                 │
│ 3.96  │ Heather       │ USA              │ Margaret                 │
│ 5.94  │ Heather       │ USA              │ Margaret                 │
│ 0.99  │ Heather       │ USA              │ Margaret                 │
│ 3.98  │ Heather       │ USA              │ Margaret                 │
│ 13.86 │ Heather       │ USA              │ Margaret                 │
│ 8.91  │ Heather       │ USA              │ Margaret                 │
│ 13.86 │ John          │ USA              │ Margaret                 │
│ 8.91  │ John          │ USA              │ Margaret                 │
│ 1.98  │ John          │ USA              │ Margaret                 │
│ 3.96  │ John          │ USA              │ Margaret                 │
│ 5.94  │ John          │ USA              │ Margaret                 │
│ 0.99  │ John          │ USA              │ Margaret                 │
│ 1.98  │ John          │ USA              │ Margaret                 │
│ 1.98  │ Richard       │ USA              │ Margaret                 │
│ 3.96  │ Richard       │ USA              │ Margaret                 │
│ 5.94  │ Richard       │ USA              │ Margaret                 │
│ 0.99  │ Richard       │ USA              │ Margaret                 │
│ 1.98  │ Richard       │ USA              │ Margaret                 │
│ 23.86 │ Richard       │ USA              │ Margaret                 │
│ 8.91  │ Richard       │ USA              │ Margaret                 │
│ 8.91  │ Patrick       │ USA              │ Margaret                 │
│ 1.98  │ Patrick       │ USA              │ Margaret                 │
│ 3.96  │ Patrick       │ USA              │ Margaret                 │
│ 5.94  │ Patrick       │ USA              │ Margaret                 │
│ 0.99  │ Patrick       │ USA              │ Margaret                 │
│ 1.98  │ Patrick       │ USA              │ Margaret                 │
│ 13.86 │ Patrick       │ USA              │ Margaret                 │
│ 1.98  │ Aaron         │ Canada           │ Margaret                 │
│ 13.86 │ Aaron         │ Canada           │ Margaret                 │
│ 8.91  │ Aaron         │ Canada           │ Margaret                 │
│ 1.98  │ Aaron         │ Canada           │ Margaret                 │
│ 3.96  │ Aaron         │ Canada           │ Margaret                 │
│ 5.94  │ Aaron         │ Canada           │ Margaret                 │
│ 0.99  │ Aaron         │ Canada           │ Margaret                 │
│ 1.98  │ João          │ Portugal         │ Margaret                 │
│ 3.96  │ João          │ Portugal         │ Margaret                 │
│ 5.94  │ João          │ Portugal         │ Margaret                 │
│ 0.99  │ João          │ Portugal         │ Margaret                 │
│ 1.98  │ João          │ Portugal         │ Margaret                 │
│ 13.86 │ João          │ Portugal         │ Margaret                 │
│ 10.91 │ João          │ Portugal         │ Margaret                 │
│ 1.98  │ Madalena      │ Portugal         │ Margaret                 │
│ 3.96  │ Madalena      │ Portugal         │ Margaret                 │
│ 5.94  │ Madalena      │ Portugal         │ Margaret                 │
│ 0.99  │ Madalena      │ Portugal         │ Margaret                 │
│ 1.98  │ Madalena      │ Portugal         │ Margaret                 │
│ 13.86 │ Madalena      │ Portugal         │ Margaret                 │
│ 8.91  │ Madalena      │ Portugal         │ Margaret                 │
│ 1.98  │ Camille       │ France           │ Margaret                 │
│ 3.96  │ Camille       │ France           │ Margaret                 │
│ 5.94  │ Camille       │ France           │ Margaret                 │
│ 1.99  │ Camille       │ France           │ Margaret                 │
│ 1.98  │ Camille       │ France           │ Margaret                 │
│ 13.86 │ Camille       │ France           │ Margaret                 │
│ 8.91  │ Camille       │ France           │ Margaret                 │
│ 1.98  │ Dominique     │ France           │ Margaret                 │
│ 13.86 │ Dominique     │ France           │ Margaret                 │
│ 8.91  │ Dominique     │ France           │ Margaret                 │
│ 2.98  │ Dominique     │ France           │ Margaret                 │
│ 3.96  │ Dominique     │ France           │ Margaret                 │
│ 5.94  │ Dominique     │ France           │ Margaret                 │
│ 0.99  │ Dominique     │ France           │ Margaret                 │
│ 1.98  │ Stanisław     │ Poland           │ Margaret                 │
│ 13.86 │ Stanisław     │ Poland           │ Margaret                 │
│ 8.91  │ Stanisław     │ Poland           │ Margaret                 │
│ 1.98  │ Stanisław     │ Poland           │ Margaret                 │
│ 3.96  │ Stanisław     │ Poland           │ Margaret                 │
│ 5.94  │ Stanisław     │ Poland           │ Margaret                 │
│ 0.99  │ Stanisław     │ Poland           │ Margaret                 │
│ 1.98  │ Mark          │ Australia        │ Margaret                 │
│ 3.96  │ Mark          │ Australia        │ Margaret                 │
│ 5.94  │ Mark          │ Australia        │ Margaret                 │
│ 0.99  │ Mark          │ Australia        │ Margaret                 │
│ 1.98  │ Mark          │ Australia        │ Margaret                 │
│ 13.86 │ Mark          │ Australia        │ Margaret                 │
│ 8.91  │ Mark          │ Australia        │ Margaret                 │
│ 1.98  │ Diego         │ Argentina        │ Margaret                 │
│ 3.96  │ Diego         │ Argentina        │ Margaret                 │
│ 5.94  │ Diego         │ Argentina        │ Margaret                 │
│ 0.99  │ Diego         │ Argentina        │ Margaret                 │
│ 1.98  │ Diego         │ Argentina        │ Margaret                 │
│ 13.86 │ Diego         │ Argentina        │ Margaret                 │
│ 8.91  │ Diego         │ Argentina        │ Margaret                 │
│ 1.98  │ Leonie        │ Germany          │ Steve                    │
│ 13.86 │ Leonie        │ Germany          │ Steve                    │
│ 8.91  │ Leonie        │ Germany          │ Steve                    │
│ 1.98  │ Leonie        │ Germany          │ Steve                    │
│ 3.96  │ Leonie        │ Germany          │ Steve                    │
│ 5.94  │ Leonie        │ Germany          │ Steve                    │
│ 0.99  │ Leonie        │ Germany          │ Steve                    │
│ 8.91  │ Helena        │ Czech Republic   │ Steve                    │
│ 1.98  │ Helena        │ Czech Republic   │ Steve                    │
│ 3.96  │ Helena        │ Czech Republic   │ Steve                    │
│ 5.94  │ Helena        │ Czech Republic   │ Steve                    │
│ 0.99  │ Helena        │ Czech Republic   │ Steve                    │
│ 1.98  │ Helena        │ Czech Republic   │ Steve                    │
│ 25.86 │ Helena        │ Czech Republic   │ Steve                    │
│ 1.98  │ Astrid        │ Austria          │ Steve                    │
│ 18.86 │ Astrid        │ Austria          │ Steve                    │
│ 8.91  │ Astrid        │ Austria          │ Steve                    │
│ 1.98  │ Astrid        │ Austria          │ Steve                    │
│ 3.96  │ Astrid        │ Austria          │ Steve                    │
│ 5.94  │ Astrid        │ Austria          │ Steve                    │
│ 0.99  │ Astrid        │ Austria          │ Steve                    │
│ 1.98  │ Alexandre     │ Brazil           │ Steve                    │
│ 13.86 │ Alexandre     │ Brazil           │ Steve                    │
│ 8.91  │ Alexandre     │ Brazil           │ Steve                    │
│ 1.98  │ Alexandre     │ Brazil           │ Steve                    │
│ 3.96  │ Alexandre     │ Brazil           │ Steve                    │
│ 5.94  │ Alexandre     │ Brazil           │ Steve                    │
│ 0.99  │ Alexandre     │ Brazil           │ Steve                    │
│ 8.91  │ Mark          │ Canada           │ Steve                    │
│ 1.98  │ Mark          │ Canada           │ Steve                    │
│ 3.96  │ Mark          │ Canada           │ Steve                    │
│ 5.94  │ Mark          │ Canada           │ Steve                    │
│ 0.99  │ Mark          │ Canada           │ Steve                    │
│ 1.98  │ Mark          │ Canada           │ Steve                    │
│ 13.86 │ Mark          │ Canada           │ Steve                    │
│ 1.98  │ Jack          │ USA              │ Steve                    │
│ 3.96  │ Jack          │ USA              │ Steve                    │
│ 5.94  │ Jack          │ USA              │ Steve                    │
│ 0.99  │ Jack          │ USA              │ Steve                    │
│ 1.98  │ Jack          │ USA              │ Steve                    │
│ 13.86 │ Jack          │ USA              │ Steve                    │
│ 10.91 │ Jack          │ USA              │ Steve                    │
│ 3.96  │ Kathy         │ USA              │ Steve                    │
│ 5.94  │ Kathy         │ USA              │ Steve                    │
│ 0.99  │ Kathy         │ USA              │ Steve                    │
│ 1.98  │ Kathy         │ USA              │ Steve                    │
│ 13.86 │ Kathy         │ USA              │ Steve                    │
│ 8.91  │ Kathy         │ USA              │ Steve                    │
│ 1.98  │ Kathy         │ USA              │ Steve                    │
│ 5.94  │ Victor        │ USA              │ Steve                    │
│ 0.99  │ Victor        │ USA              │ Steve                    │
│ 1.98  │ Victor        │ USA              │ Steve                    │
│ 18.86 │ Victor        │ USA              │ Steve                    │
│ 8.91  │ Victor        │ USA              │ Steve                    │
│ 1.98  │ Victor        │ USA              │ Steve                    │
│ 3.96  │ Victor        │ USA              │ Steve                    │
│ 1.98  │ Julia         │ USA              │ Steve                    │
│ 13.86 │ Julia         │ USA              │ Steve                    │
│ 8.91  │ Julia         │ USA              │ Steve                    │
│ 1.98  │ Julia         │ USA              │ Steve                    │
│ 3.96  │ Julia         │ USA              │ Steve                    │
│ 11.94 │ Julia         │ USA              │ Steve                    │
│ 0.99  │ Julia         │ USA              │ Steve                    │
│ 8.91  │ Martha        │ Canada           │ Steve                    │
│ 1.98  │ Martha        │ Canada           │ Steve                    │
│ 3.96  │ Martha        │ Canada           │ Steve                    │
│ 5.94  │ Martha        │ Canada           │ Steve                    │
│ 0.99  │ Martha        │ Canada           │ Steve                    │
│ 1.98  │ Martha        │ Canada           │ Steve                    │
│ 13.86 │ Martha        │ Canada           │ Steve                    │
│ 1.98  │ Hannah        │ Germany          │ Steve                    │
│ 13.86 │ Hannah        │ Germany          │ Steve                    │
│ 8.91  │ Hannah        │ Germany          │ Steve                    │
│ 1.98  │ Hannah        │ Germany          │ Steve                    │
│ 3.96  │ Hannah        │ Germany          │ Steve                    │
│ 5.94  │ Hannah        │ Germany          │ Steve                    │
│ 0.99  │ Hannah        │ Germany          │ Steve                    │
│ 1.98  │ Marc          │ France           │ Steve                    │
│ 13.86 │ Marc          │ France           │ Steve                    │
│ 8.91  │ Marc          │ France           │ Steve                    │
│ 1.98  │ Marc          │ France           │ Steve                    │
│ 3.96  │ Marc          │ France           │ Steve                    │
│ 5.94  │ Marc          │ France           │ Steve                    │
│ 0.99  │ Marc          │ France           │ Steve                    │
│ 1.98  │ Lucas         │ Italy            │ Steve                    │
│ 3.96  │ Lucas         │ Italy            │ Steve                    │
│ 5.94  │ Lucas         │ Italy            │ Steve                    │
│ 0.99  │ Lucas         │ Italy            │ Steve                    │
│ 1.98  │ Lucas         │ Italy            │ Steve                    │
│ 13.86 │ Lucas         │ Italy            │ Steve                    │
│ 8.91  │ Lucas         │ Italy            │ Steve                    │
│ 8.91  │ Johannes      │ Netherlands      │ Steve                    │
│ 1.98  │ Johannes      │ Netherlands      │ Steve                    │
│ 3.96  │ Johannes      │ Netherlands      │ Steve                    │
│ 8.94  │ Johannes      │ Netherlands      │ Steve                    │
│ 0.99  │ Johannes      │ Netherlands      │ Steve                    │
│ 1.98  │ Johannes      │ Netherlands      │ Steve                    │
│ 13.86 │ Johannes      │ Netherlands      │ Steve                    │
│ 0.99  │ Enrique       │ Spain            │ Steve                    │
│ 1.98  │ Enrique       │ Spain            │ Steve                    │
│ 13.86 │ Enrique       │ Spain            │ Steve                    │
│ 8.91  │ Enrique       │ Spain            │ Steve                    │
│ 1.98  │ Enrique       │ Spain            │ Steve                    │
│ 3.96  │ Enrique       │ Spain            │ Steve                    │
│ 5.94  │ Enrique       │ Spain            │ Steve                    │
│ 1.98  │ Joakim        │ Sweden           │ Steve                    │
│ 3.96  │ Joakim        │ Sweden           │ Steve                    │
│ 6.94  │ Joakim        │ Sweden           │ Steve                    │
│ 0.99  │ Joakim        │ Sweden           │ Steve                    │
│ 1.98  │ Joakim        │ Sweden           │ Steve                    │
│ 13.86 │ Joakim        │ Sweden           │ Steve                    │
│ 8.91  │ Joakim        │ Sweden           │ Steve                    │
│ 0.99  │ Steve         │ United Kingdom   │ Steve                    │
│ 1.98  │ Steve         │ United Kingdom   │ Steve                    │
│ 13.86 │ Steve         │ United Kingdom   │ Steve                    │
│ 8.91  │ Steve         │ United Kingdom   │ Steve                    │
│ 1.98  │ Steve         │ United Kingdom   │ Steve                    │
│ 3.96  │ Steve         │ United Kingdom   │ Steve                    │
│ 5.94  │ Steve         │ United Kingdom   │ Steve                    │
│ 1.98  │ Luis          │ Chile            │ Steve                    │
│ 13.86 │ Luis          │ Chile            │ Steve                    │
│ 17.91 │ Luis          │ Chile            │ Steve                    │
│ 1.98  │ Luis          │ Chile            │ Steve                    │
│ 3.96  │ Luis          │ Chile            │ Steve                    │
│ 5.94  │ Luis          │ Chile            │ Steve                    │
│ 0.99  │ Luis          │ Chile            │ Steve                    │
└───────┴───────────────┴──────────────────┴──────────────────────────┘
**/
-- ¿Cuántas facturas hubo en 2009 y 2011? ¿Cuáles son las ventas totales respectivas para cada uno de esos años?
select strftime('%Y', InvoiceDate) as year, count(*) AS total_invoices, sum(Total) as total_sales from Invoices where strftime('%Y', InvoiceDate) in ('2009', '2011') group by strftime('%Y', InvoiceDate) order by strftime('%Y', InvoiceDate) asc;
/**
┌──────┬────────────────┬─────────────┐
│ year │ total_invoices │ total_sales │
├──────┼────────────────┼─────────────┤
│ 2009 │ 83             │ 449.46      │
│ 2011 │ 83             │ 469.58      │
└──────┴────────────────┴─────────────┘
**/

-- Mirando la tabla de InvoiceLine, proporciona una consulta que CUENTE el número de ítems de línea para el ID de factura 37.
select count(quantity) as num_line_items from invoice_items where InvoiceId = 37;
/**
┌────────────────┐
│ num_line_items │
├────────────────┤
│ 4              │
└────────────────┘
**/
-- Mirando la tabla de InvoiceLine, proporciona una consulta que CUENTE el número de ítems de línea para cada Factura. PISTA: [GROUP BY](http://www.sqlite.org/lang_select.html#resultset)
select InvoiceId, count(quantity) as num_line_items from invoice_items group by InvoiceId;
/**
┌───────────┬────────────────┐
│ InvoiceId │ num_line_items │
├───────────┼────────────────┤
│ 1         │ 2              │
│ 2         │ 4              │
│ 3         │ 6              │
│ 4         │ 9              │
│ 5         │ 14             │
│ 6         │ 1              │
│ 7         │ 2              │
│ 8         │ 2              │
│ 9         │ 4              │
│ 10        │ 6              │
│ 11        │ 9              │
│ 12        │ 14             │
│ 13        │ 1              │
│ 14        │ 2              │
│ 15        │ 2              │
│ 16        │ 4              │
│ 17        │ 6              │
│ 18        │ 9              │
│ 19        │ 14             │
│ 20        │ 1              │
│ 21        │ 2              │
│ 22        │ 2              │
│ 23        │ 4              │
│ 24        │ 6              │
│ 25        │ 9              │
│ 26        │ 14             │
│ 27        │ 1              │
│ 28        │ 2              │
│ 29        │ 2              │
│ 30        │ 4              │
│ 31        │ 6              │
│ 32        │ 9              │
│ 33        │ 14             │
│ 34        │ 1              │
│ 35        │ 2              │
│ 36        │ 2              │
│ 37        │ 4              │
│ 38        │ 6              │
│ 39        │ 9              │
│ 40        │ 14             │
│ 41        │ 1              │
│ 42        │ 2              │
│ 43        │ 2              │
│ 44        │ 4              │
│ 45        │ 6              │
│ 46        │ 9              │
│ 47        │ 14             │
│ 48        │ 1              │
│ 49        │ 2              │
│ 50        │ 2              │
│ 51        │ 4              │
│ 52        │ 6              │
│ 53        │ 9              │
│ 54        │ 14             │
│ 55        │ 1              │
│ 56        │ 2              │
│ 57        │ 2              │
│ 58        │ 4              │
│ 59        │ 6              │
│ 60        │ 9              │
│ 61        │ 14             │
│ 62        │ 1              │
│ 63        │ 2              │
│ 64        │ 2              │
│ 65        │ 4              │
│ 66        │ 6              │
│ 67        │ 9              │
│ 68        │ 14             │
│ 69        │ 1              │
│ 70        │ 2              │
│ 71        │ 2              │
│ 72        │ 4              │
│ 73        │ 6              │
│ 74        │ 9              │
│ 75        │ 14             │
│ 76        │ 1              │
│ 77        │ 2              │
│ 78        │ 2              │
│ 79        │ 4              │
│ 80        │ 6              │
│ 81        │ 9              │
│ 82        │ 14             │
│ 83        │ 1              │
│ 84        │ 2              │
│ 85        │ 2              │
│ 86        │ 4              │
│ 87        │ 6              │
│ 88        │ 9              │
│ 89        │ 14             │
│ 90        │ 1              │
│ 91        │ 2              │
│ 92        │ 2              │
│ 93        │ 4              │
│ 94        │ 6              │
│ 95        │ 9              │
│ 96        │ 14             │
│ 97        │ 1              │
│ 98        │ 2              │
│ 99        │ 2              │
│ 100       │ 4              │
│ 101       │ 6              │
│ 102       │ 9              │
│ 103       │ 14             │
│ 104       │ 1              │
│ 105       │ 2              │
│ 106       │ 2              │
│ 107       │ 4              │
│ 108       │ 6              │
│ 109       │ 9              │
│ 110       │ 14             │
│ 111       │ 1              │
│ 112       │ 2              │
│ 113       │ 2              │
│ 114       │ 4              │
│ 115       │ 6              │
│ 116       │ 9              │
│ 117       │ 14             │
│ 118       │ 1              │
│ 119       │ 2              │
│ 120       │ 2              │
│ 121       │ 4              │
│ 122       │ 6              │
│ 123       │ 9              │
│ 124       │ 14             │
│ 125       │ 1              │
│ 126       │ 2              │
│ 127       │ 2              │
│ 128       │ 4              │
│ 129       │ 6              │
│ 130       │ 9              │
│ 131       │ 14             │
│ 132       │ 1              │
│ 133       │ 2              │
│ 134       │ 2              │
│ 135       │ 4              │
│ 136       │ 6              │
│ 137       │ 9              │
│ 138       │ 14             │
│ 139       │ 1              │
│ 140       │ 2              │
│ 141       │ 2              │
│ 142       │ 4              │
│ 143       │ 6              │
│ 144       │ 9              │
│ 145       │ 14             │
│ 146       │ 1              │
│ 147       │ 2              │
│ 148       │ 2              │
│ 149       │ 4              │
│ 150       │ 6              │
│ 151       │ 9              │
│ 152       │ 14             │
│ 153       │ 1              │
│ 154       │ 2              │
│ 155       │ 2              │
│ 156       │ 4              │
│ 157       │ 6              │
│ 158       │ 9              │
│ 159       │ 14             │
│ 160       │ 1              │
│ 161       │ 2              │
│ 162       │ 2              │
│ 163       │ 4              │
│ 164       │ 6              │
│ 165       │ 9              │
│ 166       │ 14             │
│ 167       │ 1              │
│ 168       │ 2              │
│ 169       │ 2              │
│ 170       │ 4              │
│ 171       │ 6              │
│ 172       │ 9              │
│ 173       │ 14             │
│ 174       │ 1              │
│ 175       │ 2              │
│ 176       │ 2              │
│ 177       │ 4              │
│ 178       │ 6              │
│ 179       │ 9              │
│ 180       │ 14             │
│ 181       │ 1              │
│ 182       │ 2              │
│ 183       │ 2              │
│ 184       │ 4              │
│ 185       │ 6              │
│ 186       │ 9              │
│ 187       │ 14             │
│ 188       │ 1              │
│ 189       │ 2              │
│ 190       │ 2              │
│ 191       │ 4              │
│ 192       │ 6              │
│ 193       │ 9              │
│ 194       │ 14             │
│ 195       │ 1              │
│ 196       │ 2              │
│ 197       │ 2              │
│ 198       │ 4              │
│ 199       │ 6              │
│ 200       │ 9              │
│ 201       │ 14             │
│ 202       │ 1              │
│ 203       │ 2              │
│ 204       │ 2              │
│ 205       │ 4              │
│ 206       │ 6              │
│ 207       │ 9              │
│ 208       │ 14             │
│ 209       │ 1              │
│ 210       │ 2              │
│ 211       │ 2              │
│ 212       │ 4              │
│ 213       │ 6              │
│ 214       │ 9              │
│ 215       │ 14             │
│ 216       │ 1              │
│ 217       │ 2              │
│ 218       │ 2              │
│ 219       │ 4              │
│ 220       │ 6              │
│ 221       │ 9              │
│ 222       │ 14             │
│ 223       │ 1              │
│ 224       │ 2              │
│ 225       │ 2              │
│ 226       │ 4              │
│ 227       │ 6              │
│ 228       │ 9              │
│ 229       │ 14             │
│ 230       │ 1              │
│ 231       │ 2              │
│ 232       │ 2              │
│ 233       │ 4              │
│ 234       │ 6              │
│ 235       │ 9              │
│ 236       │ 14             │
│ 237       │ 1              │
│ 238       │ 2              │
│ 239       │ 2              │
│ 240       │ 4              │
│ 241       │ 6              │
│ 242       │ 9              │
│ 243       │ 14             │
│ 244       │ 1              │
│ 245       │ 2              │
│ 246       │ 2              │
│ 247       │ 4              │
│ 248       │ 6              │
│ 249       │ 9              │
│ 250       │ 14             │
│ 251       │ 1              │
│ 252       │ 2              │
│ 253       │ 2              │
│ 254       │ 4              │
│ 255       │ 6              │
│ 256       │ 9              │
│ 257       │ 14             │
│ 258       │ 1              │
│ 259       │ 2              │
│ 260       │ 2              │
│ 261       │ 4              │
│ 262       │ 6              │
│ 263       │ 9              │
│ 264       │ 14             │
│ 265       │ 1              │
│ 266       │ 2              │
│ 267       │ 2              │
│ 268       │ 4              │
│ 269       │ 6              │
│ 270       │ 9              │
│ 271       │ 14             │
│ 272       │ 1              │
│ 273       │ 2              │
│ 274       │ 2              │
│ 275       │ 4              │
│ 276       │ 6              │
│ 277       │ 9              │
│ 278       │ 14             │
│ 279       │ 1              │
│ 280       │ 2              │
│ 281       │ 2              │
│ 282       │ 4              │
│ 283       │ 6              │
│ 284       │ 9              │
│ 285       │ 14             │
│ 286       │ 1              │
│ 287       │ 2              │
│ 288       │ 2              │
│ 289       │ 4              │
│ 290       │ 6              │
│ 291       │ 9              │
│ 292       │ 14             │
│ 293       │ 1              │
│ 294       │ 2              │
│ 295       │ 2              │
│ 296       │ 4              │
│ 297       │ 6              │
│ 298       │ 9              │
│ 299       │ 14             │
│ 300       │ 1              │
│ 301       │ 2              │
│ 302       │ 2              │
│ 303       │ 4              │
│ 304       │ 6              │
│ 305       │ 9              │
│ 306       │ 14             │
│ 307       │ 1              │
│ 308       │ 2              │
│ 309       │ 2              │
│ 310       │ 4              │
│ 311       │ 6              │
│ 312       │ 9              │
│ 313       │ 14             │
│ 314       │ 1              │
│ 315       │ 2              │
│ 316       │ 2              │
│ 317       │ 4              │
│ 318       │ 6              │
│ 319       │ 9              │
│ 320       │ 14             │
│ 321       │ 1              │
│ 322       │ 2              │
│ 323       │ 2              │
│ 324       │ 4              │
│ 325       │ 6              │
│ 326       │ 9              │
│ 327       │ 14             │
│ 328       │ 1              │
│ 329       │ 2              │
│ 330       │ 2              │
│ 331       │ 4              │
│ 332       │ 6              │
│ 333       │ 9              │
│ 334       │ 14             │
│ 335       │ 1              │
│ 336       │ 2              │
│ 337       │ 2              │
│ 338       │ 4              │
│ 339       │ 6              │
│ 340       │ 9              │
│ 341       │ 14             │
│ 342       │ 1              │
│ 343       │ 2              │
│ 344       │ 2              │
│ 345       │ 4              │
│ 346       │ 6              │
│ 347       │ 9              │
│ 348       │ 14             │
│ 349       │ 1              │
│ 350       │ 2              │
│ 351       │ 2              │
│ 352       │ 4              │
│ 353       │ 6              │
│ 354       │ 9              │
│ 355       │ 14             │
│ 356       │ 1              │
│ 357       │ 2              │
│ 358       │ 2              │
│ 359       │ 4              │
│ 360       │ 6              │
│ 361       │ 9              │
│ 362       │ 14             │
│ 363       │ 1              │
│ 364       │ 2              │
│ 365       │ 2              │
│ 366       │ 4              │
│ 367       │ 6              │
│ 368       │ 9              │
│ 369       │ 14             │
│ 370       │ 1              │
│ 371       │ 2              │
│ 372       │ 2              │
│ 373       │ 4              │
│ 374       │ 6              │
│ 375       │ 9              │
│ 376       │ 14             │
│ 377       │ 1              │
│ 378       │ 2              │
│ 379       │ 2              │
│ 380       │ 4              │
│ 381       │ 6              │
│ 382       │ 9              │
│ 383       │ 14             │
│ 384       │ 1              │
│ 385       │ 2              │
│ 386       │ 2              │
│ 387       │ 4              │
│ 388       │ 6              │
│ 389       │ 9              │
│ 390       │ 14             │
│ 391       │ 1              │
│ 392       │ 2              │
│ 393       │ 2              │
│ 394       │ 4              │
│ 395       │ 6              │
│ 396       │ 9              │
│ 397       │ 14             │
│ 398       │ 1              │
│ 399       │ 2              │
│ 400       │ 2              │
│ 401       │ 4              │
│ 402       │ 6              │
│ 403       │ 9              │
│ 404       │ 14             │
│ 405       │ 1              │
│ 406       │ 2              │
│ 407       │ 2              │
│ 408       │ 4              │
│ 409       │ 6              │
│ 410       │ 9              │
│ 411       │ 14             │
│ 412       │ 1              │
└───────────┴────────────────┘
**/
-- Proporciona una consulta que incluya el nombre de la pista con cada ítem de línea de factura.
select i.InvoiceId, t.Name from invoice_items i join tracks t on i.trackId = t.trackId;
/**
(sqlite no pudo mostrarme la tabla entera)

│           │ ro Comodo e Flemmatico                                       │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 319       │ String Quartet No. 12 in C Minor, D. 703 "Quartettsatz": II. │
│           │  Andante - Allegro assai                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 319       │ Fast As a Shark                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 319       │ Snowballed                                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 319       │ Go Down                                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 319       │ Hell Ain't A Bad Place To Be                                 │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ Amazing                                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ You Oughta Know                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ Not The Doctor                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ It Ain't Like That                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ Por Causa De Você                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ O Boto (Bôto)                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ Welcome Home (Sanitarium)                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ Exploder                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ Doesn't Remind Me                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ Money                                                        │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ Carol                                                        │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ Solo-Panhandler                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ Bored To Tears                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ Blood In The Wall                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 321       │ Snowblind                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 322       │ Cornucopia                                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 322       │ Laguna Sunrise                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 323       │ Under The Sun/Every Day Comes and Goes                       │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 323       │ Body Count's In The House                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 324       │ Body Count                                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 324       │ Bowels Of The Devil                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 324       │ KKK Bitch                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 324       │ Voodoo                                                       │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 325       │ Evil Dick                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 325       │ King In Crimson                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 325       │ Book Of Thel                                                 │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 325       │ Machine Men                                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 325       │ Let Me Love You Baby                                         │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 325       │ Leave My Girl Alone                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 326       │ Jorge Da Capadócia                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 326       │ Bem Devagar                                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 326       │ Mel                                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 326       │ Sozinho (Hitmakers Classic Mix)                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 326       │ Samba De Orly                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 326       │ Apesar De Você                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 326       │ Geni E O Zepelim                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 326       │ O Cidadão Do Mundo                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 326       │ Maracatu Atômico                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ Interlude Zumbi                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ Rios Pontes & Overdrives                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ Lixo Do Mangue                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ Podes Crer                                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ A Cor Do Sol                                                 │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ Doutor                                                       │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ Linha Do Equador                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ TriboTchan                                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ Reggae Tchan                                                 │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ Communication Breakdown(2)                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ Carolina Hard-Core Ecstasy                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ X-9 2001                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ Ipiranga 2001                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ Água de Beber                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 328       │ Tarde Em Itapoã                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 329       │ Tanto Tempo                                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 329       │ Eu Vim Da Bahia - Live                                       │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 330       │ Linha Do Horizonte                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 330       │ Abrir A Porta                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 331       │ Momentos Que Marcam                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 331       │ Bumbo Da Mangueira                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 331       │ Santo Antonio                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 331       │ Só Tinha De Ser Com Você                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 332       │ Turn The Page                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 332       │ Astronomy                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 332       │ A Kind Of Magic                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 332       │ I Want To Break Free                                         │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 332       │ Who Wants To Live Forever                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 332       │ The Invisible Man                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 333       │ Black Diamond                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 333       │ Shock Me                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 333       │ Calling Dr. Love                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 333       │ God Gave Rock 'n' Roll To You                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 333       │ Surrender                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 333       │ Best Thing                                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 333       │ When I Come Around                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 333       │ Walking Contradiction                                        │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 333       │ Minority                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ Slave                                                        │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ Começaria Tudo Outra Vez                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ Comportamento Geral                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ Menino Do Rio                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ Ando Meio Desligado                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ Rita Lee                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ Smoke On The Water                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ Beija-Flor                                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ Caprichosos                                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ Do You Like The Way                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ Manuel                                                       │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ Do You Have Other Loves?                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ 'Round Midnight                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ E.S.P.                                                       │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 335       │ Blue Rythm Fantasy                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 336       │ Drum Boogie                                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 336       │ Let Me Off Uptown                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 337       │ Opus No.1                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 337       │ How High The Moon                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 338       │ Up An' Atom                                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 338       │ Lemon Drop                                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 338       │ Overtime                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 338       │ Don't Take Your Love From Me                                 │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 339       │ Jungle Drums                                                 │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 339       │ Pot-Pourri N.º 4                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 339       │ Pot-Pourri N.º 5                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 339       │ Por Que Será                                                 │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 339       │ Samba Em Prelúdio                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 339       │ Chão de Giz (Elba Ramalho)                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 340       │ Caçador de Mim (Sá & Guarabyra)                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 340       │ Susie Q                                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 340       │ Commotion                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 340       │ Run Through The Jungle                                       │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 340       │ Sweet Hitch-Hiker                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 340       │ Tombstone Shadow                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 340       │ The Midnight Special                                         │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 340       │ Molina                                                       │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 340       │ Eu Sou Neguinha (Ao Vivo)                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ Palavras Ao Vento                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ Metrô. Linha 743                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ Mis Penas Lloraba Yo (Ao Vivo) Soy Gitano (Tangos)           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ You Keep On Moving                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ No No No                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ Nobody's Home                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ Maybe I'm A Leo                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ Sometimes I Feel Like Screaming                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ King Of Dreams                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ Stormbringer                                                 │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ The Battle Rages On                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ One Man's Meat                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ When Love & Hate Collide                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ Otay                                                         │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 342       │ Álibi                                                        │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 343       │ Esquinas                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 343       │ Se...                                                        │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 344       │ Lilás                                                        │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 344       │ Um Amor Puro                                                 │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 345       │ Nem Um Dia                                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 345       │ Açai                                                         │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 345       │ Flor De Lis                                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 345       │ Azul                                                         │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 346       │ Acelerou                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 346       │ Atrás da Porta                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 346       │ Alô, Alô, Marciano                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 346       │ As Aparências Enganam                                        │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 346       │ Layla                                                        │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 346       │ Crossroads                                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 347       │ After Midnight                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 347       │ Promises                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 347       │ Lonely Stranger                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 347       │ San Francisco Bay Blues                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 347       │ Last Cup Of Sorrow                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 347       │ Got That Feeling                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 347       │ Midlife Crisis                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 347       │ Be Aggressive                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 347       │ Get Out                                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ Take This Bottle                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ Surprise! You're Dead!                                       │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ Falamansa Song                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ Medo De Escuro                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ The Last Song                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ Friend Of A Friend                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ Times Like These                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ Monkey Wrench                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ Everlong                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ What Now My Love                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ It Was A Very Good Year                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ Entrando Na Sua (Intro)                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ Dujji                                                        │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ Esperando Na Janela                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 349       │ Is This Love (Live)                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 350       │ Stir It Up (Live)                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 350       │ Refavela (Live)                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 351       │ Quanta (Live)                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 351       │ Pela Internet (Live)                                         │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 352       │ Opachorô (Live)                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 352       │ A Novidade (Live)                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 352       │ De Ouro E Marfim (Live)                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 352       │ Lamento De Carnaval                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 353       │ Refazenda                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 353       │ A Paz                                                        │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 353       │ Tempo Rei                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 353       │ Toda Menina Baiana                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 353       │ Changes                                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 353       │ I Fucking Hate You                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 354       │ American Idiot                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 354       │ Give Me Novacaine                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 354       │ Whatsername                                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 354       │ Paradise City                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 354       │ Rocket Queen                                                 │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 354       │ You Ain't the First                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 354       │ Garden of Eden                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 354       │ 14 Years                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 354       │ Pretty Tied Up                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ Magnetic Ocean                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ She Wears Black                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ For the Greater Good of God                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ Where Eagles Dare                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ Can I Play With Madness                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ The Wicker Man                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ The Thin Line Between Love & Hate                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ Face In The Sand                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ The Fugitive                                                 │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ 04 - Running Free                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ Another Life                                                 │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ 2 Minutes To Midnight                                        │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ Run To The Hills                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ Wrathchild                                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 356       │ Hallowed Be Thy Name                                         │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 357       │ The Trooper                                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 357       │ Sanctuary                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 358       │ Tailgunner                                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 358       │ No Prayer For The Dying                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 359       │ Fates Warning                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 359       │ Run Silent Run Deep                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 359       │ Bring Your Daughter... ...To The Slaughter                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 359       │ Where Eagles Dare                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 360       │ The Trooper                                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 360       │ To Tame A Land                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 360       │ Flash of The Blade                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 360       │ Rime of the Ancient Mariner                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 360       │ Brave New World                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 360       │ Sign Of The Cross                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 361       │ Fear Of The Dark                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 361       │ Moonchild                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 361       │ The Clairvoyant                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 361       │ Stranger in a Strange Land                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 361       │ Gangland                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 361       │ Sign Of The Cross                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 361       │ Judgement Of Heaven                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 361       │ The Angel And The Gambler                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 361       │ Como Estais Amigos                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ Say It Loud, I'm Black And I'm Proud Pt.1                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ I'm Real                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ Whatever It Is, I Just Can't Stop                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ Destitute Illusions                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ Light Years                                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ Are You Gonna Be My Girl                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ Take It Or Leave It                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ May This Be Love                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ The Wind Cries Mary                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ Lords of Karma                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ Os Alquimistas Estão Chegando                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ As Dores do Mundo                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ Sem Sentido                                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ Equinocio                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 363       │ You've Got Another Thing Comin'                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 364       │ Turbo Lover                                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 364       │ Freewheel Burning                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 365       │ Metal Meltdown                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 365       │ Diamonds And Rust (Live)                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 366       │ Tyrant (Live)                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 366       │ Plaster Caster                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 366       │ Do You Love Me                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 366       │ Sure Know Something                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 367       │ I Still Love You                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 367       │ Nothin' To Lose                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 367       │ Since I've Been Loving You                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 367       │ Going To California                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 367       │ We're Gonna Groove                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 367       │ Ozone Baby                                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 368       │ Over The Hills And Far Away                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 368       │ In The Evening                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 368       │ I'm Gonna Crawl                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 368       │ Four Sticks                                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 368       │ Dazed and Confused                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 368       │ Whole Lotta Love                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 368       │ Ramble On                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 368       │ Since I've Been Loving You                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 368       │ Hats Off To (Roy) Harper                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ Sick Again                                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ Celebration Day                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ L'Avventura                                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ Leila                                                        │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ Tempo Perdido                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ Giz                                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ Mr. Cab Driver                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ Assim Caminha A Humanidade                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ Satisfação                                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ Ro-Que-Se-Da-Ne                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ O Último Romântico (Ao Vivo)                                 │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ Childhoods End?                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ Panis Et Circenses                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ Segue O Seco                                                 │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 370       │ Abraham, Martin And John                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 371       │ Save The Children                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 371       │ You Sure Love To Ball                                        │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 372       │ Praise                                                       │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 372       │ Down Under                                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 373       │ Be Good Johnny                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 373       │ Down by the Sea                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 373       │ It's a Mistake                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 373       │ Shakes and Ladders                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 374       │ Holier Than Thou                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 374       │ Through The Never                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 374       │ My Friend Of Misery                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 374       │ The Wait                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 374       │ Blitzkrieg                                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 374       │ So What                                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 375       │ Hit The Lights                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 375       │ Phantom Lord                                                 │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 375       │ The House Jack Built                                         │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 375       │ Poor Twisted Me                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 375       │ Battery                                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 375       │ Orion                                                        │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 375       │ Better Than You                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 375       │ Low Man's Lyric                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 375       │ Fade To Black                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ Invisible Kid                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ Eye Of The Beholder                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ The Duke                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ Blues For Pablo (Alternate Take)                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ Menestrel Das Alagoas                                        │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ Beijo Partido                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ Norwegian Wood                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ Jailbait                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ O Que Vai Em Meu Coração                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ A Moça e a Chuva                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ Same Ol' Situation                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ Shout At The Devil                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ Spank Thru                                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ Smells Like Teen Spirit                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 377       │ Sangue Latino                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 378       │ Folhas Secas                                                 │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 378       │ Poeira                                                       │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 379       │ Quem Mata A Mulher Mata O Melhor                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 379       │ O Braço Da Minha Guitarra                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 380       │ Mãe Terra                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 380       │ Menino De Rua                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 380       │ Elza                                                         │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 380       │ Nossa Gente (Avisa Là)                                       │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 381       │ Todo Amor (Asas Da Liberdade)                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 381       │ Jeito Faceiro                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 381       │ Olodum - Smile (Instrumental)                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 381       │ Um Amor, Um Lugar                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 381       │ Uns Dias                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 381       │ Brasília 5:31                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 382       │ Vamo Batê Lata                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 382       │ Mensagen De Amor (2000)                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 382       │ Saber Amar                                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 382       │ Cinema Mudo                                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 382       │ Meu Erro                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 382       │ Será Que Vai Chover?                                         │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 382       │ Mama, I'm Coming Home                                        │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 382       │ Flying High Again                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 382       │ Paranoid                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ Most High                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ Your Blue Room                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ Plot 180                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ Sanctuary                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ Untitled                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ Black                                                        │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ Big Wave                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ Cropduster                                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ 1/2 Full                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ Oceans                                                       │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ Dissident                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ Don't Look Back                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ Pick Myself Up                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ Any Colour You Like                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 384       │ Rappers Reais                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 385       │ Nega Do Cabelo Duro                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 385       │ Hemp Family                                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 386       │ Se Liga                                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 386       │ Another One Bites The Dust                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 387       │ Fat Bottomed Girls                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 387       │ You're My Best Friend                                        │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 387       │ Save Me                                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 387       │ Somebody To Love                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 388       │ Flash                                                        │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 388       │ We Will Rock You                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 388       │ Spread Your Wings                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 388       │ Who Needs You                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 388       │ Me In Honey                                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 388       │ You Are The Everything                                       │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 389       │ Hairshirt                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 389       │ Undertow                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 389       │ Binky The Doormat                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 389       │ Low                                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 389       │ Country Feedback                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 389       │ Don't Go Back To Rockville                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 389       │ I Believe                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 389       │ A Sua                                                        │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 389       │ Bê-a-Bá                                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ Sapato 36                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ If You Have To Ask                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ Under The Bridge                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ This Is The Place                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ Tear                                                         │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ Get On Top                                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ Right On Time                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ Anthem                                                       │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ La Puesta Del Sol                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ Just Ain't Good Enough                                       │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ If You Don't Know Me By Now                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ Água E Fogo                                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ Fica                                                         │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ Os Exilados                                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 391       │ Waiting                                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 392       │ Saturnine                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 392       │ Rock On                                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 393       │ Winterlong                                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 393       │ Blissed & Gone                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 394       │ Rhinocerous                                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 394       │ Cherub Rock                                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 394       │ Disarm                                                       │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 394       │ Bullet With Butterfly Wings                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 395       │ Eye                                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 395       │ Stand Inside Your Love                                       │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 395       │ Flower                                                       │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 395       │ Jesus Christ Pose                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 395       │ The Day I Tried To Live                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 395       │ Burden In My Hand                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 396       │ Rasul                                                        │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 396       │ End Of Romanticism                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 396       │ Travis Walk                                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 396       │ Sex Type Thing                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 396       │ Piece Of Pie                                                 │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 396       │ B.Y.O.B.                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 396       │ Question!                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 396       │ Duende                                                       │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 396       │ Sting Me                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ Black Moon Creeping                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ White Riot                                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ Train In Vain                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ War (The Process)                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ Speed Of Light                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ Wild Hearted Son                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ Sun King                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ Back Door Man                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ Don't Stand so Close to Me                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ Message in a Bottle (new classic rock mix)                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ Paint It Black                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ Corinna                                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ Love Is Strong                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ Sweethearts Together                                         │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 398       │ Release                                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 399       │ Heaven Coming Down                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 399       │ The River (Remix)                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 400       │ Waiting On A Sign                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 400       │ Paint It Black                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 401       │ Army Ants                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 401       │ Gyroscope                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 401       │ Release                                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 401       │ Babylon                                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 402       │ I Can't Explain                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 402       │ I'm A Boy                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 402       │ I Can See For Miles                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 402       │ Baba O'Riley                                                 │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 402       │ Join Together                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 402       │ Primavera                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 403       │ New Love                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 403       │ Compadre                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 403       │ Não Quero Dinheiro                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 403       │ Canário Do Reino                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 403       │ Comida                                                       │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 403       │ Marvin                                                       │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 403       │ Cabeça Dinossauro                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 403       │ Polícia (Vinheta)                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 403       │ Sua Impossivel Chance                                        │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ Insensível                                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ Collaborators                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ The Woman King                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ One Giant Leap                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ The Fix                                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ Man of Science, Man of Faith (Premiere)                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ Walkabout                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ The Moth                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ Stranger In a Strange Land                                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ Par Avion                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ Outlaws                                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ Deus Ex Machina                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ Live Together, Die Alone, Pt. 1                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ So Cruel                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 405       │ Peace On Earth                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 406       │ When I Look At The World                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 406       │ New York                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 407       │ The Three Sunrises                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 407       │ Sweetest Thing                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 408       │ Bass Trap                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 408       │ Everlasting Love                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 408       │ Walk To The Water                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 408       │ Hallelujah Here She Comes                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 409       │ Trash, Trampoline And The Party Girl                         │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 409       │ Love And Peace Or Else                                       │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 409       │ Crumbs From Your Table                                       │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 409       │ Discotheque                                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 409       │ Staring At The Sun                                           │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 409       │ The Playboy Mansion                                          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 410       │ Desire                                                       │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 410       │ Pride (In The Name Of Love)                                  │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 410       │ The Star Spangled Banner                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 410       │ I Still Haven't Found What I'm Looking For                   │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 410       │ Sweetest Thing                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 410       │ Seconds                                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 410       │ Red Light                                                    │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 410       │ Lemon                                                        │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 410       │ The Wanderer                                                 │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ Higher Ground                                                │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ Secrets                                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ Eruption                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ Dreams                                                       │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ Eruption                                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ On Fire                                                      │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ Year to the Day                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ Fall To Pieces                                               │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ A Bencao E Outros                                            │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ Um Homem Chamado Alfredo                                     │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ Looking For Love                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ Sweet Lady Luck                                              │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ Feirinha da Pavuna/Luz do Repente/Bagaço da Laranja          │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ Samba pras moças                                             │
├───────────┼──────────────────────────────────────────────────────────────┤
│ 412       │ Hot Girl                                                     │
└───────────┴──────────────────────────────────────────────────────────────┘
**/
-- Proporciona una consulta que incluya el nombre de la pista comprada Y el nombre del artista con cada ítem de línea de factura.
select i.InvoiceId, t.Name, art.Name from invoice_items i join tracks t on i.trackId = t.trackId join albums a on t.AlbumId = a.AlbumId join artists art on a.ArtistId = art.ArtistId;
/**
(sqlite no pudo mostrarme la tabla entera)

│ 319       │ Suite No. 3 in D, BWV 1068: III. Gavotte I & II              │ Academy of St. Martin in the Fields, Sir Neville Marriner &  │
│           │                                                              │ Thurston Dart                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 319       │ Music for the Funeral of Queen Mary: VI. "Thou Knowest, Lord │ Equale Brass Ensemble, John Eliot Gardiner & Munich Montever │
│           │ , the Secrets of Our Hearts"                                 │ di Orchestra and Choir                                       │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 319       │ Symphony No. 2, Op. 16 -  "The Four Temperaments": II. Alleg │ Göteborgs Symfoniker & Neeme Järvi                           │
│           │ ro Comodo e Flemmatico                                       │                                                              │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 319       │ String Quartet No. 12 in C Minor, D. 703 "Quartettsatz": II. │ Emerson String Quartet                                       │
│           │  Andante - Allegro assai                                     │                                                              │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 319       │ Fast As a Shark                                              │ Accept                                                       │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 319       │ Snowballed                                                   │ AC/DC                                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 319       │ Go Down                                                      │ AC/DC                                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 319       │ Hell Ain't A Bad Place To Be                                 │ AC/DC                                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ Amazing                                                      │ Aerosmith                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ You Oughta Know                                              │ Alanis Morissette                                            │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ Not The Doctor                                               │ Alanis Morissette                                            │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ It Ain't Like That                                           │ Alice In Chains                                              │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ Por Causa De Você                                            │ Antônio Carlos Jobim                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ O Boto (Bôto)                                                │ Antônio Carlos Jobim                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ Welcome Home (Sanitarium)                                    │ Apocalyptica                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ Exploder                                                     │ Audioslave                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ Doesn't Remind Me                                            │ Audioslave                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ Money                                                        │ BackBeat                                                     │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ Carol                                                        │ BackBeat                                                     │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ Solo-Panhandler                                              │ Billy Cobham                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ Bored To Tears                                               │ Black Label Society                                          │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 320       │ Blood In The Wall                                            │ Black Label Society                                          │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 321       │ Snowblind                                                    │ Black Sabbath                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 322       │ Cornucopia                                                   │ Black Sabbath                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 322       │ Laguna Sunrise                                               │ Black Sabbath                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 323       │ Under The Sun/Every Day Comes and Goes                       │ Black Sabbath                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 323       │ Body Count's In The House                                    │ Body Count                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 324       │ Body Count                                                   │ Body Count                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 324       │ Bowels Of The Devil                                          │ Body Count                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 324       │ KKK Bitch                                                    │ Body Count                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 324       │ Voodoo                                                       │ Body Count                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 325       │ Evil Dick                                                    │ Body Count                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 325       │ King In Crimson                                              │ Bruce Dickinson                                              │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 325       │ Book Of Thel                                                 │ Bruce Dickinson                                              │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 325       │ Machine Men                                                  │ Bruce Dickinson                                              │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 325       │ Let Me Love You Baby                                         │ Buddy Guy                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 325       │ Leave My Girl Alone                                          │ Buddy Guy                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 326       │ Jorge Da Capadócia                                           │ Caetano Veloso                                               │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 326       │ Bem Devagar                                                  │ Caetano Veloso                                               │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 326       │ Mel                                                          │ Caetano Veloso                                               │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 326       │ Sozinho (Hitmakers Classic Mix)                              │ Caetano Veloso                                               │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 326       │ Samba De Orly                                                │ Chico Buarque                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 326       │ Apesar De Você                                               │ Chico Buarque                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 326       │ Geni E O Zepelim                                             │ Chico Buarque                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 326       │ O Cidadão Do Mundo                                           │ Chico Science & Nação Zumbi                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 326       │ Maracatu Atômico                                             │ Chico Science & Nação Zumbi                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ Interlude Zumbi                                              │ Chico Science & Nação Zumbi                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ Rios Pontes & Overdrives                                     │ Chico Science & Nação Zumbi                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ Lixo Do Mangue                                               │ Chico Science & Nação Zumbi                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ Podes Crer                                                   │ Cidade Negra                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ A Cor Do Sol                                                 │ Cidade Negra                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ Doutor                                                       │ Cidade Negra                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ Linha Do Equador                                             │ Cláudio Zoli                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ TriboTchan                                                   │ Various Artists                                              │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ Reggae Tchan                                                 │ Various Artists                                              │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ Communication Breakdown(2)                                   │ Led Zeppelin                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ Carolina Hard-Core Ecstasy                                   │ Frank Zappa & Captain Beefheart                              │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ X-9 2001                                                     │ Various Artists                                              │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ Ipiranga 2001                                                │ Various Artists                                              │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 327       │ Água de Beber                                                │ Marcos Valle                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 328       │ Tarde Em Itapoã                                              │ Antônio Carlos Jobim                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 329       │ Tanto Tempo                                                  │ Antônio Carlos Jobim                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 329       │ Eu Vim Da Bahia - Live                                       │ Antônio Carlos Jobim                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 330       │ Linha Do Horizonte                                           │ Antônio Carlos Jobim                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 330       │ Abrir A Porta                                                │ Antônio Carlos Jobim                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 331       │ Momentos Que Marcam                                          │ Antônio Carlos Jobim                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 331       │ Bumbo Da Mangueira                                           │ Antônio Carlos Jobim                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 331       │ Santo Antonio                                                │ Antônio Carlos Jobim                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 331       │ Só Tinha De Ser Com Você                                     │ Antônio Carlos Jobim                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 332       │ Turn The Page                                                │ Metallica                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 332       │ Astronomy                                                    │ Metallica                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 332       │ A Kind Of Magic                                              │ Queen                                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 332       │ I Want To Break Free                                         │ Queen                                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 332       │ Who Wants To Live Forever                                    │ Queen                                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 332       │ The Invisible Man                                            │ Queen                                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 333       │ Black Diamond                                                │ Kiss                                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 333       │ Shock Me                                                     │ Kiss                                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 333       │ Calling Dr. Love                                             │ Kiss                                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 333       │ God Gave Rock 'n' Roll To You                                │ Kiss                                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 333       │ Surrender                                                    │ Spyro Gyra                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 333       │ Best Thing                                                   │ Spyro Gyra                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 333       │ When I Come Around                                           │ Green Day                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 333       │ Walking Contradiction                                        │ Green Day                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 333       │ Minority                                                     │ Green Day                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ Slave                                                        │ David Coverdale                                              │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ Começaria Tudo Outra Vez                                     │ Gonzaguinha                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ Comportamento Geral                                          │ Gonzaguinha                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ Menino Do Rio                                                │ Chico Buarque                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ Ando Meio Desligado                                          │ Os Mutantes                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ Rita Lee                                                     │ Os Mutantes                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ Smoke On The Water                                           │ Deep Purple                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ Beija-Flor                                                   │ Various Artists                                              │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ Caprichosos                                                  │ Various Artists                                              │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ Do You Like The Way                                          │ Santana                                                      │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ Manuel                                                       │ Ed Motta                                                     │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ Do You Have Other Loves?                                     │ Ed Motta                                                     │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ 'Round Midnight                                              │ Miles Davis                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 334       │ E.S.P.                                                       │ Miles Davis                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 335       │ Blue Rythm Fantasy                                           │ Gene Krupa                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 336       │ Drum Boogie                                                  │ Gene Krupa                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 336       │ Let Me Off Uptown                                            │ Gene Krupa                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 337       │ Opus No.1                                                    │ Gene Krupa                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 337       │ How High The Moon                                            │ Gene Krupa                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 338       │ Up An' Atom                                                  │ Gene Krupa                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 338       │ Lemon Drop                                                   │ Gene Krupa                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 338       │ Overtime                                                     │ Gene Krupa                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 338       │ Don't Take Your Love From Me                                 │ Gene Krupa                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 339       │ Jungle Drums                                                 │ Gene Krupa                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 339       │ Pot-Pourri N.º 4                                             │ Toquinho & Vinícius                                          │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 339       │ Pot-Pourri N.º 5                                             │ Toquinho & Vinícius                                          │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 339       │ Por Que Será                                                 │ Toquinho & Vinícius                                          │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 339       │ Samba Em Prelúdio                                            │ Toquinho & Vinícius                                          │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 339       │ Chão de Giz (Elba Ramalho)                                   │ Various Artists                                              │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 340       │ Caçador de Mim (Sá & Guarabyra)                              │ Various Artists                                              │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 340       │ Susie Q                                                      │ Creedence Clearwater Revival                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 340       │ Commotion                                                    │ Creedence Clearwater Revival                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 340       │ Run Through The Jungle                                       │ Creedence Clearwater Revival                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 340       │ Sweet Hitch-Hiker                                            │ Creedence Clearwater Revival                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 340       │ Tombstone Shadow                                             │ Creedence Clearwater Revival                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 340       │ The Midnight Special                                         │ Creedence Clearwater Revival                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 340       │ Molina                                                       │ Creedence Clearwater Revival                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 340       │ Eu Sou Neguinha (Ao Vivo)                                    │ Cássia Eller                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ Palavras Ao Vento                                            │ Cássia Eller                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ Metrô. Linha 743                                             │ Cássia Eller                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ Mis Penas Lloraba Yo (Ao Vivo) Soy Gitano (Tangos)           │ Cássia Eller                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ You Keep On Moving                                           │ Deep Purple                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ No No No                                                     │ Deep Purple                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ Nobody's Home                                                │ Deep Purple                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ Maybe I'm A Leo                                              │ Deep Purple                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ Sometimes I Feel Like Screaming                              │ Deep Purple                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ King Of Dreams                                               │ Deep Purple                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ Stormbringer                                                 │ Deep Purple                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ The Battle Rages On                                          │ Deep Purple                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ One Man's Meat                                               │ Deep Purple                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ When Love & Hate Collide                                     │ Def Leppard                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 341       │ Otay                                                         │ Dennis Chambers                                              │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 342       │ Álibi                                                        │ Djavan                                                       │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 343       │ Esquinas                                                     │ Djavan                                                       │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 343       │ Se...                                                        │ Djavan                                                       │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 344       │ Lilás                                                        │ Djavan                                                       │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 344       │ Um Amor Puro                                                 │ Djavan                                                       │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 345       │ Nem Um Dia                                                   │ Djavan                                                       │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 345       │ Açai                                                         │ Djavan                                                       │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 345       │ Flor De Lis                                                  │ Djavan                                                       │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 345       │ Azul                                                         │ Djavan                                                       │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 346       │ Acelerou                                                     │ Djavan                                                       │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 346       │ Atrás da Porta                                               │ Elis Regina                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 346       │ Alô, Alô, Marciano                                           │ Elis Regina                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 346       │ As Aparências Enganam                                        │ Elis Regina                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 346       │ Layla                                                        │ Eric Clapton                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 346       │ Crossroads                                                   │ Eric Clapton                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 347       │ After Midnight                                               │ Eric Clapton                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 347       │ Promises                                                     │ Eric Clapton                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 347       │ Lonely Stranger                                              │ Eric Clapton                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 347       │ San Francisco Bay Blues                                      │ Eric Clapton                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 347       │ Last Cup Of Sorrow                                           │ Faith No More                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 347       │ Got That Feeling                                             │ Faith No More                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 347       │ Midlife Crisis                                               │ Faith No More                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 347       │ Be Aggressive                                                │ Faith No More                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 347       │ Get Out                                                      │ Faith No More                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ Take This Bottle                                             │ Faith No More                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ Surprise! You're Dead!                                       │ Faith No More                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ Falamansa Song                                               │ Falamansa                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ Medo De Escuro                                               │ Falamansa                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ The Last Song                                                │ Foo Fighters                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ Friend Of A Friend                                           │ Foo Fighters                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ Times Like These                                             │ Foo Fighters                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ Monkey Wrench                                                │ Foo Fighters                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ Everlong                                                     │ Foo Fighters                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ What Now My Love                                             │ Frank Sinatra                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ It Was A Very Good Year                                      │ Frank Sinatra                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ Entrando Na Sua (Intro)                                      │ Funk Como Le Gusta                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ Dujji                                                        │ Funk Como Le Gusta                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 348       │ Esperando Na Janela                                          │ Gilberto Gil                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 349       │ Is This Love (Live)                                          │ Gilberto Gil                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 350       │ Stir It Up (Live)                                            │ Gilberto Gil                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 350       │ Refavela (Live)                                              │ Gilberto Gil                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 351       │ Quanta (Live)                                                │ Gilberto Gil                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 351       │ Pela Internet (Live)                                         │ Gilberto Gil                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 352       │ Opachorô (Live)                                              │ Gilberto Gil                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 352       │ A Novidade (Live)                                            │ Gilberto Gil                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 352       │ De Ouro E Marfim (Live)                                      │ Gilberto Gil                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 352       │ Lamento De Carnaval                                          │ Gilberto Gil                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 353       │ Refazenda                                                    │ Eric Clapton                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 353       │ A Paz                                                        │ Eric Clapton                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 353       │ Tempo Rei                                                    │ Eric Clapton                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 353       │ Toda Menina Baiana                                           │ Eric Clapton                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 353       │ Changes                                                      │ Godsmack                                                     │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 353       │ I Fucking Hate You                                           │ Godsmack                                                     │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 354       │ American Idiot                                               │ Green Day                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 354       │ Give Me Novacaine                                            │ Green Day                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 354       │ Whatsername                                                  │ Green Day                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 354       │ Paradise City                                                │ Guns N' Roses                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 354       │ Rocket Queen                                                 │ Guns N' Roses                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 354       │ You Ain't the First                                          │ Guns N' Roses                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 354       │ Garden of Eden                                               │ Guns N' Roses                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 354       │ 14 Years                                                     │ Guns N' Roses                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 354       │ Pretty Tied Up                                               │ Guns N' Roses                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ Magnetic Ocean                                               │ Incognito                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ She Wears Black                                              │ Incognito                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ For the Greater Good of God                                  │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ Where Eagles Dare                                            │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ Can I Play With Madness                                      │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ The Wicker Man                                               │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ The Thin Line Between Love & Hate                            │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ Face In The Sand                                             │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ The Fugitive                                                 │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ 04 - Running Free                                            │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ Another Life                                                 │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ 2 Minutes To Midnight                                        │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ Run To The Hills                                             │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 355       │ Wrathchild                                                   │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 356       │ Hallowed Be Thy Name                                         │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 357       │ The Trooper                                                  │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 357       │ Sanctuary                                                    │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 358       │ Tailgunner                                                   │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 358       │ No Prayer For The Dying                                      │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 359       │ Fates Warning                                                │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 359       │ Run Silent Run Deep                                          │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 359       │ Bring Your Daughter... ...To The Slaughter                   │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 359       │ Where Eagles Dare                                            │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 360       │ The Trooper                                                  │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 360       │ To Tame A Land                                               │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 360       │ Flash of The Blade                                           │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 360       │ Rime of the Ancient Mariner                                  │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 360       │ Brave New World                                              │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 360       │ Sign Of The Cross                                            │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 361       │ Fear Of The Dark                                             │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 361       │ Moonchild                                                    │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 361       │ The Clairvoyant                                              │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 361       │ Stranger in a Strange Land                                   │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 361       │ Gangland                                                     │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 361       │ Sign Of The Cross                                            │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 361       │ Judgement Of Heaven                                          │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 361       │ The Angel And The Gambler                                    │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 361       │ Como Estais Amigos                                           │ Iron Maiden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ Say It Loud, I'm Black And I'm Proud Pt.1                    │ James Brown                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ I'm Real                                                     │ James Brown                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ Whatever It Is, I Just Can't Stop                            │ Jamiroquai                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ Destitute Illusions                                          │ Jamiroquai                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ Light Years                                                  │ Jamiroquai                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ Are You Gonna Be My Girl                                     │ JET                                                          │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ Take It Or Leave It                                          │ JET                                                          │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ May This Be Love                                             │ Jimi Hendrix                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ The Wind Cries Mary                                          │ Jimi Hendrix                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ Lords of Karma                                               │ Joe Satriani                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ Os Alquimistas Estão Chegando                                │ Jorge Ben                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ As Dores do Mundo                                            │ Jota Quest                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ Sem Sentido                                                  │ Jota Quest                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 362       │ Equinocio                                                    │ João Suplicy                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 363       │ You've Got Another Thing Comin'                              │ Judas Priest                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 364       │ Turbo Lover                                                  │ Judas Priest                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 364       │ Freewheel Burning                                            │ Judas Priest                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 365       │ Metal Meltdown                                               │ Judas Priest                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 365       │ Diamonds And Rust (Live)                                     │ Judas Priest                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 366       │ Tyrant (Live)                                                │ Judas Priest                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 366       │ Plaster Caster                                               │ Kiss                                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 366       │ Do You Love Me                                               │ Kiss                                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 366       │ Sure Know Something                                          │ Kiss                                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 367       │ I Still Love You                                             │ Kiss                                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 367       │ Nothin' To Lose                                              │ Kiss                                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 367       │ Since I've Been Loving You                                   │ Led Zeppelin                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 367       │ Going To California                                          │ Led Zeppelin                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 367       │ We're Gonna Groove                                           │ Led Zeppelin                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 367       │ Ozone Baby                                                   │ Led Zeppelin                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 368       │ Over The Hills And Far Away                                  │ Led Zeppelin                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 368       │ In The Evening                                               │ Led Zeppelin                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 368       │ I'm Gonna Crawl                                              │ Led Zeppelin                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 368       │ Four Sticks                                                  │ Led Zeppelin                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 368       │ Dazed and Confused                                           │ Led Zeppelin                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 368       │ Whole Lotta Love                                             │ Led Zeppelin                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 368       │ Ramble On                                                    │ Led Zeppelin                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 368       │ Since I've Been Loving You                                   │ Led Zeppelin                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 368       │ Hats Off To (Roy) Harper                                     │ Led Zeppelin                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ Sick Again                                                   │ Led Zeppelin                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ Celebration Day                                              │ Led Zeppelin                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ L'Avventura                                                  │ Legião Urbana                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ Leila                                                        │ Legião Urbana                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ Tempo Perdido                                                │ Legião Urbana                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ Giz                                                          │ Legião Urbana                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ Mr. Cab Driver                                               │ Lenny Kravitz                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ Assim Caminha A Humanidade                                   │ Lulu Santos                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ Satisfação                                                   │ Lulu Santos                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ Ro-Que-Se-Da-Ne                                              │ Lulu Santos                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ O Último Romântico (Ao Vivo)                                 │ Lulu Santos                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ Childhoods End?                                              │ Marillion                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ Panis Et Circenses                                           │ Marisa Monte                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 369       │ Segue O Seco                                                 │ Marisa Monte                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 370       │ Abraham, Martin And John                                     │ Marvin Gaye                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 371       │ Save The Children                                            │ Marvin Gaye                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 371       │ You Sure Love To Ball                                        │ Marvin Gaye                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 372       │ Praise                                                       │ Marvin Gaye                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 372       │ Down Under                                                   │ Men At Work                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 373       │ Be Good Johnny                                               │ Men At Work                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 373       │ Down by the Sea                                              │ Men At Work                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 373       │ It's a Mistake                                               │ Men At Work                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 373       │ Shakes and Ladders                                           │ Men At Work                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 374       │ Holier Than Thou                                             │ Metallica                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 374       │ Through The Never                                            │ Metallica                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 374       │ My Friend Of Misery                                          │ Metallica                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 374       │ The Wait                                                     │ Metallica                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 374       │ Blitzkrieg                                                   │ Metallica                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 374       │ So What                                                      │ Metallica                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 375       │ Hit The Lights                                               │ Metallica                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 375       │ Phantom Lord                                                 │ Metallica                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 375       │ The House Jack Built                                         │ Metallica                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 375       │ Poor Twisted Me                                              │ Metallica                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 375       │ Battery                                                      │ Metallica                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 375       │ Orion                                                        │ Metallica                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 375       │ Better Than You                                              │ Metallica                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 375       │ Low Man's Lyric                                              │ Metallica                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 375       │ Fade To Black                                                │ Metallica                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ Invisible Kid                                                │ Metallica                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ Eye Of The Beholder                                          │ Metallica                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ The Duke                                                     │ Miles Davis                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ Blues For Pablo (Alternate Take)                             │ Miles Davis                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ Menestrel Das Alagoas                                        │ Milton Nascimento                                            │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ Beijo Partido                                                │ Milton Nascimento                                            │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ Norwegian Wood                                               │ Milton Nascimento                                            │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ Jailbait                                                     │ Motörhead                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ O Que Vai Em Meu Coração                                     │ Mônica Marianno                                              │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ A Moça e a Chuva                                             │ Mônica Marianno                                              │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ Same Ol' Situation                                           │ Mötley Crüe                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ Shout At The Devil                                           │ Mötley Crüe                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ Spank Thru                                                   │ Nirvana                                                      │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 376       │ Smells Like Teen Spirit                                      │ Nirvana                                                      │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 377       │ Sangue Latino                                                │ O Terço                                                      │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 378       │ Folhas Secas                                                 │ O Terço                                                      │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 378       │ Poeira                                                       │ O Terço                                                      │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 379       │ Quem Mata A Mulher Mata O Melhor                             │ O Terço                                                      │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 379       │ O Braço Da Minha Guitarra                                    │ O Terço                                                      │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 380       │ Mãe Terra                                                    │ O Terço                                                      │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 380       │ Menino De Rua                                                │ O Terço                                                      │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 380       │ Elza                                                         │ O Terço                                                      │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 380       │ Nossa Gente (Avisa Là)                                       │ Olodum                                                       │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 381       │ Todo Amor (Asas Da Liberdade)                                │ Olodum                                                       │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 381       │ Jeito Faceiro                                                │ Olodum                                                       │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 381       │ Olodum - Smile (Instrumental)                                │ Olodum                                                       │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 381       │ Um Amor, Um Lugar                                            │ Os Paralamas Do Sucesso                                      │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 381       │ Uns Dias                                                     │ Os Paralamas Do Sucesso                                      │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 381       │ Brasília 5:31                                                │ Os Paralamas Do Sucesso                                      │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 382       │ Vamo Batê Lata                                               │ Os Paralamas Do Sucesso                                      │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 382       │ Mensagen De Amor (2000)                                      │ Os Paralamas Do Sucesso                                      │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 382       │ Saber Amar                                                   │ Os Paralamas Do Sucesso                                      │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 382       │ Cinema Mudo                                                  │ Os Paralamas Do Sucesso                                      │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 382       │ Meu Erro                                                     │ Os Paralamas Do Sucesso                                      │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 382       │ Será Que Vai Chover?                                         │ Os Paralamas Do Sucesso                                      │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 382       │ Mama, I'm Coming Home                                        │ Ozzy Osbourne                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 382       │ Flying High Again                                            │ Ozzy Osbourne                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 382       │ Paranoid                                                     │ Ozzy Osbourne                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ Most High                                                    │ Page & Plant                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ Your Blue Room                                               │ Passengers                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ Plot 180                                                     │ Passengers                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ Sanctuary                                                    │ Paul D'Ianno                                                 │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ Untitled                                                     │ Pearl Jam                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ Black                                                        │ Pearl Jam                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ Big Wave                                                     │ Pearl Jam                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ Cropduster                                                   │ Pearl Jam                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ 1/2 Full                                                     │ Pearl Jam                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ Oceans                                                       │ Pearl Jam                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ Dissident                                                    │ Pearl Jam                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ Don't Look Back                                              │ Lenny Kravitz                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ Pick Myself Up                                               │ Lenny Kravitz                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 383       │ Any Colour You Like                                          │ Pink Floyd                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 384       │ Rappers Reais                                                │ Planet Hemp                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 385       │ Nega Do Cabelo Duro                                          │ Planet Hemp                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 385       │ Hemp Family                                                  │ Planet Hemp                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 386       │ Se Liga                                                      │ Planet Hemp                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 386       │ Another One Bites The Dust                                   │ Queen                                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 387       │ Fat Bottomed Girls                                           │ Queen                                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 387       │ You're My Best Friend                                        │ Queen                                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 387       │ Save Me                                                      │ Queen                                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 387       │ Somebody To Love                                             │ Queen                                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 388       │ Flash                                                        │ Queen                                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 388       │ We Will Rock You                                             │ Queen                                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 388       │ Spread Your Wings                                            │ Queen                                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 388       │ Who Needs You                                                │ Queen                                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 388       │ Me In Honey                                                  │ R.E.M. Feat. Kate Pearson                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 388       │ You Are The Everything                                       │ R.E.M.                                                       │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 389       │ Hairshirt                                                    │ R.E.M.                                                       │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 389       │ Undertow                                                     │ R.E.M.                                                       │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 389       │ Binky The Doormat                                            │ R.E.M.                                                       │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 389       │ Low                                                          │ R.E.M. Feat. Kate Pearson                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 389       │ Country Feedback                                             │ R.E.M. Feat. Kate Pearson                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 389       │ Don't Go Back To Rockville                                   │ R.E.M.                                                       │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 389       │ I Believe                                                    │ R.E.M.                                                       │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 389       │ A Sua                                                        │ Raimundos                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 389       │ Bê-a-Bá                                                      │ Raimundos                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ Sapato 36                                                    │ Raul Seixas                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ If You Have To Ask                                           │ Red Hot Chili Peppers                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ Under The Bridge                                             │ Red Hot Chili Peppers                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ This Is The Place                                            │ Red Hot Chili Peppers                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ Tear                                                         │ Red Hot Chili Peppers                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ Get On Top                                                   │ Red Hot Chili Peppers                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ Right On Time                                                │ Red Hot Chili Peppers                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ Anthem                                                       │ Rush                                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ La Puesta Del Sol                                            │ Santana                                                      │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ Just Ain't Good Enough                                       │ Santana                                                      │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ If You Don't Know Me By Now                                  │ Lenny Kravitz                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ Água E Fogo                                                  │ Skank                                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ Fica                                                         │ Skank                                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 390       │ Os Exilados                                                  │ Skank                                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 391       │ Waiting                                                      │ Smashing Pumpkins                                            │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 392       │ Saturnine                                                    │ Smashing Pumpkins                                            │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 392       │ Rock On                                                      │ Smashing Pumpkins                                            │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 393       │ Winterlong                                                   │ Smashing Pumpkins                                            │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 393       │ Blissed & Gone                                               │ Smashing Pumpkins                                            │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 394       │ Rhinocerous                                                  │ Smashing Pumpkins                                            │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 394       │ Cherub Rock                                                  │ Smashing Pumpkins                                            │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 394       │ Disarm                                                       │ Smashing Pumpkins                                            │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 394       │ Bullet With Butterfly Wings                                  │ Smashing Pumpkins                                            │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 395       │ Eye                                                          │ Smashing Pumpkins                                            │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 395       │ Stand Inside Your Love                                       │ Smashing Pumpkins                                            │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 395       │ Flower                                                       │ Soundgarden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 395       │ Jesus Christ Pose                                            │ Soundgarden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 395       │ The Day I Tried To Live                                      │ Soundgarden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 395       │ Burden In My Hand                                            │ Soundgarden                                                  │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 396       │ Rasul                                                        │ Spyro Gyra                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 396       │ End Of Romanticism                                           │ Spyro Gyra                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 396       │ Travis Walk                                                  │ Stevie Ray Vaughan & Double Trouble                          │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 396       │ Sex Type Thing                                               │ Stone Temple Pilots                                          │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 396       │ Piece Of Pie                                                 │ Stone Temple Pilots                                          │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 396       │ B.Y.O.B.                                                     │ System Of A Down                                             │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 396       │ Question!                                                    │ System Of A Down                                             │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 396       │ Duende                                                       │ Terry Bozzio, Tony Levin & Steve Stevens                     │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 396       │ Sting Me                                                     │ The Black Crowes                                             │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ Black Moon Creeping                                          │ The Black Crowes                                             │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ White Riot                                                   │ The Clash                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ Train In Vain                                                │ The Clash                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ War (The Process)                                            │ The Cult                                                     │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ Speed Of Light                                               │ The Cult                                                     │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ Wild Hearted Son                                             │ The Cult                                                     │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ Sun King                                                     │ The Cult                                                     │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ Back Door Man                                                │ The Doors                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ Don't Stand so Close to Me                                   │ The Police                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ Message in a Bottle (new classic rock mix)                   │ The Police                                                   │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ Paint It Black                                               │ The Rolling Stones                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ Corinna                                                      │ The Rolling Stones                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ Love Is Strong                                               │ The Rolling Stones                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 397       │ Sweethearts Together                                         │ The Rolling Stones                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 398       │ Release                                                      │ The Tea Party                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 399       │ Heaven Coming Down                                           │ The Tea Party                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 399       │ The River (Remix)                                            │ The Tea Party                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 400       │ Waiting On A Sign                                            │ The Tea Party                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 400       │ Paint It Black                                               │ The Tea Party                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 401       │ Army Ants                                                    │ The Tea Party                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 401       │ Gyroscope                                                    │ The Tea Party                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 401       │ Release                                                      │ The Tea Party                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 401       │ Babylon                                                      │ The Tea Party                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 402       │ I Can't Explain                                              │ The Who                                                      │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 402       │ I'm A Boy                                                    │ The Who                                                      │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 402       │ I Can See For Miles                                          │ The Who                                                      │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 402       │ Baba O'Riley                                                 │ The Who                                                      │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 402       │ Join Together                                                │ The Who                                                      │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 402       │ Primavera                                                    │ Tim Maia                                                     │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 403       │ New Love                                                     │ Tim Maia                                                     │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 403       │ Compadre                                                     │ Tim Maia                                                     │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 403       │ Não Quero Dinheiro                                           │ Tim Maia                                                     │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 403       │ Canário Do Reino                                             │ Tim Maia                                                     │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 403       │ Comida                                                       │ Titãs                                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 403       │ Marvin                                                       │ Titãs                                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 403       │ Cabeça Dinossauro                                            │ Titãs                                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 403       │ Polícia (Vinheta)                                            │ Titãs                                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 403       │ Sua Impossivel Chance                                        │ Titãs                                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ Insensível                                                   │ Titãs                                                        │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ Collaborators                                                │ Battlestar Galactica                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ The Woman King                                               │ Battlestar Galactica                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ One Giant Leap                                               │ Heroes                                                       │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ The Fix                                                      │ Heroes                                                       │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ Man of Science, Man of Faith (Premiere)                      │ Lost                                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ Walkabout                                                    │ Lost                                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ The Moth                                                     │ Lost                                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ Stranger In a Strange Land                                   │ Lost                                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ Par Avion                                                    │ Lost                                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ Outlaws                                                      │ Lost                                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ Deus Ex Machina                                              │ Lost                                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ Live Together, Die Alone, Pt. 1                              │ Lost                                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 404       │ So Cruel                                                     │ U2                                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 405       │ Peace On Earth                                               │ U2                                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 406       │ When I Look At The World                                     │ U2                                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 406       │ New York                                                     │ U2                                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 407       │ The Three Sunrises                                           │ U2                                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 407       │ Sweetest Thing                                               │ U2                                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 408       │ Bass Trap                                                    │ U2                                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 408       │ Everlasting Love                                             │ U2                                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 408       │ Walk To The Water                                            │ U2                                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 408       │ Hallelujah Here She Comes                                    │ U2                                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 409       │ Trash, Trampoline And The Party Girl                         │ U2                                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 409       │ Love And Peace Or Else                                       │ U2                                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 409       │ Crumbs From Your Table                                       │ U2                                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 409       │ Discotheque                                                  │ U2                                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 409       │ Staring At The Sun                                           │ U2                                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 409       │ The Playboy Mansion                                          │ U2                                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 410       │ Desire                                                       │ U2                                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 410       │ Pride (In The Name Of Love)                                  │ U2                                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 410       │ The Star Spangled Banner                                     │ U2                                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 410       │ I Still Haven't Found What I'm Looking For                   │ U2                                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 410       │ Sweetest Thing                                               │ U2                                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 410       │ Seconds                                                      │ U2                                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 410       │ Red Light                                                    │ U2                                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 410       │ Lemon                                                        │ U2                                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 410       │ The Wanderer                                                 │ U2                                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ Higher Ground                                                │ UB40                                                         │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ Secrets                                                      │ Van Halen                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ Eruption                                                     │ Van Halen                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ Dreams                                                       │ Van Halen                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ Eruption                                                     │ Van Halen                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ On Fire                                                      │ Van Halen                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ Year to the Day                                              │ Van Halen                                                    │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ Fall To Pieces                                               │ Velvet Revolver                                              │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ A Bencao E Outros                                            │ Vinícius De Moraes                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ Um Homem Chamado Alfredo                                     │ Vinícius De Moraes                                           │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ Looking For Love                                             │ Lenny Kravitz                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ Sweet Lady Luck                                              │ Lenny Kravitz                                                │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ Feirinha da Pavuna/Luz do Repente/Bagaço da Laranja          │ Zeca Pagodinho                                               │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 411       │ Samba pras moças                                             │ Zeca Pagodinho                                               │
├───────────┼──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
│ 412       │ Hot Girl                                                     │ The Office                                                   │
└───────────┴──────────────────────────────────────────────────────────────┴──────────────────────────────────────────────────────────────┘
**/
-- Proporciona una consulta que muestre el número total de pistas en cada lista de reproducción. El nombre de la lista de reproducción debe estar incluido en la tabla resultante.
select pt.PlaylistId, p.name, count(pt.TrackId) as total_tracks from playlist_track pt join playlists p on pt.PlaylistId = p.PlaylistId group by pt.PlaylistId;
/**
┌────────────┬────────────────────────────┬──────────────┐
│ PlaylistId │            Name            │ total_tracks │
├────────────┼────────────────────────────┼──────────────┤
│ 1          │ Music                      │ 3290         │
│ 3          │ TV Shows                   │ 213          │
│ 5          │ 90’s Music                 │ 1477         │
│ 8          │ Music                      │ 3290         │
│ 9          │ Music Videos               │ 1            │
│ 10         │ TV Shows                   │ 213          │
│ 11         │ Brazilian Music            │ 39           │
│ 12         │ Classical                  │ 75           │
│ 13         │ Classical 101 - Deep Cuts  │ 25           │
│ 14         │ Classical 101 - Next Steps │ 25           │
│ 15         │ Classical 101 - The Basics │ 25           │
│ 16         │ Grunge                     │ 15           │
│ 17         │ Heavy Metal Classic        │ 26           │
│ 18         │ On-The-Go 1                │ 1            │
└────────────┴────────────────────────────┴──────────────┘
**/
-- Proporciona una consulta que muestre todas las pistas, pero no muestre IDs. La tabla resultante debe incluir el nombre del álbum, el tipo de medio y el género.
select t.Name as track_name, a.Title as album_name, m.Name as media_type, g.Name as genre from tracks t join albums a on t.AlbumId = a.AlbumId join media_types m on t.MediaTypeId = m.MediaTypeId join genres g on t.GenreId = g.GenreId;
/**
(sqlite no pudo mostrarme la tabla entera)

│ Another Life                                                 │ Killers                                                      │ MPEG audio file             │ Heavy Metal        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Genghis Khan                                                 │ Killers                                                      │ MPEG audio file             │ Heavy Metal        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Innocent Exile                                               │ Killers                                                      │ MPEG audio file             │ Heavy Metal        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Killers                                                      │ Killers                                                      │ MPEG audio file             │ Heavy Metal        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Prodigal Son                                                 │ Killers                                                      │ MPEG audio file             │ Heavy Metal        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Purgatory                                                    │ Killers                                                      │ MPEG audio file             │ Heavy Metal        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Drifter                                                      │ Killers                                                      │ MPEG audio file             │ Heavy Metal        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Intro- Churchill S Speech                                    │ Live After Death                                             │ MPEG audio file             │ Heavy Metal        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Aces High                                                    │ Live After Death                                             │ MPEG audio file             │ Heavy Metal        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Wrathchild                                                   │ Live After Death                                             │ MPEG audio file             │ Heavy Metal        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Acacia Avenue                                                │ Live After Death                                             │ MPEG audio file             │ Heavy Metal        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Children Of The Damned                                       │ Live After Death                                             │ MPEG audio file             │ Heavy Metal        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Die With Your Boots On                                       │ Live After Death                                             │ MPEG audio file             │ Heavy Metal        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Phantom Of The Opera                                         │ Live After Death                                             │ MPEG audio file             │ Heavy Metal        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Please Please Please                                         │ Sex Machine                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Think                                                        │ Sex Machine                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Night Train                                                  │ Sex Machine                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Out Of Sight                                                 │ Sex Machine                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Papa's Got A Brand New Bag Pt.1                              │ Sex Machine                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ I Got You (I Feel Good)                                      │ Sex Machine                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ It's A Man's Man's Man's World                               │ Sex Machine                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Cold Sweat                                                   │ Sex Machine                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Say It Loud, I'm Black And I'm Proud Pt.1                    │ Sex Machine                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Get Up (I Feel Like Being A) Sex Machine                     │ Sex Machine                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Hey America                                                  │ Sex Machine                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Make It Funky Pt.1                                           │ Sex Machine                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ I'm A Greedy Man Pt.1                                        │ Sex Machine                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Get On The Good Foot                                         │ Sex Machine                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Get Up Offa That Thing                                       │ Sex Machine                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ It's Too Funky In Here                                       │ Sex Machine                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Living In America                                            │ Sex Machine                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ I'm Real                                                     │ Sex Machine                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Hot Pants Pt.1                                               │ Sex Machine                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Soul Power (Live)                                            │ Sex Machine                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Canned Heat                                                  │ Synkronized                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Planet Home                                                  │ Synkronized                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Black Capricorn Day                                          │ Synkronized                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Soul Education                                               │ Synkronized                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Failling                                                     │ Synkronized                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Destitute Illusions                                          │ Synkronized                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Supersonic                                                   │ Synkronized                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Butterfly                                                    │ Synkronized                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Were Do We Go From Here                                      │ Synkronized                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ King For A Day                                               │ Synkronized                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Deeper Underground                                           │ Synkronized                                                  │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Wherever I Lay My Hat                                        │ Seek And Shall Find: More Of The Best (1963-1981)            │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Get My Hands On Some Lovin'                                  │ Seek And Shall Find: More Of The Best (1963-1981)            │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ No Good Without You                                          │ Seek And Shall Find: More Of The Best (1963-1981)            │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ You've Been A Long Time Coming                               │ Seek And Shall Find: More Of The Best (1963-1981)            │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ When I Had Your Love                                         │ Seek And Shall Find: More Of The Best (1963-1981)            │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ You're What's Happening (In The World Today)                 │ Seek And Shall Find: More Of The Best (1963-1981)            │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Loving You Is Sweeter Than Ever                              │ Seek And Shall Find: More Of The Best (1963-1981)            │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ It's A Bitter Pill To Swallow                                │ Seek And Shall Find: More Of The Best (1963-1981)            │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Seek And You Shall Find                                      │ Seek And Shall Find: More Of The Best (1963-1981)            │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Gonna Keep On Tryin' Till I Win Your Love                    │ Seek And Shall Find: More Of The Best (1963-1981)            │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Gonna Give Her All The Love I've Got                         │ Seek And Shall Find: More Of The Best (1963-1981)            │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ I Wish It Would Rain                                         │ Seek And Shall Find: More Of The Best (1963-1981)            │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Abraham, Martin And John                                     │ Seek And Shall Find: More Of The Best (1963-1981)            │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Save The Children                                            │ Seek And Shall Find: More Of The Best (1963-1981)            │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ You Sure Love To Ball                                        │ Seek And Shall Find: More Of The Best (1963-1981)            │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Ego Tripping Out                                             │ Seek And Shall Find: More Of The Best (1963-1981)            │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Praise                                                       │ Seek And Shall Find: More Of The Best (1963-1981)            │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Heavy Love Affair                                            │ Seek And Shall Find: More Of The Best (1963-1981)            │ MPEG audio file             │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Rehab                                                        │ Back to Black                                                │ Protected AAC audio file    │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ You Know I'm No Good                                         │ Back to Black                                                │ Protected AAC audio file    │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Me & Mr. Jones                                               │ Back to Black                                                │ Protected AAC audio file    │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Just Friends                                                 │ Back to Black                                                │ Protected AAC audio file    │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Back to Black                                                │ Back to Black                                                │ Protected AAC audio file    │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Love Is a Losing Game                                        │ Back to Black                                                │ Protected AAC audio file    │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Tears Dry On Their Own                                       │ Back to Black                                                │ Protected AAC audio file    │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Wake Up Alone                                                │ Back to Black                                                │ Protected AAC audio file    │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Some Unholy War                                              │ Back to Black                                                │ Protected AAC audio file    │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ He Can Only Hold Her                                         │ Back to Black                                                │ Protected AAC audio file    │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ You Know I'm No Good (feat. Ghostface Killah)                │ Back to Black                                                │ Protected AAC audio file    │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Rehab (Hot Chip Remix)                                       │ Back to Black                                                │ Protected AAC audio file    │ R&B/Soul           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Just Another Story                                           │ The Return Of The Space Cowboy                               │ MPEG audio file             │ Electronica/Dance  │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Stillness In Time                                            │ The Return Of The Space Cowboy                               │ MPEG audio file             │ Electronica/Dance  │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Half The Man                                                 │ The Return Of The Space Cowboy                               │ MPEG audio file             │ Electronica/Dance  │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Light Years                                                  │ The Return Of The Space Cowboy                               │ MPEG audio file             │ Electronica/Dance  │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Manifest Destiny                                             │ The Return Of The Space Cowboy                               │ MPEG audio file             │ Electronica/Dance  │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Kids                                                     │ The Return Of The Space Cowboy                               │ MPEG audio file             │ Electronica/Dance  │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Mr. Moon                                                     │ The Return Of The Space Cowboy                               │ MPEG audio file             │ Electronica/Dance  │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Scam                                                         │ The Return Of The Space Cowboy                               │ MPEG audio file             │ Electronica/Dance  │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Journey To Arnhemland                                        │ The Return Of The Space Cowboy                               │ MPEG audio file             │ Electronica/Dance  │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Morning Glory                                                │ The Return Of The Space Cowboy                               │ MPEG audio file             │ Electronica/Dance  │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Space Cowboy                                                 │ The Return Of The Space Cowboy                               │ MPEG audio file             │ Electronica/Dance  │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Instinto Colectivo                                           │ Radio Brasil (O Som da Jovem Vanguarda) - Seleccao de Henriq │ MPEG audio file             │ Electronica/Dance  │
│                                                              │ ue Amaro                                                     │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Chapa o Coco                                                 │ Radio Brasil (O Som da Jovem Vanguarda) - Seleccao de Henriq │ MPEG audio file             │ Electronica/Dance  │
│                                                              │ ue Amaro                                                     │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Prostituta                                                   │ Radio Brasil (O Som da Jovem Vanguarda) - Seleccao de Henriq │ MPEG audio file             │ Electronica/Dance  │
│                                                              │ ue Amaro                                                     │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Eu So Queria Sumir                                           │ Radio Brasil (O Som da Jovem Vanguarda) - Seleccao de Henriq │ MPEG audio file             │ Electronica/Dance  │
│                                                              │ ue Amaro                                                     │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Tres Reis                                                    │ Radio Brasil (O Som da Jovem Vanguarda) - Seleccao de Henriq │ MPEG audio file             │ Electronica/Dance  │
│                                                              │ ue Amaro                                                     │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Um Lugar ao Sol                                              │ Radio Brasil (O Som da Jovem Vanguarda) - Seleccao de Henriq │ MPEG audio file             │ Electronica/Dance  │
│                                                              │ ue Amaro                                                     │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Batalha Naval                                                │ Radio Brasil (O Som da Jovem Vanguarda) - Seleccao de Henriq │ MPEG audio file             │ Electronica/Dance  │
│                                                              │ ue Amaro                                                     │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Todo o Carnaval tem seu Fim                                  │ Radio Brasil (O Som da Jovem Vanguarda) - Seleccao de Henriq │ MPEG audio file             │ Electronica/Dance  │
│                                                              │ ue Amaro                                                     │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ O Misterio do Samba                                          │ Radio Brasil (O Som da Jovem Vanguarda) - Seleccao de Henriq │ MPEG audio file             │ Electronica/Dance  │
│                                                              │ ue Amaro                                                     │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Armadura                                                     │ Radio Brasil (O Som da Jovem Vanguarda) - Seleccao de Henriq │ MPEG audio file             │ Electronica/Dance  │
│                                                              │ ue Amaro                                                     │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Na Ladeira                                                   │ Radio Brasil (O Som da Jovem Vanguarda) - Seleccao de Henriq │ MPEG audio file             │ Electronica/Dance  │
│                                                              │ ue Amaro                                                     │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Carimbo                                                      │ Radio Brasil (O Som da Jovem Vanguarda) - Seleccao de Henriq │ MPEG audio file             │ Electronica/Dance  │
│                                                              │ ue Amaro                                                     │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Catimbo                                                      │ Radio Brasil (O Som da Jovem Vanguarda) - Seleccao de Henriq │ MPEG audio file             │ Electronica/Dance  │
│                                                              │ ue Amaro                                                     │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Funk de Bamba                                                │ Radio Brasil (O Som da Jovem Vanguarda) - Seleccao de Henriq │ MPEG audio file             │ Electronica/Dance  │
│                                                              │ ue Amaro                                                     │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Chega no Suingue                                             │ Radio Brasil (O Som da Jovem Vanguarda) - Seleccao de Henriq │ MPEG audio file             │ Electronica/Dance  │
│                                                              │ ue Amaro                                                     │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Mun-Ra                                                       │ Radio Brasil (O Som da Jovem Vanguarda) - Seleccao de Henriq │ MPEG audio file             │ Electronica/Dance  │
│                                                              │ ue Amaro                                                     │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Freestyle Love                                               │ Radio Brasil (O Som da Jovem Vanguarda) - Seleccao de Henriq │ MPEG audio file             │ Electronica/Dance  │
│                                                              │ ue Amaro                                                     │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Distance                                                     │ Realize                                                      │ AAC audio file              │ Electronica/Dance  │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ One Step Beyond                                              │ Realize                                                      │ AAC audio file              │ Electronica/Dance  │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Pura Elegancia                                               │ Cafezinho                                                    │ MPEG audio file             │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Choramingando                                                │ Cafezinho                                                    │ MPEG audio file             │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Por Merecer                                                  │ Cafezinho                                                    │ MPEG audio file             │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ No Futuro                                                    │ Cafezinho                                                    │ MPEG audio file             │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Voce Inteira                                                 │ Cafezinho                                                    │ MPEG audio file             │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Cuando A Noite Vai Chegando                                  │ Cafezinho                                                    │ MPEG audio file             │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Naquele Dia                                                  │ Cafezinho                                                    │ MPEG audio file             │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Equinocio                                                    │ Cafezinho                                                    │ MPEG audio file             │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Papelão                                                      │ Cafezinho                                                    │ MPEG audio file             │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Cuando Eu For Pro Ceu                                        │ Cafezinho                                                    │ MPEG audio file             │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Do Nosso Amor                                                │ Cafezinho                                                    │ MPEG audio file             │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Borogodo                                                     │ Cafezinho                                                    │ MPEG audio file             │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Cafezinho                                                    │ Cafezinho                                                    │ MPEG audio file             │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Enquanto O Dia Não Vem                                       │ Cafezinho                                                    │ MPEG audio file             │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Kir Royal                                                    │ Demorou...                                                   │ MPEG audio file             │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ O Que Vai Em Meu Coração                                     │ Demorou...                                                   │ MPEG audio file             │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Aos Leões                                                    │ Demorou...                                                   │ MPEG audio file             │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Dois Índios                                                  │ Demorou...                                                   │ MPEG audio file             │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Noite Negra                                                  │ Demorou...                                                   │ MPEG audio file             │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Beijo do Olhar                                               │ Demorou...                                                   │ MPEG audio file             │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ É Fogo                                                       │ Demorou...                                                   │ MPEG audio file             │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Já Foi                                                       │ Demorou...                                                   │ MPEG audio file             │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Só Se For Pelo Cabelo                                        │ Demorou...                                                   │ MPEG audio file             │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ No Clima                                                     │ Demorou...                                                   │ MPEG audio file             │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ A Moça e a Chuva                                             │ Demorou...                                                   │ MPEG audio file             │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Demorou!                                                     │ Demorou...                                                   │ MPEG audio file             │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Din Din Wo (Little Child)                                    │ Muso Ko                                                      │ AAC audio file              │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ I Ka Barra (Your Work)                                       │ Muso Ko                                                      │ AAC audio file              │ World              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ ZeroVinteUm                                                  │ Os Cães Ladram Mas A Caravana Não Pára                       │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Queimando Tudo                                               │ Os Cães Ladram Mas A Caravana Não Pára                       │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Hip Hop Rio                                                  │ Os Cães Ladram Mas A Caravana Não Pára                       │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Bossa                                                        │ Os Cães Ladram Mas A Caravana Não Pára                       │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ 100% HardCore                                                │ Os Cães Ladram Mas A Caravana Não Pára                       │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Biruta                                                       │ Os Cães Ladram Mas A Caravana Não Pára                       │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Mão Na Cabeça                                                │ Os Cães Ladram Mas A Caravana Não Pára                       │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ O Bicho Tá Pregando                                          │ Os Cães Ladram Mas A Caravana Não Pára                       │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Adoled (Ocean)                                               │ Os Cães Ladram Mas A Caravana Não Pára                       │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Seus Amigos                                                  │ Os Cães Ladram Mas A Caravana Não Pára                       │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Paga Pau                                                     │ Os Cães Ladram Mas A Caravana Não Pára                       │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Rappers Reais                                                │ Os Cães Ladram Mas A Caravana Não Pára                       │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Nega Do Cabelo Duro                                          │ Os Cães Ladram Mas A Caravana Não Pára                       │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Hemp Family                                                  │ Os Cães Ladram Mas A Caravana Não Pára                       │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Quem Me Cobrou?                                              │ Os Cães Ladram Mas A Caravana Não Pára                       │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Se Liga                                                      │ Os Cães Ladram Mas A Caravana Não Pára                       │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Jump Around                                                  │ House of Pain                                                │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Salutations                                                  │ House of Pain                                                │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Put Your Head Out                                            │ House of Pain                                                │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Top O' The Morning To Ya                                     │ House of Pain                                                │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Commercial 1                                                 │ House of Pain                                                │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ House And The Rising Sun                                     │ House of Pain                                                │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Shamrocks And Shenanigans                                    │ House of Pain                                                │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ House Of Pain Anthem                                         │ House of Pain                                                │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Danny Boy, Danny Boy                                         │ House of Pain                                                │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Guess Who's Back                                             │ House of Pain                                                │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Commercial 2                                                 │ House of Pain                                                │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Put On Your Shit Kickers                                     │ House of Pain                                                │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Come And Get Some Of This                                    │ House of Pain                                                │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Life Goes On                                                 │ House of Pain                                                │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ One For The Road                                             │ House of Pain                                                │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Feel It                                                      │ House of Pain                                                │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ All My Love                                                  │ House of Pain                                                │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Jump Around (Pete Rock Remix)                                │ House of Pain                                                │ MPEG audio file             │ Hip Hop/Rap        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Shamrocks And Shenanigans (Boom Shalock Lock Boom/Butch Vig  │ House of Pain                                                │ MPEG audio file             │ Hip Hop/Rap        │
│ Mix)                                                         │                                                              │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Battlestar Galactica: The Story So Far                       │ Battlestar Galactica: The Story So Far                       │ Protected MPEG-4 video file │ Science Fiction    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ A Measure of Salvation                                       │ Battlestar Galactica, Season 3                               │ Protected MPEG-4 video file │ Science Fiction    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Hero                                                         │ Battlestar Galactica, Season 3                               │ Protected MPEG-4 video file │ Science Fiction    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Unfinished Business                                          │ Battlestar Galactica, Season 3                               │ Protected MPEG-4 video file │ Science Fiction    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Passage                                                  │ Battlestar Galactica, Season 3                               │ Protected MPEG-4 video file │ Science Fiction    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Eye of Jupiter                                           │ Battlestar Galactica, Season 3                               │ Protected MPEG-4 video file │ Science Fiction    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Rapture                                                      │ Battlestar Galactica, Season 3                               │ Protected MPEG-4 video file │ Science Fiction    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Taking a Break from All Your Worries                         │ Battlestar Galactica, Season 3                               │ Protected MPEG-4 video file │ Science Fiction    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Woman King                                               │ Battlestar Galactica, Season 3                               │ Protected MPEG-4 video file │ Science Fiction    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ A Day In the Life                                            │ Battlestar Galactica, Season 3                               │ Protected MPEG-4 video file │ Science Fiction    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Dirty Hands                                                  │ Battlestar Galactica, Season 3                               │ Protected MPEG-4 video file │ Science Fiction    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Maelstrom                                                    │ Battlestar Galactica, Season 3                               │ Protected MPEG-4 video file │ Science Fiction    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Son Also Rises                                           │ Battlestar Galactica, Season 3                               │ Protected MPEG-4 video file │ Science Fiction    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Occupation / Precipice                                       │ Battlestar Galactica, Season 3                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Exodus, Pt. 1                                                │ Battlestar Galactica, Season 3                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Exodus, Pt. 2                                                │ Battlestar Galactica, Season 3                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Collaborators                                                │ Battlestar Galactica, Season 3                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Torn                                                         │ Battlestar Galactica, Season 3                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Genesis                                                      │ Heroes, Season 1                                             │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Nothing to Hide                                              │ Heroes, Season 1                                             │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Six Months Ago                                               │ Heroes, Season 1                                             │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ A Tale of Two Cities                                         │ Lost, Season 3                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Lost (Pilot, Part 1) [Premiere]                              │ Lost, Season 1                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Man of Science, Man of Faith (Premiere)                      │ Lost, Season 2                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Adrift                                                       │ Lost, Season 2                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Lost (Pilot, Part 2)                                         │ Lost, Season 1                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Further Instructions                                         │ Lost, Season 3                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Orientation                                                  │ Lost, Season 2                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Tabula Rasa                                                  │ Lost, Season 1                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Everybody Hates Hugo                                         │ Lost, Season 2                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Walkabout                                                    │ Lost, Season 1                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ ...And Found                                                 │ Lost, Season 2                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Cost of Living                                           │ Lost, Season 3                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ White Rabbit                                                 │ Lost, Season 1                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Abandoned                                                    │ Lost, Season 2                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ House of the Rising Sun                                      │ Lost, Season 1                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ I Do                                                         │ Lost, Season 3                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Moth                                                     │ Lost, Season 1                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Other 48 Days                                            │ Lost, Season 2                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Collision                                                    │ Lost, Season 2                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Confidence Man                                               │ Lost, Season 1                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Solitary                                                     │ Lost, Season 1                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ What Kate Did                                                │ Lost, Season 2                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Raised By Another                                            │ Lost, Season 1                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The 23rd Psalm                                               │ Lost, Season 2                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ All the Best Cowboys Have Daddy Issues                       │ Lost, Season 1                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Whatever the Case May Be                                     │ Lost, Season 1                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Hearts and Minds                                             │ Lost, Season 1                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Long Con                                                 │ Lost, Season 2                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Special                                                      │ Lost, Season 1                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Homecoming                                                   │ Lost, Season 1                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Outlaws                                                      │ Lost, Season 1                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ ...In Translation                                            │ Lost, Season 1                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Dave                                                         │ Lost, Season 2                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Numbers                                                      │ Lost, Season 1                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Deus Ex Machina                                              │ Lost, Season 1                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ S.O.S.                                                       │ Lost, Season 2                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Do No Harm                                                   │ Lost, Season 1                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Greater Good                                             │ Lost, Season 1                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ "?"                                                          │ Lost, Season 2                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Born to Run                                                  │ Lost, Season 1                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Three Minutes                                                │ Lost, Season 2                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Exodus (Part 1)                                              │ Lost, Season 1                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Exodus (Part 2) [Season Finale]                              │ Lost, Season 1                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Live Together, Die Alone, Pt. 2                              │ Lost, Season 2                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Exodus (Part 3) [Season Finale]                              │ Lost, Season 1                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Office: An American Workplace (Pilot)                    │ The Office, Season 1                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Diversity Day                                                │ The Office, Season 1                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Health Care                                                  │ The Office, Season 1                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Alliance                                                 │ The Office, Season 1                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Basketball                                                   │ The Office, Season 1                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Hot Girl                                                     │ The Office, Season 1                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Dundies                                                  │ The Office, Season 2                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Sexual Harassment                                            │ The Office, Season 2                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Office Olympics                                              │ The Office, Season 2                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Fire                                                     │ The Office, Season 2                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Halloween                                                    │ The Office, Season 2                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Fight                                                    │ The Office, Season 2                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Client                                                   │ The Office, Season 2                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Performance Review                                           │ The Office, Season 2                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Email Surveillance                                           │ The Office, Season 2                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Christmas Party                                              │ The Office, Season 2                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Booze Cruise                                                 │ The Office, Season 2                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Injury                                                   │ The Office, Season 2                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Secret                                                   │ The Office, Season 2                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Carpet                                                   │ The Office, Season 2                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Boys and Girls                                               │ The Office, Season 2                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Valentine's Day                                              │ The Office, Season 2                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Dwight's Speech                                              │ The Office, Season 2                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Take Your Daughter to Work Day                               │ The Office, Season 2                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Michael's Birthday                                           │ The Office, Season 2                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Drug Testing                                                 │ The Office, Season 2                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Conflict Resolution                                          │ The Office, Season 2                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Casino Night - Season Finale                                 │ The Office, Season 2                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Gay Witch Hunt                                               │ The Office, Season 3                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Convention                                               │ The Office, Season 3                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Coup                                                     │ The Office, Season 3                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Grief Counseling                                             │ The Office, Season 3                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Initiation                                               │ The Office, Season 3                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Diwali                                                       │ The Office, Season 3                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Branch Closing                                               │ The Office, Season 3                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Merger                                                   │ The Office, Season 3                                         │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Pilot                                                        │ Aquaman                                                      │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Eggtown                                                      │ LOST, Season 4                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Ji Yeon                                                      │ LOST, Season 4                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Meet Kevin Johnson                                           │ LOST, Season 4                                               │ Protected MPEG-4 video file │ TV Shows           │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Crossroads, Pt. 1                                            │ Battlestar Galactica, Season 3                               │ Protected MPEG-4 video file │ Sci Fi & Fantasy   │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Crossroads, Pt. 2                                            │ Battlestar Galactica, Season 3                               │ Protected MPEG-4 video file │ Sci Fi & Fantasy   │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Battlestar Galactica, Pt. 1                                  │ Battlestar Galactica (Classic), Season 1                     │ Protected MPEG-4 video file │ Sci Fi & Fantasy   │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Battlestar Galactica, Pt. 2                                  │ Battlestar Galactica (Classic), Season 1                     │ Protected MPEG-4 video file │ Sci Fi & Fantasy   │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Battlestar Galactica, Pt. 3                                  │ Battlestar Galactica (Classic), Season 1                     │ Protected MPEG-4 video file │ Sci Fi & Fantasy   │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Lost Planet of the Gods, Pt. 1                               │ Battlestar Galactica (Classic), Season 1                     │ Protected MPEG-4 video file │ Sci Fi & Fantasy   │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Lost Planet of the Gods, Pt. 2                               │ Battlestar Galactica (Classic), Season 1                     │ Protected MPEG-4 video file │ Sci Fi & Fantasy   │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Lost Warrior                                             │ Battlestar Galactica (Classic), Season 1                     │ Protected MPEG-4 video file │ Sci Fi & Fantasy   │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Long Patrol                                              │ Battlestar Galactica (Classic), Season 1                     │ Protected MPEG-4 video file │ Sci Fi & Fantasy   │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Gun On Ice Planet Zero, Pt. 1                            │ Battlestar Galactica (Classic), Season 1                     │ Protected MPEG-4 video file │ Sci Fi & Fantasy   │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Gun On Ice Planet Zero, Pt. 2                            │ Battlestar Galactica (Classic), Season 1                     │ Protected MPEG-4 video file │ Sci Fi & Fantasy   │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Magnificent Warriors                                     │ Battlestar Galactica (Classic), Season 1                     │ Protected MPEG-4 video file │ Sci Fi & Fantasy   │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Young Lords                                              │ Battlestar Galactica (Classic), Season 1                     │ Protected MPEG-4 video file │ Sci Fi & Fantasy   │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Living Legend, Pt. 1                                     │ Battlestar Galactica (Classic), Season 1                     │ Protected MPEG-4 video file │ Sci Fi & Fantasy   │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Living Legend, Pt. 2                                     │ Battlestar Galactica (Classic), Season 1                     │ Protected MPEG-4 video file │ Sci Fi & Fantasy   │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Fire In Space                                                │ Battlestar Galactica (Classic), Season 1                     │ Protected MPEG-4 video file │ Sci Fi & Fantasy   │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ War of the Gods, Pt. 1                                       │ Battlestar Galactica (Classic), Season 1                     │ Protected MPEG-4 video file │ Sci Fi & Fantasy   │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ War of the Gods, Pt. 2                                       │ Battlestar Galactica (Classic), Season 1                     │ Protected MPEG-4 video file │ Sci Fi & Fantasy   │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Man With Nine Lives                                      │ Battlestar Galactica (Classic), Season 1                     │ Protected MPEG-4 video file │ Sci Fi & Fantasy   │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Murder On the Rising Star                                    │ Battlestar Galactica (Classic), Season 1                     │ Protected MPEG-4 video file │ Sci Fi & Fantasy   │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Greetings from Earth, Pt. 1                                  │ Battlestar Galactica (Classic), Season 1                     │ Protected MPEG-4 video file │ Sci Fi & Fantasy   │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Greetings from Earth, Pt. 2                                  │ Battlestar Galactica (Classic), Season 1                     │ Protected MPEG-4 video file │ Sci Fi & Fantasy   │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Baltar's Escape                                              │ Battlestar Galactica (Classic), Season 1                     │ Protected MPEG-4 video file │ Sci Fi & Fantasy   │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Experiment In Terra                                          │ Battlestar Galactica (Classic), Season 1                     │ Protected MPEG-4 video file │ Sci Fi & Fantasy   │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Take the Celestra                                            │ Battlestar Galactica (Classic), Season 1                     │ Protected MPEG-4 video file │ Sci Fi & Fantasy   │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Hand of God                                              │ Battlestar Galactica (Classic), Season 1                     │ Protected MPEG-4 video file │ Sci Fi & Fantasy   │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Don't Look Back                                              │ Heroes, Season 1                                             │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ One Giant Leap                                               │ Heroes, Season 1                                             │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Collision                                                    │ Heroes, Season 1                                             │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Hiros                                                        │ Heroes, Season 1                                             │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Better Halves                                                │ Heroes, Season 1                                             │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Seven Minutes to Midnight                                    │ Heroes, Season 1                                             │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Homecoming                                                   │ Heroes, Season 1                                             │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Fallout                                                      │ Heroes, Season 1                                             │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Fix                                                      │ Heroes, Season 1                                             │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Distractions                                                 │ Heroes, Season 1                                             │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Run!                                                         │ Heroes, Season 1                                             │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Unexpected                                                   │ Heroes, Season 1                                             │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Company Man                                                  │ Heroes, Season 1                                             │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Company Man                                                  │ Heroes, Season 1                                             │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Parasite                                                     │ Heroes, Season 1                                             │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Glass Ballerina                                          │ Lost, Season 3                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Every Man for Himself                                        │ Lost, Season 3                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Not In Portland                                              │ Lost, Season 3                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Not In Portland                                              │ Lost, Season 3                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Flashes Before Your Eyes                                     │ Lost, Season 3                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Lost Survival Guide                                          │ Lost, Season 3                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Stranger In a Strange Land                                   │ Lost, Season 3                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Hunting Party                                            │ Lost, Season 2                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Tricia Tanaka Is Dead                                        │ Lost, Season 3                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Enter 77                                                     │ Lost, Season 3                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Fire + Water                                                 │ Lost, Season 2                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Par Avion                                                    │ Lost, Season 3                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ One of Them                                                  │ Lost, Season 2                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Man from Tallahassee                                     │ Lost, Season 3                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Exposé                                                       │ Lost, Season 3                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Maternity Leave                                              │ Lost, Season 2                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Left Behind                                                  │ Lost, Season 3                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Whole Truth                                              │ Lost, Season 2                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Lockdown                                                     │ Lost, Season 2                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ One of Us                                                    │ Lost, Season 3                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Catch-22                                                     │ Lost, Season 3                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ D.O.C.                                                       │ Lost, Season 3                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Two for the Road                                             │ Lost, Season 2                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Live Together, Die Alone, Pt. 1                              │ Lost, Season 2                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Brig                                                     │ Lost, Season 3                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ .07%                                                         │ Heroes, Season 1                                             │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Five Years Gone                                              │ Heroes, Season 1                                             │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Hard Part                                                │ Heroes, Season 1                                             │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Man Behind the Curtain                                   │ Lost, Season 3                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Greatest Hits                                                │ Lost, Season 3                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Landslide                                                    │ Heroes, Season 1                                             │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ How to Stop an Exploding Man                                 │ Heroes, Season 1                                             │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Through a Looking Glass                                      │ Lost, Season 3                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Through the Looking Glass, Pt. 2                             │ Lost, Season 3                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Through the Looking Glass, Pt. 1                             │ Lost, Season 3                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Past, Present, and Future                                    │ LOST, Season 4                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Beginning of the End                                     │ LOST, Season 4                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ LOST Season 4 Trailer                                        │ LOST, Season 4                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ LOST In 8:15                                                 │ LOST, Season 4                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Confirmed Dead                                               │ LOST, Season 4                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Economist                                                │ LOST, Season 4                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Constant                                                 │ LOST, Season 4                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Other Woman                                              │ LOST, Season 4                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Shape of Things to Come                                  │ LOST, Season 4                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Something Nice Back Home                                     │ LOST, Season 4                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Cabin Fever                                                  │ LOST, Season 4                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ There's No Place Like Home, Pt. 1                            │ LOST, Season 4                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ There's No Place Like Home, Pt. 2                            │ LOST, Season 4                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ There's No Place Like Home, Pt. 3                            │ LOST, Season 4                                               │ Protected MPEG-4 video file │ Drama              │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Convict                                                  │ The Office, Season 3                                         │ Protected MPEG-4 video file │ Comedy             │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ A Benihana Christmas, Pts. 1 & 2                             │ The Office, Season 3                                         │ Protected MPEG-4 video file │ Comedy             │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Back from Vacation                                           │ The Office, Season 3                                         │ Protected MPEG-4 video file │ Comedy             │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Traveling Salesmen                                           │ The Office, Season 3                                         │ Protected MPEG-4 video file │ Comedy             │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Producer's Cut: The Return                                   │ The Office, Season 3                                         │ Protected MPEG-4 video file │ Comedy             │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Ben Franklin                                                 │ The Office, Season 3                                         │ Protected MPEG-4 video file │ Comedy             │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Phyllis's Wedding                                            │ The Office, Season 3                                         │ Protected MPEG-4 video file │ Comedy             │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Business School                                              │ The Office, Season 3                                         │ Protected MPEG-4 video file │ Comedy             │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Cocktails                                                    │ The Office, Season 3                                         │ Protected MPEG-4 video file │ Comedy             │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Negotiation                                              │ The Office, Season 3                                         │ Protected MPEG-4 video file │ Comedy             │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Safety Training                                              │ The Office, Season 3                                         │ Protected MPEG-4 video file │ Comedy             │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Product Recall                                               │ The Office, Season 3                                         │ Protected MPEG-4 video file │ Comedy             │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Women's Appreciation                                         │ The Office, Season 3                                         │ Protected MPEG-4 video file │ Comedy             │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Beach Games                                                  │ The Office, Season 3                                         │ Protected MPEG-4 video file │ Comedy             │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Job                                                      │ The Office, Season 3                                         │ Protected MPEG-4 video file │ Comedy             │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Branch Closing                                               │ The Office, Season 3                                         │ Protected MPEG-4 video file │ Comedy             │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Return                                                   │ The Office, Season 3                                         │ Protected MPEG-4 video file │ Comedy             │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ War Pigs                                                     │ Cake: B-Sides and Rarities                                   │ Purchased AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Say Hello 2 Heaven                                           │ Temple of the Dog                                            │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Reach Down                                                   │ Temple of the Dog                                            │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Hunger Strike                                                │ Temple of the Dog                                            │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Pushin Forward Back                                          │ Temple of the Dog                                            │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Call Me a Dog                                                │ Temple of the Dog                                            │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Times of Trouble                                             │ Temple of the Dog                                            │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Wooden Jesus                                                 │ Temple of the Dog                                            │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Your Savior                                                  │ Temple of the Dog                                            │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Four Walled World                                            │ Temple of the Dog                                            │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ All Night Thing                                              │ Temple of the Dog                                            │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ No Such Thing                                                │ Carry On                                                     │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Poison Eye                                                   │ Carry On                                                     │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Arms Around Your Love                                        │ Carry On                                                     │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Safe and Sound                                               │ Carry On                                                     │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ She'll Never Be Your Man                                     │ Carry On                                                     │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Ghosts                                                       │ Carry On                                                     │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Killing Birds                                                │ Carry On                                                     │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Billie Jean                                                  │ Carry On                                                     │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Scar On the Sky                                              │ Carry On                                                     │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Your Soul Today                                              │ Carry On                                                     │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Finally Forever                                              │ Carry On                                                     │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Silence the Voices                                           │ Carry On                                                     │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Disappearing Act                                             │ Carry On                                                     │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ You Know My Name                                             │ Carry On                                                     │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Revelations                                                  │ Revelations                                                  │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ One and the Same                                             │ Revelations                                                  │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Sound of a Gun                                               │ Revelations                                                  │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Until We Fall                                                │ Revelations                                                  │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Original Fire                                                │ Revelations                                                  │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Broken City                                                  │ Revelations                                                  │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Somedays                                                     │ Revelations                                                  │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Shape of Things to Come                                      │ Revelations                                                  │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Jewel of the Summertime                                      │ Revelations                                                  │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Wide Awake                                                   │ Revelations                                                  │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Nothing Left to Say But Goodbye                              │ Revelations                                                  │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Moth                                                         │ Revelations                                                  │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Show Me How to Live (Live at the Quart Festival)             │ Revelations                                                  │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Band Members Discuss Tracks from "Revelations"               │ Revelations                                                  │ Protected MPEG-4 video file │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Slowness                                                     │ Carried to Dust (Bonus Track Version)                        │ Protected AAC audio file    │ Alternative        │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Symphony No. 3 in E-flat major, Op. 55, "Eroica" - Scherzo:  │ The Best of Beethoven                                        │ AAC audio file              │ Classical          │
│ Allegro Vivace                                               │                                                              │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Intoitus: Adorate Deum                                       │ Adorate Deum: Gregorian Chant from the Proper of the Mass    │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Miserere mei, Deus                                           │ Allegri: Miserere                                            │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Canon and Gigue in D Major: I. Canon                         │ Pachelbel: Canon & Gigue                                     │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Concerto No. 1 in E Major, RV 269 "Spring": I. Allegro       │ Vivaldi: The Four Seasons                                    │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Concerto for 2 Violins in D Minor, BWV 1043: I. Vivace       │ Bach: Violin Concertos                                       │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Aria Mit 30 Veränderungen, BWV 988 "Goldberg Variations": Ar │ Bach: Goldberg Variations                                    │ Protected AAC audio file    │ Classical          │
│ ia                                                           │                                                              │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Suite for Solo Cello No. 1 in G Major, BWV 1007: I. Prélude  │ Bach: The Cello Suites                                       │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Messiah: Behold, I Tell You a Mystery... The Trumpet Sha │ Handel: The Messiah (Highlights)                             │ Protected AAC audio file    │ Classical          │
│ ll Sound                                                     │                                                              │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Solomon HWV 67: The Arrival of the Queen of Sheba            │ The World of Classical Favourites                            │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ "Eine Kleine Nachtmusik" Serenade In G, K. 525: I. Allegro   │ Sir Neville Marriner: A Celebration                          │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Concerto for Clarinet in A Major, K. 622: II. Adagio         │ Mozart: Wind Concertos                                       │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Symphony No. 104 in D Major "London": IV. Finale: Spiritoso  │ Haydn: Symphonies 99 - 104                                   │ Purchased AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Symphony No.5 in C Minor: I. Allegro con brio                │ Beethoven: Symhonies Nos. 5 & 6                              │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Ave Maria                                                    │ A Soprano Inspired                                           │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Nabucco: Chorus, "Va, Pensiero, Sull'ali Dorate"             │ Great Opera Choruses                                         │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Die Walküre: The Ride of the Valkyries                       │ Wagner: Favourite Overtures                                  │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Requiem, Op.48: 4. Pie Jesu                                  │ Fauré: Requiem, Ravel: Pavane & Others                       │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ The Nutcracker, Op. 71a, Act II: Scene 14: Pas de deux: Danc │ Tchaikovsky: The Nutcracker                                  │ Protected AAC audio file    │ Classical          │
│ e of the Prince & the Sugar-Plum Fairy                       │                                                              │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Nimrod (Adagio) from Variations On an Original Theme, Op. 36 │ The Last Night of the Proms                                  │ Protected AAC audio file    │ Classical          │
│  "Enigma"                                                    │                                                              │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Madama Butterfly: Un Bel Dì Vedremo                          │ Puccini: Madama Butterfly - Highlights                       │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Jupiter, the Bringer of Jollity                              │ Holst: The Planets, Op. 32 & Vaughan Williams: Fantasies     │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Turandot, Act III, Nessun dorma!                             │ Pavarotti's Opera Made Easy                                  │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Adagio for Strings from the String Quartet, Op. 11           │ Great Performances - Barber's Adagio and Other Romantic Favo │ Protected AAC audio file    │ Classical          │
│                                                              │ rites for Strings                                            │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Carmina Burana: O Fortuna                                    │ Carmina Burana                                               │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Fanfare for the Common Man                                   │ A Copland Celebration, Vol. I                                │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Toccata and Fugue in D Minor, BWV 565: I. Toccata            │ Bach: Toccata & Fugue in D Minor                             │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Symphony No.1 in D Major, Op.25 "Classical", Allegro Con Bri │ Prokofiev: Symphony No.1                                     │ Protected AAC audio file    │ Classical          │
│ o                                                            │                                                              │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Scheherazade, Op. 35: I. The Sea and Sindbad's Ship          │ Scheherazade                                                 │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Concerto No.2 in F Major, BWV1047, I. Allegro                │ Bach: The Brandenburg Concertos                              │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Concerto for Piano No. 2 in F Minor, Op. 21: II. Larghetto   │ Chopin: Piano Concertos Nos. 1 & 2                           │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Cavalleria Rusticana \ Act \ Intermezzo Sinfonico            │ Mascagni: Cavalleria Rusticana                               │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Karelia Suite, Op.11: 2. Ballade (Tempo Di Menuetto)         │ Sibelius: Finlandia                                          │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Piano Sonata No. 14 in C Sharp Minor, Op. 27, No. 2, "Moonli │ Beethoven Piano Sonatas: Moonlight & Pastorale               │ Protected AAC audio file    │ Classical          │
│ ght": I. Adagio sostenuto                                    │                                                              │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Fantasia On Greensleeves                                     │ The World of Classical Favourites                            │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Das Lied Von Der Erde, Von Der Jugend                        │ Great Recordings of the Century - Mahler: Das Lied von der E │ Protected AAC audio file    │ Classical          │
│                                                              │ rde                                                          │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Concerto for Cello and Orchestra in E minor, Op. 85: I. Adag │ Elgar: Cello Concerto & Vaughan Williams: Fantasias          │ Protected AAC audio file    │ Classical          │
│ io - Moderato                                                │                                                              │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Two Fanfares for Orchestra: II. Short Ride in a Fast Machine │ Adams, John: The Chairman Dances                             │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Wellington's Victory or the Battle Symphony, Op.91: 2. Symph │ Tchaikovsky: 1812 Festival Overture, Op.49, Capriccio Italie │ Protected AAC audio file    │ Classical          │
│ ony of Triumph                                               │ n & Beethoven: Wellington's Victory                          │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Missa Papae Marcelli: Kyrie                                  │ Palestrina: Missa Papae Marcelli & Allegri: Miserere         │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Romeo et Juliette: No. 11 - Danse des Chevaliers             │ Prokofiev: Romeo & Juliet                                    │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ On the Beautiful Blue Danube                                 │ Strauss: Waltzes                                             │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Symphonie Fantastique, Op. 14: V. Songe d'une nuit du sabbat │ Berlioz: Symphonie Fantastique                               │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Carmen: Overture                                             │ Bizet: Carmen Highlights                                     │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Lamentations of Jeremiah, First Set \ Incipit Lamentatio     │ English Renaissance                                          │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Music for the Royal Fireworks, HWV351 (1749): La Réjouissanc │ Handel: Music for the Royal Fireworks (Original Version 1749 │ Protected AAC audio file    │ Classical          │
│ e                                                            │ )                                                            │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Peer Gynt Suite No.1, Op.46: 1. Morning Mood                 │ Grieg: Peer Gynt Suites & Sibelius: Pelléas et Mélisande     │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ SCRIABIN: Prelude in B Major, Op. 11, No. 11                 │ SCRIABIN: Vers la flamme                                     │ Purchased AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Pavan, Lachrimae Antiquae                                    │ Armada: Music from the Courts of England and Spain           │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Symphony No. 41 in C Major, K. 551, "Jupiter": IV. Molto all │ Mozart: Symphonies Nos. 40 & 41                              │ Protected AAC audio file    │ Classical          │
│ egro                                                         │                                                              │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Prometheus Overture, Op. 43                                  │ Beethoven: Symphony No. 6 'Pastoral' Etc.                    │ Purchased AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Sonata for Solo Violin: IV: Presto                           │ Bartok: Violin & Viola Concertos                             │ Purchased AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ A Midsummer Night's Dream, Op.61 Incidental Music: No.7 Nott │ Mendelssohn: A Midsummer Night's Dream                       │ Protected AAC audio file    │ Classical          │
│ urno                                                         │                                                              │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Suite No. 3 in D, BWV 1068: III. Gavotte I & II              │ Bach: Orchestral Suites Nos. 1 - 4                           │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Concert pour 4 Parties de V**les, H. 545: I. Prelude         │ Charpentier: Divertissements, Airs & Concerts                │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Adios nonino                                                 │ South American Getaway                                       │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Symphony No. 3 Op. 36 for Orchestra and Soprano "Symfonia Pi │ Górecki: Symphony No. 3                                      │ Protected AAC audio file    │ Classical          │
│ esni Zalosnych" \ Lento E Largo - Tranquillissimo            │                                                              │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Act IV, Symphony                                             │ Purcell: The Fairy Queen                                     │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ 3 Gymnopédies: No.1 - Lent Et Grave, No.3 - Lent Et Douloure │ The Ultimate Relexation Album                                │ Protected AAC audio file    │ Classical          │
│ ux                                                           │                                                              │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Music for the Funeral of Queen Mary: VI. "Thou Knowest, Lord │ Purcell: Music for the Queen Mary                            │ Protected AAC audio file    │ Classical          │
│ , the Secrets of Our Hearts"                                 │                                                              │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Symphony No. 2: III. Allegro vivace                          │ Weill: The Seven Deadly Sins                                 │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Partita in E Major, BWV 1006A: I. Prelude                    │ J.S. Bach: Chaconne, Suite in E Minor, Partita in E Major &  │ Protected AAC audio file    │ Classical          │
│                                                              │ Prelude, Fugue and Allegro                                   │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Le Sacre Du Printemps: I.iv. Spring Rounds                   │ Prokofiev: Symphony No.5 & Stravinksy: Le Sacre Du Printemps │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Sing Joyfully                                                │ English Renaissance                                          │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Metopes, Op. 29: Calypso                                     │ Szymanowski: Piano Works, Vol. 1                             │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Symphony No. 2, Op. 16 -  "The Four Temperaments": II. Alleg │ Nielsen: The Six Symphonies                                  │ Protected AAC audio file    │ Classical          │
│ ro Comodo e Flemmatico                                       │                                                              │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ 24 Caprices, Op. 1, No. 24, for Solo Violin, in A Minor      │ Great Recordings of the Century: Paganini's 24 Caprices      │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Étude 1, In C Major - Preludio (Presto) - Liszt              │ Liszt - 12 Études D'Execution Transcendante                  │ Purchased AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Erlkonig, D.328                                              │ Great Recordings of the Century - Shubert: Schwanengesang, 4 │ Protected AAC audio file    │ Classical          │
│                                                              │  Lieder                                                      │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Concerto for Violin, Strings and Continuo in G Major, Op. 3, │ Locatelli: Concertos for Violin, Strings and Continuo, Vol.  │ Purchased AAC audio file    │ Classical          │
│  No. 9: I. Allegro                                           │ 3                                                            │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Pini Di Roma (Pinien Von Rom) \ I Pini Della Via Appia       │ Respighi:Pines of Rome                                       │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ String Quartet No. 12 in C Minor, D. 703 "Quartettsatz": II. │ Schubert: The Late String Quartets & String Quintet (3 CD's) │ Protected AAC audio file    │ Classical          │
│  Andante - Allegro assai                                     │                                                              │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ L'orfeo, Act 3, Sinfonia (Orchestra)                         │ Monteverdi: L'Orfeo                                          │ Protected AAC audio file    │ Classical          │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Quintet for Horn, Violin, 2 Violas, and Cello in E Flat Majo │ Mozart: Chamber Music                                        │ Protected AAC audio file    │ Classical          │
│ r, K. 407/386c: III. Allegro                                 │                                                              │                             │                    │
├──────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼─────────────────────────────┼────────────────────┤
│ Die Zauberflöte, K.620: "Der Hölle Rache Kocht in Meinem Her │ Mozart Gala: Famous Arias                                    │ Protected AAC audio file    │ Opera              │
│ ze"                                                          │                                                              │                             │                    │
└──────────────────────────────────────────────────────────────┴──────────────────────────────────────────────────────────────┴─────────────────────────────┴────────────────────┘
**/
-- Proporciona una consulta que muestre todas las facturas.
select * from invoices;
/**
┌───────────┬────────────┬─────────────────────┬──────────────────────────────────────────┬─────────────────────┬──────────────┬────────────────┬───────────────────┬───────┐
│ InvoiceId │ CustomerId │     InvoiceDate     │              BillingAddress              │     BillingCity     │ BillingState │ BillingCountry │ BillingPostalCode │ Total │
├───────────┼────────────┼─────────────────────┼──────────────────────────────────────────┼─────────────────────┼──────────────┼────────────────┼───────────────────┼───────┤
│ 1         │ 2          │ 2009-01-01 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 1.98  │
│ 2         │ 4          │ 2009-01-02 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 3.96  │
│ 3         │ 8          │ 2009-01-03 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 5.94  │
│ 4         │ 14         │ 2009-01-06 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 8.91  │
│ 5         │ 23         │ 2009-01-11 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 13.86 │
│ 6         │ 37         │ 2009-01-19 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 0.99  │
│ 7         │ 38         │ 2009-02-01 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 1.98  │
│ 8         │ 40         │ 2009-02-01 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 1.98  │
│ 9         │ 42         │ 2009-02-02 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 3.96  │
│ 10        │ 46         │ 2009-02-03 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 5.94  │
│ 11        │ 52         │ 2009-02-06 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 8.91  │
│ 12        │ 2          │ 2009-02-11 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 13.86 │
│ 13        │ 16         │ 2009-02-19 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 0.99  │
│ 14        │ 17         │ 2009-03-04 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 1.98  │
│ 15        │ 19         │ 2009-03-04 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 1.98  │
│ 16        │ 21         │ 2009-03-05 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 3.96  │
│ 17        │ 25         │ 2009-03-06 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 5.94  │
│ 18        │ 31         │ 2009-03-09 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 8.91  │
│ 19        │ 40         │ 2009-03-14 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 13.86 │
│ 20        │ 54         │ 2009-03-22 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 0.99  │
│ 21        │ 55         │ 2009-04-04 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 1.98  │
│ 22        │ 57         │ 2009-04-04 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 1.98  │
│ 23        │ 59         │ 2009-04-05 00:00:00 │ 3,Raj Bhavan Road                        │ Bangalore           │              │ India          │ 560001            │ 3.96  │
│ 24        │ 4          │ 2009-04-06 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 5.94  │
│ 25        │ 10         │ 2009-04-09 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 8.91  │
│ 26        │ 19         │ 2009-04-14 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 13.86 │
│ 27        │ 33         │ 2009-04-22 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 0.99  │
│ 28        │ 34         │ 2009-05-05 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 1.98  │
│ 29        │ 36         │ 2009-05-05 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 1.98  │
│ 30        │ 38         │ 2009-05-06 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 3.96  │
│ 31        │ 42         │ 2009-05-07 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 5.94  │
│ 32        │ 48         │ 2009-05-10 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 8.91  │
│ 33        │ 57         │ 2009-05-15 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 13.86 │
│ 34        │ 12         │ 2009-05-23 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 0.99  │
│ 35        │ 13         │ 2009-06-05 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 1.98  │
│ 36        │ 15         │ 2009-06-05 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 1.98  │
│ 37        │ 17         │ 2009-06-06 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 3.96  │
│ 38        │ 21         │ 2009-06-07 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 5.94  │
│ 39        │ 27         │ 2009-06-10 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 8.91  │
│ 40        │ 36         │ 2009-06-15 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 13.86 │
│ 41        │ 50         │ 2009-06-23 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 0.99  │
│ 42        │ 51         │ 2009-07-06 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 1.98  │
│ 43        │ 53         │ 2009-07-06 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 1.98  │
│ 44        │ 55         │ 2009-07-07 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 3.96  │
│ 45        │ 59         │ 2009-07-08 00:00:00 │ 3,Raj Bhavan Road                        │ Bangalore           │              │ India          │ 560001            │ 5.94  │
│ 46        │ 6          │ 2009-07-11 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 8.91  │
│ 47        │ 15         │ 2009-07-16 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 13.86 │
│ 48        │ 29         │ 2009-07-24 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 0.99  │
│ 49        │ 30         │ 2009-08-06 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 1.98  │
│ 50        │ 32         │ 2009-08-06 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 1.98  │
│ 51        │ 34         │ 2009-08-07 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 3.96  │
│ 52        │ 38         │ 2009-08-08 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 5.94  │
│ 53        │ 44         │ 2009-08-11 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 8.91  │
│ 54        │ 53         │ 2009-08-16 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 13.86 │
│ 55        │ 8          │ 2009-08-24 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 0.99  │
│ 56        │ 9          │ 2009-09-06 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 1.98  │
│ 57        │ 11         │ 2009-09-06 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 1.98  │
│ 58        │ 13         │ 2009-09-07 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 3.96  │
│ 59        │ 17         │ 2009-09-08 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 5.94  │
│ 60        │ 23         │ 2009-09-11 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 8.91  │
│ 61        │ 32         │ 2009-09-16 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 13.86 │
│ 62        │ 46         │ 2009-09-24 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 0.99  │
│ 63        │ 47         │ 2009-10-07 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 1.98  │
│ 64        │ 49         │ 2009-10-07 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 1.98  │
│ 65        │ 51         │ 2009-10-08 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 3.96  │
│ 66        │ 55         │ 2009-10-09 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 5.94  │
│ 67        │ 2          │ 2009-10-12 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 8.91  │
│ 68        │ 11         │ 2009-10-17 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 13.86 │
│ 69        │ 25         │ 2009-10-25 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 0.99  │
│ 70        │ 26         │ 2009-11-07 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 1.98  │
│ 71        │ 28         │ 2009-11-07 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 1.98  │
│ 72        │ 30         │ 2009-11-08 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 3.96  │
│ 73        │ 34         │ 2009-11-09 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 5.94  │
│ 74        │ 40         │ 2009-11-12 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 8.91  │
│ 75        │ 49         │ 2009-11-17 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 13.86 │
│ 76        │ 4          │ 2009-11-25 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 0.99  │
│ 77        │ 5          │ 2009-12-08 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 1.98  │
│ 78        │ 7          │ 2009-12-08 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 1.98  │
│ 79        │ 9          │ 2009-12-09 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 3.96  │
│ 80        │ 13         │ 2009-12-10 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 5.94  │
│ 81        │ 19         │ 2009-12-13 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 8.91  │
│ 82        │ 28         │ 2009-12-18 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 13.86 │
│ 83        │ 42         │ 2009-12-26 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 0.99  │
│ 84        │ 43         │ 2010-01-08 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 1.98  │
│ 85        │ 45         │ 2010-01-08 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 1.98  │
│ 86        │ 47         │ 2010-01-09 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 3.96  │
│ 87        │ 51         │ 2010-01-10 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 6.94  │
│ 88        │ 57         │ 2010-01-13 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 17.91 │
│ 89        │ 7          │ 2010-01-18 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 18.86 │
│ 90        │ 21         │ 2010-01-26 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 0.99  │
│ 91        │ 22         │ 2010-02-08 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 1.98  │
│ 92        │ 24         │ 2010-02-08 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 1.98  │
│ 93        │ 26         │ 2010-02-09 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 3.96  │
│ 94        │ 30         │ 2010-02-10 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 5.94  │
│ 95        │ 36         │ 2010-02-13 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 8.91  │
│ 96        │ 45         │ 2010-02-18 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 21.86 │
│ 97        │ 59         │ 2010-02-26 00:00:00 │ 3,Raj Bhavan Road                        │ Bangalore           │              │ India          │ 560001            │ 1.99  │
│ 98        │ 1          │ 2010-03-11 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 3.98  │
│ 99        │ 3          │ 2010-03-11 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 3.98  │
│ 100       │ 5          │ 2010-03-12 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 3.96  │
│ 101       │ 9          │ 2010-03-13 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 5.94  │
│ 102       │ 15         │ 2010-03-16 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 9.91  │
│ 103       │ 24         │ 2010-03-21 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 15.86 │
│ 104       │ 38         │ 2010-03-29 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 0.99  │
│ 105       │ 39         │ 2010-04-11 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 1.98  │
│ 106       │ 41         │ 2010-04-11 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 1.98  │
│ 107       │ 43         │ 2010-04-12 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 3.96  │
│ 108       │ 47         │ 2010-04-13 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 5.94  │
│ 109       │ 53         │ 2010-04-16 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 8.91  │
│ 110       │ 3          │ 2010-04-21 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 13.86 │
│ 111       │ 17         │ 2010-04-29 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 0.99  │
│ 112       │ 18         │ 2010-05-12 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 1.98  │
│ 113       │ 20         │ 2010-05-12 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 1.98  │
│ 114       │ 22         │ 2010-05-13 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 3.96  │
│ 115       │ 26         │ 2010-05-14 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 5.94  │
│ 116       │ 32         │ 2010-05-17 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 8.91  │
│ 117       │ 41         │ 2010-05-22 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 13.86 │
│ 118       │ 55         │ 2010-05-30 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 0.99  │
│ 119       │ 56         │ 2010-06-12 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 1.98  │
│ 120       │ 58         │ 2010-06-12 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 1.98  │
│ 121       │ 1          │ 2010-06-13 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 3.96  │
│ 122       │ 5          │ 2010-06-14 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 5.94  │
│ 123       │ 11         │ 2010-06-17 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 8.91  │
│ 124       │ 20         │ 2010-06-22 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 13.86 │
│ 125       │ 34         │ 2010-06-30 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 0.99  │
│ 126       │ 35         │ 2010-07-13 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 1.98  │
│ 127       │ 37         │ 2010-07-13 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 1.98  │
│ 128       │ 39         │ 2010-07-14 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 3.96  │
│ 129       │ 43         │ 2010-07-15 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 5.94  │
│ 130       │ 49         │ 2010-07-18 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 8.91  │
│ 131       │ 58         │ 2010-07-23 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 13.86 │
│ 132       │ 13         │ 2010-07-31 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 0.99  │
│ 133       │ 14         │ 2010-08-13 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 1.98  │
│ 134       │ 16         │ 2010-08-13 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 1.98  │
│ 135       │ 18         │ 2010-08-14 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 3.96  │
│ 136       │ 22         │ 2010-08-15 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 5.94  │
│ 137       │ 28         │ 2010-08-18 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 8.91  │
│ 138       │ 37         │ 2010-08-23 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 13.86 │
│ 139       │ 51         │ 2010-08-31 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 0.99  │
│ 140       │ 52         │ 2010-09-13 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 1.98  │
│ 141       │ 54         │ 2010-09-13 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 1.98  │
│ 142       │ 56         │ 2010-09-14 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 3.96  │
│ 143       │ 1          │ 2010-09-15 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 5.94  │
│ 144       │ 7          │ 2010-09-18 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 8.91  │
│ 145       │ 16         │ 2010-09-23 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 13.86 │
│ 146       │ 30         │ 2010-10-01 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 0.99  │
│ 147       │ 31         │ 2010-10-14 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 1.98  │
│ 148       │ 33         │ 2010-10-14 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 1.98  │
│ 149       │ 35         │ 2010-10-15 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 3.96  │
│ 150       │ 39         │ 2010-10-16 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 5.94  │
│ 151       │ 45         │ 2010-10-19 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 8.91  │
│ 152       │ 54         │ 2010-10-24 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 13.86 │
│ 153       │ 9          │ 2010-11-01 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 0.99  │
│ 154       │ 10         │ 2010-11-14 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 1.98  │
│ 155       │ 12         │ 2010-11-14 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 1.98  │
│ 156       │ 14         │ 2010-11-15 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 3.96  │
│ 157       │ 18         │ 2010-11-16 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 5.94  │
│ 158       │ 24         │ 2010-11-19 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 8.91  │
│ 159       │ 33         │ 2010-11-24 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 13.86 │
│ 160       │ 47         │ 2010-12-02 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 0.99  │
│ 161       │ 48         │ 2010-12-15 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 1.98  │
│ 162       │ 50         │ 2010-12-15 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 1.98  │
│ 163       │ 52         │ 2010-12-16 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 3.96  │
│ 164       │ 56         │ 2010-12-17 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 5.94  │
│ 165       │ 3          │ 2010-12-20 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 8.91  │
│ 166       │ 12         │ 2010-12-25 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 13.86 │
│ 167       │ 26         │ 2011-01-02 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 0.99  │
│ 168       │ 27         │ 2011-01-15 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 1.98  │
│ 169       │ 29         │ 2011-01-15 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 1.98  │
│ 170       │ 31         │ 2011-01-16 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 3.96  │
│ 171       │ 35         │ 2011-01-17 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 5.94  │
│ 172       │ 41         │ 2011-01-20 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 8.91  │
│ 173       │ 50         │ 2011-01-25 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 13.86 │
│ 174       │ 5          │ 2011-02-02 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 0.99  │
│ 175       │ 6          │ 2011-02-15 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 1.98  │
│ 176       │ 8          │ 2011-02-15 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 1.98  │
│ 177       │ 10         │ 2011-02-16 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 3.96  │
│ 178       │ 14         │ 2011-02-17 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 5.94  │
│ 179       │ 20         │ 2011-02-20 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 8.91  │
│ 180       │ 29         │ 2011-02-25 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 13.86 │
│ 181       │ 43         │ 2011-03-05 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 0.99  │
│ 182       │ 44         │ 2011-03-18 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 1.98  │
│ 183       │ 46         │ 2011-03-18 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 1.98  │
│ 184       │ 48         │ 2011-03-19 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 3.96  │
│ 185       │ 52         │ 2011-03-20 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 5.94  │
│ 186       │ 58         │ 2011-03-23 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 8.91  │
│ 187       │ 8          │ 2011-03-28 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 13.86 │
│ 188       │ 22         │ 2011-04-05 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 0.99  │
│ 189       │ 23         │ 2011-04-18 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 1.98  │
│ 190       │ 25         │ 2011-04-18 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 1.98  │
│ 191       │ 27         │ 2011-04-19 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 3.96  │
│ 192       │ 31         │ 2011-04-20 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 5.94  │
│ 193       │ 37         │ 2011-04-23 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 14.91 │
│ 194       │ 46         │ 2011-04-28 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 21.86 │
│ 195       │ 1          │ 2011-05-06 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 0.99  │
│ 196       │ 2          │ 2011-05-19 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 1.98  │
│ 197       │ 4          │ 2011-05-19 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 1.98  │
│ 198       │ 6          │ 2011-05-20 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 3.96  │
│ 199       │ 10         │ 2011-05-21 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 5.94  │
│ 200       │ 16         │ 2011-05-24 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 8.91  │
│ 201       │ 25         │ 2011-05-29 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 18.86 │
│ 202       │ 39         │ 2011-06-06 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 1.99  │
│ 203       │ 40         │ 2011-06-19 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 2.98  │
│ 204       │ 42         │ 2011-06-19 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 3.98  │
│ 205       │ 44         │ 2011-06-20 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 7.96  │
│ 206       │ 48         │ 2011-06-21 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 8.94  │
│ 207       │ 54         │ 2011-06-24 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 8.91  │
│ 208       │ 4          │ 2011-06-29 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 15.86 │
│ 209       │ 18         │ 2011-07-07 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 0.99  │
│ 210       │ 19         │ 2011-07-20 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 1.98  │
│ 211       │ 21         │ 2011-07-20 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 1.98  │
│ 212       │ 23         │ 2011-07-21 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 3.96  │
│ 213       │ 27         │ 2011-07-22 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 5.94  │
│ 214       │ 33         │ 2011-07-25 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 8.91  │
│ 215       │ 42         │ 2011-07-30 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 13.86 │
│ 216       │ 56         │ 2011-08-07 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 0.99  │
│ 217       │ 57         │ 2011-08-20 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 1.98  │
│ 218       │ 59         │ 2011-08-20 00:00:00 │ 3,Raj Bhavan Road                        │ Bangalore           │              │ India          │ 560001            │ 1.98  │
│ 219       │ 2          │ 2011-08-21 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 3.96  │
│ 220       │ 6          │ 2011-08-22 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 5.94  │
│ 221       │ 12         │ 2011-08-25 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 8.91  │
│ 222       │ 21         │ 2011-08-30 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 13.86 │
│ 223       │ 35         │ 2011-09-07 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 0.99  │
│ 224       │ 36         │ 2011-09-20 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 1.98  │
│ 225       │ 38         │ 2011-09-20 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 1.98  │
│ 226       │ 40         │ 2011-09-21 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 3.96  │
│ 227       │ 44         │ 2011-09-22 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 5.94  │
│ 228       │ 50         │ 2011-09-25 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 8.91  │
│ 229       │ 59         │ 2011-09-30 00:00:00 │ 3,Raj Bhavan Road                        │ Bangalore           │              │ India          │ 560001            │ 13.86 │
│ 230       │ 14         │ 2011-10-08 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 0.99  │
│ 231       │ 15         │ 2011-10-21 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 1.98  │
│ 232       │ 17         │ 2011-10-21 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 1.98  │
│ 233       │ 19         │ 2011-10-22 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 3.96  │
│ 234       │ 23         │ 2011-10-23 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 5.94  │
│ 235       │ 29         │ 2011-10-26 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 8.91  │
│ 236       │ 38         │ 2011-10-31 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 13.86 │
│ 237       │ 52         │ 2011-11-08 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 0.99  │
│ 238       │ 53         │ 2011-11-21 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 1.98  │
│ 239       │ 55         │ 2011-11-21 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 1.98  │
│ 240       │ 57         │ 2011-11-22 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 3.96  │
│ 241       │ 2          │ 2011-11-23 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 5.94  │
│ 242       │ 8          │ 2011-11-26 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 8.91  │
│ 243       │ 17         │ 2011-12-01 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 13.86 │
│ 244       │ 31         │ 2011-12-09 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 0.99  │
│ 245       │ 32         │ 2011-12-22 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 1.98  │
│ 246       │ 34         │ 2011-12-22 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 1.98  │
│ 247       │ 36         │ 2011-12-23 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 3.96  │
│ 248       │ 40         │ 2011-12-24 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 5.94  │
│ 249       │ 46         │ 2011-12-27 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 8.91  │
│ 250       │ 55         │ 2012-01-01 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 13.86 │
│ 251       │ 10         │ 2012-01-09 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 0.99  │
│ 252       │ 11         │ 2012-01-22 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 1.98  │
│ 253       │ 13         │ 2012-01-22 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 1.98  │
│ 254       │ 15         │ 2012-01-23 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 3.96  │
│ 255       │ 19         │ 2012-01-24 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 5.94  │
│ 256       │ 25         │ 2012-01-27 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 8.91  │
│ 257       │ 34         │ 2012-02-01 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 13.86 │
│ 258       │ 48         │ 2012-02-09 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 0.99  │
│ 259       │ 49         │ 2012-02-22 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 1.98  │
│ 260       │ 51         │ 2012-02-22 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 1.98  │
│ 261       │ 53         │ 2012-02-23 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 3.96  │
│ 262       │ 57         │ 2012-02-24 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 5.94  │
│ 263       │ 4          │ 2012-02-27 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 8.91  │
│ 264       │ 13         │ 2012-03-03 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 13.86 │
│ 265       │ 27         │ 2012-03-11 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 0.99  │
│ 266       │ 28         │ 2012-03-24 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 1.98  │
│ 267       │ 30         │ 2012-03-24 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 1.98  │
│ 268       │ 32         │ 2012-03-25 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 3.96  │
│ 269       │ 36         │ 2012-03-26 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 5.94  │
│ 270       │ 42         │ 2012-03-29 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 8.91  │
│ 271       │ 51         │ 2012-04-03 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 13.86 │
│ 272       │ 6          │ 2012-04-11 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 0.99  │
│ 273       │ 7          │ 2012-04-24 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 1.98  │
│ 274       │ 9          │ 2012-04-24 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 1.98  │
│ 275       │ 11         │ 2012-04-25 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 3.96  │
│ 276       │ 15         │ 2012-04-26 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 5.94  │
│ 277       │ 21         │ 2012-04-29 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 8.91  │
│ 278       │ 30         │ 2012-05-04 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 13.86 │
│ 279       │ 44         │ 2012-05-12 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 0.99  │
│ 280       │ 45         │ 2012-05-25 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 1.98  │
│ 281       │ 47         │ 2012-05-25 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 1.98  │
│ 282       │ 49         │ 2012-05-26 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 3.96  │
│ 283       │ 53         │ 2012-05-27 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 5.94  │
│ 284       │ 59         │ 2012-05-30 00:00:00 │ 3,Raj Bhavan Road                        │ Bangalore           │              │ India          │ 560001            │ 8.91  │
│ 285       │ 9          │ 2012-06-04 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 13.86 │
│ 286       │ 23         │ 2012-06-12 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 0.99  │
│ 287       │ 24         │ 2012-06-25 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 1.98  │
│ 288       │ 26         │ 2012-06-25 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 1.98  │
│ 289       │ 28         │ 2012-06-26 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 3.96  │
│ 290       │ 32         │ 2012-06-27 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 5.94  │
│ 291       │ 38         │ 2012-06-30 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 8.91  │
│ 292       │ 47         │ 2012-07-05 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 13.86 │
│ 293       │ 2          │ 2012-07-13 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 0.99  │
│ 294       │ 3          │ 2012-07-26 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 1.98  │
│ 295       │ 5          │ 2012-07-26 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 1.98  │
│ 296       │ 7          │ 2012-07-27 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 3.96  │
│ 297       │ 11         │ 2012-07-28 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 5.94  │
│ 298       │ 17         │ 2012-07-31 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 10.91 │
│ 299       │ 26         │ 2012-08-05 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 23.86 │
│ 300       │ 40         │ 2012-08-13 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 0.99  │
│ 301       │ 41         │ 2012-08-26 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 1.98  │
│ 302       │ 43         │ 2012-08-26 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 1.98  │
│ 303       │ 45         │ 2012-08-27 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 3.96  │
│ 304       │ 49         │ 2012-08-28 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 5.94  │
│ 305       │ 55         │ 2012-08-31 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 8.91  │
│ 306       │ 5          │ 2012-09-05 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 16.86 │
│ 307       │ 19         │ 2012-09-13 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 1.99  │
│ 308       │ 20         │ 2012-09-26 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 3.98  │
│ 309       │ 22         │ 2012-09-26 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 3.98  │
│ 310       │ 24         │ 2012-09-27 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 7.96  │
│ 311       │ 28         │ 2012-09-28 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 11.94 │
│ 312       │ 34         │ 2012-10-01 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 10.91 │
│ 313       │ 43         │ 2012-10-06 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 16.86 │
│ 314       │ 57         │ 2012-10-14 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 0.99  │
│ 315       │ 58         │ 2012-10-27 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 1.98  │
│ 316       │ 1          │ 2012-10-27 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 1.98  │
│ 317       │ 3          │ 2012-10-28 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 3.96  │
│ 318       │ 7          │ 2012-10-29 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 5.94  │
│ 319       │ 13         │ 2012-11-01 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 8.91  │
│ 320       │ 22         │ 2012-11-06 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 13.86 │
│ 321       │ 36         │ 2012-11-14 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 0.99  │
│ 322       │ 37         │ 2012-11-27 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 1.98  │
│ 323       │ 39         │ 2012-11-27 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 1.98  │
│ 324       │ 41         │ 2012-11-28 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 3.96  │
│ 325       │ 45         │ 2012-11-29 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 5.94  │
│ 326       │ 51         │ 2012-12-02 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 8.91  │
│ 327       │ 1          │ 2012-12-07 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 13.86 │
│ 328       │ 15         │ 2012-12-15 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 0.99  │
│ 329       │ 16         │ 2012-12-28 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 1.98  │
│ 330       │ 18         │ 2012-12-28 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 1.98  │
│ 331       │ 20         │ 2012-12-29 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 3.96  │
│ 332       │ 24         │ 2012-12-30 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 5.94  │
│ 333       │ 30         │ 2013-01-02 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 8.91  │
│ 334       │ 39         │ 2013-01-07 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 13.86 │
│ 335       │ 53         │ 2013-01-15 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 0.99  │
│ 336       │ 54         │ 2013-01-28 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 1.98  │
│ 337       │ 56         │ 2013-01-28 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 1.98  │
│ 338       │ 58         │ 2013-01-29 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 3.96  │
│ 339       │ 3          │ 2013-01-30 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 5.94  │
│ 340       │ 9          │ 2013-02-02 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 8.91  │
│ 341       │ 18         │ 2013-02-07 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 13.86 │
│ 342       │ 32         │ 2013-02-15 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 0.99  │
│ 343       │ 33         │ 2013-02-28 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 1.98  │
│ 344       │ 35         │ 2013-02-28 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 1.98  │
│ 345       │ 37         │ 2013-03-01 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 3.96  │
│ 346       │ 41         │ 2013-03-02 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 5.94  │
│ 347       │ 47         │ 2013-03-05 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 8.91  │
│ 348       │ 56         │ 2013-03-10 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 13.86 │
│ 349       │ 11         │ 2013-03-18 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 0.99  │
│ 350       │ 12         │ 2013-03-31 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 1.98  │
│ 351       │ 14         │ 2013-03-31 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 1.98  │
│ 352       │ 16         │ 2013-04-01 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 3.96  │
│ 353       │ 20         │ 2013-04-02 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 5.94  │
│ 354       │ 26         │ 2013-04-05 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 8.91  │
│ 355       │ 35         │ 2013-04-10 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 13.86 │
│ 356       │ 49         │ 2013-04-18 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 0.99  │
│ 357       │ 50         │ 2013-05-01 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 1.98  │
│ 358       │ 52         │ 2013-05-01 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 1.98  │
│ 359       │ 54         │ 2013-05-02 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 3.96  │
│ 360       │ 58         │ 2013-05-03 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 5.94  │
│ 361       │ 5          │ 2013-05-06 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 8.91  │
│ 362       │ 14         │ 2013-05-11 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 13.86 │
│ 363       │ 28         │ 2013-05-19 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 0.99  │
│ 364       │ 29         │ 2013-06-01 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 1.98  │
│ 365       │ 31         │ 2013-06-01 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 1.98  │
│ 366       │ 33         │ 2013-06-02 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 3.96  │
│ 367       │ 37         │ 2013-06-03 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 5.94  │
│ 368       │ 43         │ 2013-06-06 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 8.91  │
│ 369       │ 52         │ 2013-06-11 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 13.86 │
│ 370       │ 7          │ 2013-06-19 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 0.99  │
│ 371       │ 8          │ 2013-07-02 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 1.98  │
│ 372       │ 10         │ 2013-07-02 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 1.98  │
│ 373       │ 12         │ 2013-07-03 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 3.96  │
│ 374       │ 16         │ 2013-07-04 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 5.94  │
│ 375       │ 22         │ 2013-07-07 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 8.91  │
│ 376       │ 31         │ 2013-07-12 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 13.86 │
│ 377       │ 45         │ 2013-07-20 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 0.99  │
│ 378       │ 46         │ 2013-08-02 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 1.98  │
│ 379       │ 48         │ 2013-08-02 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 1.98  │
│ 380       │ 50         │ 2013-08-03 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 3.96  │
│ 381       │ 54         │ 2013-08-04 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 5.94  │
│ 382       │ 1          │ 2013-08-07 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 8.91  │
│ 383       │ 10         │ 2013-08-12 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 13.86 │
│ 384       │ 24         │ 2013-08-20 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 0.99  │
│ 385       │ 25         │ 2013-09-02 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 1.98  │
│ 386       │ 27         │ 2013-09-02 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 1.98  │
│ 387       │ 29         │ 2013-09-03 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 3.96  │
│ 388       │ 33         │ 2013-09-04 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 5.94  │
│ 389       │ 39         │ 2013-09-07 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 8.91  │
│ 390       │ 48         │ 2013-09-12 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 13.86 │
│ 391       │ 3          │ 2013-09-20 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 0.99  │
│ 392       │ 4          │ 2013-10-03 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 1.98  │
│ 393       │ 6          │ 2013-10-03 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 1.98  │
│ 394       │ 8          │ 2013-10-04 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 3.96  │
│ 395       │ 12         │ 2013-10-05 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 5.94  │
│ 396       │ 18         │ 2013-10-08 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 8.91  │
│ 397       │ 27         │ 2013-10-13 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 13.86 │
│ 398       │ 41         │ 2013-10-21 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 0.99  │
│ 399       │ 42         │ 2013-11-03 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 1.98  │
│ 400       │ 44         │ 2013-11-03 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 1.98  │
│ 401       │ 46         │ 2013-11-04 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 3.96  │
│ 402       │ 50         │ 2013-11-05 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 5.94  │
│ 403       │ 56         │ 2013-11-08 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 8.91  │
│ 404       │ 6          │ 2013-11-13 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 25.86 │
│ 405       │ 20         │ 2013-11-21 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 0.99  │
│ 406       │ 21         │ 2013-12-04 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 1.98  │
│ 407       │ 23         │ 2013-12-04 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 1.98  │
│ 408       │ 25         │ 2013-12-05 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 3.96  │
│ 409       │ 29         │ 2013-12-06 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 5.94  │
│ 410       │ 35         │ 2013-12-09 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 8.91  │
│ 411       │ 44         │ 2013-12-14 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 13.86 │
│ 412       │ 58         │ 2013-12-22 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 1.99  │
└───────────┴────────────┴─────────────────────┴──────────────────────────────────────────┴─────────────────────┴──────────────┴────────────────┴───────────────────┴───────┘
**/
-- Proporciona una consulta que muestre las ventas totales realizadas por cada agente de ventas.
select e.FirstName as sales_support_agent_name, count(i.InvoiceId) as total_sales from employees e join customers c on e.EmployeeId = c.SupportRepId join invoices i on c.CustomerId = i.CustomerId where e.Title = "Sales Support Agent" group by e.EmployeeId;
/**
┌──────────────────────────┬─────────────┐
│ sales_support_agent_name │ total_sales │
├──────────────────────────┼─────────────┤
│ Jane                     │ 146         │
│ Margaret                 │ 140         │
│ Steve                    │ 126         │
└──────────────────────────┴─────────────┘
**/
-- ¿Qué agente de ventas realizó más ventas en 2009?
SELECT e.FirstName AS sales_support_agent_name, COUNT(i.InvoiceId) AS total_sales FROM employees e JOIN customers c ON e.EmployeeId = c.SupportRepId JOIN invoices i ON c.CustomerId = i.CustomerId WHERE e.Title = "Sales Support Agent" AND strftime('%Y', i.InvoiceDate) = '2009' GROUP BY e.FirstName ORDER BY total_sales DESC LIMIT 1;
/**
┌──────────────────────────┬─────────────┐
│ sales_support_agent_name │ total_sales │
├──────────────────────────┼─────────────┤
│ Margaret                 │ 30          │
└──────────────────────────┴─────────────┘
**/
-- Escribir una consulta que muestre todas las playlists de la base de datos.
select * from playlists;
/**
┌────────────┬────────────────────────────┐
│ PlaylistId │            Name            │
├────────────┼────────────────────────────┤
│ 1          │ Music                      │
│ 2          │ Movies                     │
│ 3          │ TV Shows                   │
│ 4          │ Audiobooks                 │
│ 5          │ 90’s Music                 │
│ 6          │ Audiobooks                 │
│ 7          │ Movies                     │
│ 8          │ Music                      │
│ 9          │ Music Videos               │
│ 10         │ TV Shows                   │
│ 11         │ Brazilian Music            │
│ 12         │ Classical                  │
│ 13         │ Classical 101 - Deep Cuts  │
│ 14         │ Classical 101 - Next Steps │
│ 15         │ Classical 101 - The Basics │
│ 16         │ Grunge                     │
│ 17         │ Heavy Metal Classic        │
│ 18         │ On-The-Go 1                │
└────────────┴────────────────────────────┘
**/
-- Escribe una consulta que liste todas las canciones de una playlist.
select t.Name as Brazilian_Music from tracks t join playlist_track pt on t.TrackId = pt.TrackId join playlists p on pt.PlaylistId = p.PlaylistId where p.Name = "Brazilian Music";
/**
┌──────────────────────────────┐
│       Brazilian_Music        │
├──────────────────────────────┤
│ Sozinho                      │
│ Odara                        │
│ A Luz De Tieta               │
│ Vai Passar                   │
│ Bye, Bye Brasil              │
│ A Banda                      │
│ Garota De Ipanema            │
│ Tarde Em Itapoã              │
│ Grito De Alerta              │
│ O Que É O Que É ?            │
│ Voce e Linda                 │
│ Sampa                        │
│ Malandragem                  │
│ Admirável Gado Novo          │
│ Meu Bem-Querer               │
│ Esquinas                     │
│ Samurai                      │
│ Açai                         │
│ Sina                         │
│ O Bêbado e a Equilibrista    │
│ Fascinação                   │
│ Madalena                     │
│ Palco (Live)                 │
│ Quanta (Live)                │
│ A Novidade (Live)            │
│ A Novidade                   │
│ Selassiê                     │
│ Filho Maravilha              │
│ Taj Mahal                    │
│ Coração De Estudante         │
│ Nos Bailes Da Vida           │
│ Maria, Maria                 │
│ Chocolate                    │
│ Azul Da Cor Do Mar           │
│ O Descobridor Dos Sete Mares │
│ Não Vou Ficar                │
│ Gostava Tanto De Você        │
│ Você                         │
│ Não Quero Dinheiro           │
└──────────────────────────────┘
**/
-- Escribe una consulta que liste **exclusivamente** el nombre de las canciones de una playlist concreta, con el nombre de su género y el nombre de tipo de medio.
select t.Name as Brazilian_Music, g.Name as genre, m.Name as media_type from tracks t join playlist_track pt on t.TrackId = pt.TrackId join playlists p on pt.PlaylistId = p.PlaylistId join genres g on t.GenreId = g.GenreId join media_types m on t.MediaTypeId = m.MediaTypeId where p.Name = "Brazilian Music";
/**
┌──────────────────────────────┬───────┬─────────────────┐
│       Brazilian_Music        │ genre │   media_type    │
├──────────────────────────────┼───────┼─────────────────┤
│ Sozinho                      │ Latin │ MPEG audio file │
│ Odara                        │ Latin │ MPEG audio file │
│ A Luz De Tieta               │ Latin │ MPEG audio file │
│ Vai Passar                   │ Latin │ MPEG audio file │
│ Bye, Bye Brasil              │ Latin │ MPEG audio file │
│ A Banda                      │ Latin │ MPEG audio file │
│ Garota De Ipanema            │ Latin │ MPEG audio file │
│ Tarde Em Itapoã              │ Latin │ MPEG audio file │
│ Grito De Alerta              │ Latin │ MPEG audio file │
│ O Que É O Que É ?            │ Latin │ MPEG audio file │
│ Voce e Linda                 │ Latin │ MPEG audio file │
│ Sampa                        │ Latin │ MPEG audio file │
│ Malandragem                  │ Latin │ MPEG audio file │
│ Admirável Gado Novo          │ Latin │ MPEG audio file │
│ Meu Bem-Querer               │ Latin │ MPEG audio file │
│ Esquinas                     │ Latin │ MPEG audio file │
│ Samurai                      │ Latin │ MPEG audio file │
│ Açai                         │ Latin │ MPEG audio file │
│ Sina                         │ Latin │ MPEG audio file │
│ O Bêbado e a Equilibrista    │ Latin │ MPEG audio file │
│ Fascinação                   │ Latin │ MPEG audio file │
│ Madalena                     │ Latin │ MPEG audio file │
│ Palco (Live)                 │ Latin │ MPEG audio file │
│ Quanta (Live)                │ Latin │ MPEG audio file │
│ A Novidade (Live)            │ Latin │ MPEG audio file │
│ A Novidade                   │ Latin │ MPEG audio file │
│ Selassiê                     │ Latin │ MPEG audio file │
│ Filho Maravilha              │ Latin │ MPEG audio file │
│ Taj Mahal                    │ Latin │ MPEG audio file │
│ Coração De Estudante         │ Latin │ MPEG audio file │
│ Nos Bailes Da Vida           │ Latin │ MPEG audio file │
│ Maria, Maria                 │ Latin │ MPEG audio file │
│ Chocolate                    │ Latin │ MPEG audio file │
│ Azul Da Cor Do Mar           │ Latin │ MPEG audio file │
│ O Descobridor Dos Sete Mares │ Latin │ MPEG audio file │
│ Não Vou Ficar                │ Latin │ MPEG audio file │
│ Gostava Tanto De Você        │ Latin │ MPEG audio file │
│ Você                         │ Latin │ MPEG audio file │
│ Não Quero Dinheiro           │ Latin │ MPEG audio file │
└──────────────────────────────┴───────┴─────────────────┘
**/