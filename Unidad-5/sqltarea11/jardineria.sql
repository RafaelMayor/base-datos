-- Rafael Martín Mayor.



-- Hecho con mucha ilusión, amor y cariño.



-- Consultas SQL sobre una tabla



-- Devuelve un listado con el código de oficina y la ciudad donde hay oficinas.
select codigo_oficina, ciudad from oficina;
/**
┌────────────────┬──────────────────────┐
│ codigo_oficina │        ciudad        │
├────────────────┼──────────────────────┤
│ BCN-ES         │ Barcelona            │
│ BOS-USA        │ Boston               │
│ LON-UK         │ Londres              │
│ MAD-ES         │ Madrid               │
│ PAR-FR         │ Paris                │
│ SFC-USA        │ San Francisco        │
│ SYD-AU         │ Sydney               │
│ TAL-ES         │ Talavera de la Reina │
│ TOK-JP         │ Tokyo                │
└────────────────┴──────────────────────┘
**/

-- Devuelve un listado con la ciudad y el teléfono de las oficinas de España.
select codigo_oficina, ciudad, telefono from oficina where pais = 'España';
/**
┌────────────────┬──────────────────────┬────────────────┐
│ codigo_oficina │        ciudad        │    telefono    │
├────────────────┼──────────────────────┼────────────────┤
│ BCN-ES         │ Barcelona            │ +34 93 3561182 │
│ MAD-ES         │ Madrid               │ +34 91 7514487 │
│ TAL-ES         │ Talavera de la Reina │ +34 925 867231 │
└────────────────┴──────────────────────┴────────────────┘
**/

-- Devuelve un listado con el nombre, apellidos y email de los empleados cuyo jefe tiene un código de jefe igual a 7.
select nombre, apellido1||' '||apellido2 as apellidos, email from empleado where codigo_jefe = 7;
/**
┌─────────┬───────────────────┬──────────────────────────┐
│ nombre  │     apellidos     │          email           │
├─────────┼───────────────────┼──────────────────────────┤
│ Mariano │ López Murcia      │ mlopez@jardineria.es     │
│ Lucio   │ Campoamor Martín  │ lcampoamor@jardineria.es │
│ Hilario │ Rodriguez Huertas │ hrodriguez@jardineria.es │
└─────────┴───────────────────┴──────────────────────────┘
**/

-- Devuelve el nombre del puesto, nombre, apellidos y email del jefe de la empresa.
select codigo_jefe, puesto, nombre, apellido1||' '||apellido2 as apellidos, email from empleado;
/**
┌─────────────┬───────────────────────┬─────────────────┬────────────────────┬───────────────────────────┐
│ codigo_jefe │        puesto         │     nombre      │     apellidos      │           email           │
├─────────────┼───────────────────────┼─────────────────┼────────────────────┼───────────────────────────┤
│             │ Director General      │ Marcos          │ Magaña Perez       │ marcos@jardineria.es      │
│ 1           │ Subdirector Marketing │ Ruben           │ López Martinez     │ rlopez@jardineria.es      │
│ 2           │ Subdirector Ventas    │ Alberto         │ Soria Carrasco     │ asoria@jardineria.es      │
│ 2           │ Secretaria            │ Maria           │ Solís Jerez        │ msolis@jardineria.es      │
│ 3           │ Representante Ventas  │ Felipe          │ Rosas Marquez      │ frosas@jardineria.es      │
│ 3           │ Representante Ventas  │ Juan Carlos     │ Ortiz Serrano      │ cortiz@jardineria.es      │
│ 3           │ Director Oficina      │ Carlos          │ Soria Jimenez      │ csoria@jardineria.es      │
│ 7           │ Representante Ventas  │ Mariano         │ López Murcia       │ mlopez@jardineria.es      │
│ 7           │ Representante Ventas  │ Lucio           │ Campoamor Martín   │ lcampoamor@jardineria.es  │
│ 7           │ Representante Ventas  │ Hilario         │ Rodriguez Huertas  │ hrodriguez@jardineria.es  │
│ 3           │ Director Oficina      │ Emmanuel        │ Magaña Perez       │ manu@jardineria.es        │
│ 11          │ Representante Ventas  │ José Manuel     │ Martinez De la Osa │ jmmart@hotmail.es         │
│ 11          │ Representante Ventas  │ David           │ Palma Aceituno     │ dpalma@jardineria.es      │
│ 11          │ Representante Ventas  │ Oscar           │ Palma Aceituno     │ opalma@jardineria.es      │
│ 3           │ Director Oficina      │ Francois        │ Fignon             │ ffignon@gardening.com     │
│ 15          │ Representante Ventas  │ Lionel          │ Narvaez            │ lnarvaez@gardening.com    │
│ 15          │ Representante Ventas  │ Laurent         │ Serra              │ lserra@gardening.com      │
│ 3           │ Director Oficina      │ Michael         │ Bolton             │ mbolton@gardening.com     │
│ 18          │ Representante Ventas  │ Walter Santiago │ Sanchez Lopez      │ wssanchez@gardening.com   │
│ 3           │ Director Oficina      │ Hilary          │ Washington         │ hwashington@gardening.com │
│ 20          │ Representante Ventas  │ Marcus          │ Paxton             │ mpaxton@gardening.com     │
│ 20          │ Representante Ventas  │ Lorena          │ Paxton             │ lpaxton@gardening.com     │
│ 3           │ Director Oficina      │ Nei             │ Nishikori          │ nnishikori@gardening.com  │
│ 23          │ Representante Ventas  │ Narumi          │ Riko               │ nriko@gardening.com       │
│ 23          │ Representante Ventas  │ Takuma          │ Nomura             │ tnomura@gardening.com     │
│ 3           │ Director Oficina      │ Amy             │ Johnson            │ ajohnson@gardening.com    │
│ 26          │ Representante Ventas  │ Larry           │ Westfalls          │ lwestfalls@gardening.com  │
│ 26          │ Representante Ventas  │ John            │ Walton             │ jwalton@gardening.com     │
│ 3           │ Director Oficina      │ Kevin           │ Fallmer            │ kfalmer@gardening.com     │
│ 29          │ Representante Ventas  │ Julian          │ Bellinelli         │ jbellinelli@gardening.com │
│ 29          │ Representante Ventas  │ Mariko          │ Kishi              │ mkishi@gardening.com      │
└─────────────┴───────────────────────┴─────────────────┴────────────────────┴───────────────────────────┘
**/

-- Devuelve un listado con el nombre, apellidos y puesto de aquellos empleados que no sean representantes de ventas.
select nombre, apellido1||' '||apellido2 as apellidos, puesto from empleado where puesto != 'Representante Ventas';
/**
┌──────────┬────────────────┬───────────────────────┐
│  nombre  │   apellidos    │        puesto         │
├──────────┼────────────────┼───────────────────────┤
│ Marcos   │ Magaña Perez   │ Director General      │
│ Ruben    │ López Martinez │ Subdirector Marketing │
│ Alberto  │ Soria Carrasco │ Subdirector Ventas    │
│ Maria    │ Solís Jerez    │ Secretaria            │
│ Carlos   │ Soria Jimenez  │ Director Oficina      │
│ Emmanuel │ Magaña Perez   │ Director Oficina      │
│ Francois │ Fignon         │ Director Oficina      │
│ Michael  │ Bolton         │ Director Oficina      │
│ Hilary   │ Washington     │ Director Oficina      │
│ Nei      │ Nishikori      │ Director Oficina      │
│ Amy      │ Johnson        │ Director Oficina      │
│ Kevin    │ Fallmer        │ Director Oficina      │
└──────────┴────────────────┴───────────────────────┘
**/

-- Devuelve un listado con el nombre de los todos los clientes españoles.
select nombre_cliente from cliente where pais = 'Spain';
/**
┌────────────────────────────────┐
│         nombre_cliente         │
├────────────────────────────────┤
│ Lasas S.A.                     │
│ Beragua                        │
│ Club Golf Puerta del hierro    │
│ Naturagua                      │
│ DaraDistribuciones             │
│ Madrileña de riegos            │
│ Lasas S.A.                     │
│ Camunas Jardines S.L.          │
│ Dardena S.A.                   │
│ Jardin de Flores               │
│ Flores Marivi                  │
│ Flowers, S.A                   │
│ Naturajardin                   │
│ Golf S.A.                      │
│ Americh Golf Management SL     │
│ Aloha                          │
│ El Prat                        │
│ Sotogrande                     │
│ Vivero Humanes                 │
│ Fuenla City                    │
│ Jardines y Mansiones Cactus SL │
│ Jardinerías Matías SL          │
│ Agrojardin                     │
│ Top Campo                      │
│ Jardineria Sara                │
│ Campohermoso                   │
│ Flores S.L.                    │
└────────────────────────────────┘
**/

-- Devuelve un listado con los distintos estados por los que puede pasar un pedido.
select distinct estado from pedido;
/**
┌───────────┐
│  estado   │
├───────────┤
│ Entregado │
│ Rechazado │
│ Pendiente │
└───────────┘
**/

-- Devuelve un listado con el código de cliente de aquellos clientes que realizaron algún pago en 2008. Tenga en cuenta que deberá eliminar aquellos códigos de cliente que aparezcan repetidos.
select distinct codigo_cliente from pago where fecha_pago regexp '2008';
-- Otra opción: select distinct codigo_cliente from pago where strftime('%Y', fecha_pago) = '2008';
/**
┌────────────────┐
│ codigo_cliente │
├────────────────┤
│ 1              │
│ 13             │
│ 14             │
│ 26             │
└────────────────┘
**/

-- Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de entrega de los pedidos que no han sido entregados a tiempo.
select codigo_pedido, codigo_cliente, fecha_esperada, fecha_entrega from pedido where fecha_entrega > fecha_esperada;
/**
┌───────────────┬────────────────┬────────────────┬───────────────┐
│ codigo_pedido │ codigo_cliente │ fecha_esperada │ fecha_entrega │
├───────────────┼────────────────┼────────────────┼───────────────┤
│ 9             │ 1              │ 2008-12-27     │ 2008-12-28    │
│ 13            │ 7              │ 2009-01-14     │ 2009-01-15    │
│ 16            │ 7              │ 2009-01-07     │ 2009-01-15    │
│ 17            │ 7              │ 2009-01-09     │ 2009-01-11    │
│ 18            │ 9              │ 2009-01-06     │ 2009-01-07    │
│ 22            │ 9              │ 2009-01-11     │ 2009-01-13    │
│ 28            │ 3              │ 2009-02-17     │ 2009-02-20    │
│ 31            │ 13             │ 2008-09-30     │ 2008-10-04    │
│ 32            │ 4              │ 2007-01-19     │ 2007-01-27    │
│ 38            │ 19             │ 2009-03-06     │ 2009-03-07    │
│ 39            │ 19             │ 2009-03-07     │ 2009-03-09    │
│ 40            │ 19             │ 2009-03-10     │ 2009-03-13    │
│ 42            │ 19             │ 2009-03-23     │ 2009-03-27    │
│ 43            │ 23             │ 2009-03-26     │ 2009-03-28    │
│ 44            │ 23             │ 2009-03-27     │ 2009-03-30    │
│ 45            │ 23             │ 2009-03-04     │ 2009-03-07    │
│ 46            │ 23             │ 2009-03-04     │ 2009-03-05    │
│ 49            │ 26             │ 2008-07-22     │ 2008-07-30    │
│ 55            │ 14             │ 2009-01-10     │ 2009-01-11    │
│ 60            │ 1              │ 2008-12-27     │ 2008-12-28    │
│ 68            │ 3              │ 2009-02-17     │ 2009-02-20    │
│ 92            │ 27             │ 2009-04-30     │ 2009-05-03    │
│ 96            │ 35             │ 2008-04-12     │ 2008-04-13    │
│ 103           │ 30             │ 2009-01-20     │ 2009-01-24    │
│ 106           │ 30             │ 2009-05-15     │ 2009-05-20    │
│ 112           │ 36             │ 2009-04-06     │ 2009-05-07    │
│ 113           │ 36             │ 2008-11-09     │ 2009-01-09    │
│ 114           │ 36             │ 2009-01-29     │ 2009-01-31    │
│ 115           │ 36             │ 2009-01-26     │ 2009-02-27    │
│ 123           │ 30             │ 2009-01-20     │ 2009-01-24    │
│ 126           │ 30             │ 2009-05-15     │ 2009-05-20    │
│ 128           │ 38             │ 2008-12-10     │ 2008-12-29    │
└───────────────┴────────────────┴────────────────┴───────────────┘
**/

-- Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de entrega de los pedidos cuya fecha de entrega ha sido al menos dos días antes de la fecha esperada.
select codigo_pedido, codigo_cliente, fecha_esperada, fecha_entrega from pedido where fecha_entrega < date(fecha_esperada, '-2 days');
/**
┌───────────────┬────────────────┬────────────────┬───────────────┐
│ codigo_pedido │ codigo_cliente │ fecha_esperada │ fecha_entrega │
├───────────────┼────────────────┼────────────────┼───────────────┤
│ 24            │ 14             │ 2008-07-31     │ 2008-07-25    │
│ 30            │ 13             │ 2008-09-03     │ 2008-08-31    │
│ 36            │ 14             │ 2008-12-15     │ 2008-12-10    │
│ 53            │ 13             │ 2008-11-15     │ 2008-11-09    │
│ 89            │ 35             │ 2007-12-13     │ 2007-12-10    │
│ 93            │ 27             │ 2009-05-30     │ 2009-05-17    │
└───────────────┴────────────────┴────────────────┴───────────────┘
**/

-- Devuelve un listado de todos los pedidos que fueron rechazados en 2009.
select * from pedido where estado = 'Rechazado' and fecha_pedido regexp '2009';
-- Otra opción: select * from pedido where estado = 'Rechazado' and strftime('%Y', fecha_pedido) = '2009';
/**
┌───────────────┬──────────────┬────────────────┬───────────────┬───────────┬──────────────────────────────────────────────────────────────┬────────────────┐
│ codigo_pedido │ fecha_pedido │ fecha_esperada │ fecha_entrega │  estado   │                         comentarios                          │ codigo_cliente │
├───────────────┼──────────────┼────────────────┼───────────────┼───────────┼──────────────────────────────────────────────────────────────┼────────────────┤
│ 14            │ 2009-01-02   │ 2009-01-02     │               │ Rechazado │ mal pago                                                     │ 7              │
├───────────────┼──────────────┼────────────────┼───────────────┼───────────┼──────────────────────────────────────────────────────────────┼────────────────┤
│ 21            │ 2009-01-09   │ 2009-01-09     │ 2009-01-09    │ Rechazado │ mal pago                                                     │ 9              │
├───────────────┼──────────────┼────────────────┼───────────────┼───────────┼──────────────────────────────────────────────────────────────┼────────────────┤
│ 25            │ 2009-02-02   │ 2009-02-08     │               │ Rechazado │ El cliente carece de saldo en la cuenta asociada             │ 1              │
├───────────────┼──────────────┼────────────────┼───────────────┼───────────┼──────────────────────────────────────────────────────────────┼────────────────┤
│ 26            │ 2009-02-06   │ 2009-02-12     │               │ Rechazado │ El cliente anula la operacion para adquirir mas producto     │ 3              │
├───────────────┼──────────────┼────────────────┼───────────────┼───────────┼──────────────────────────────────────────────────────────────┼────────────────┤
│ 40            │ 2009-03-09   │ 2009-03-10     │ 2009-03-13    │ Rechazado │                                                              │ 19             │
├───────────────┼──────────────┼────────────────┼───────────────┼───────────┼──────────────────────────────────────────────────────────────┼────────────────┤
│ 46            │ 2009-04-03   │ 2009-03-04     │ 2009-03-05    │ Rechazado │                                                              │ 23             │
├───────────────┼──────────────┼────────────────┼───────────────┼───────────┼──────────────────────────────────────────────────────────────┼────────────────┤
│ 65            │ 2009-02-02   │ 2009-02-08     │               │ Rechazado │ El cliente carece de saldo en la cuenta asociada             │ 1              │
├───────────────┼──────────────┼────────────────┼───────────────┼───────────┼──────────────────────────────────────────────────────────────┼────────────────┤
│ 66            │ 2009-02-06   │ 2009-02-12     │               │ Rechazado │ El cliente anula la operacion para adquirir mas producto     │ 3              │
├───────────────┼──────────────┼────────────────┼───────────────┼───────────┼──────────────────────────────────────────────────────────────┼────────────────┤
│ 74            │ 2009-01-14   │ 2009-01-22     │               │ Rechazado │ El pedido no llego el dia que queria el cliente por fallo de │ 15             │
│               │              │                │               │           │ l transporte                                                 │                │
├───────────────┼──────────────┼────────────────┼───────────────┼───────────┼──────────────────────────────────────────────────────────────┼────────────────┤
│ 81            │ 2009-01-18   │ 2009-01-24     │               │ Rechazado │ Los producto estaban en mal estado                           │ 28             │
├───────────────┼──────────────┼────────────────┼───────────────┼───────────┼──────────────────────────────────────────────────────────────┼────────────────┤
│ 101           │ 2009-03-07   │ 2009-03-27     │               │ Rechazado │ El pedido fue rechazado por el cliente                       │ 16             │
├───────────────┼──────────────┼────────────────┼───────────────┼───────────┼──────────────────────────────────────────────────────────────┼────────────────┤
│ 105           │ 2009-02-14   │ 2009-02-20     │               │ Rechazado │ el producto ha sido rechazado por la pesima calidad          │ 30             │
├───────────────┼──────────────┼────────────────┼───────────────┼───────────┼──────────────────────────────────────────────────────────────┼────────────────┤
│ 120           │ 2009-03-07   │ 2009-03-27     │               │ Rechazado │ El pedido fue rechazado por el cliente                       │ 16             │
├───────────────┼──────────────┼────────────────┼───────────────┼───────────┼──────────────────────────────────────────────────────────────┼────────────────┤
│ 125           │ 2009-02-14   │ 2009-02-20     │               │ Rechazado │ el producto ha sido rechazado por la pesima calidad          │ 30             │
└───────────────┴──────────────┴────────────────┴───────────────┴───────────┴──────────────────────────────────────────────────────────────┴────────────────┘
**/

-- Devuelve un listado de todos los pedidos que han sido entregados en el mes de enero de cualquier año.
select * from pedido where estado = 'Entregado' and strftime('%m', fecha_entrega) = '01';
-- Otra opción: select * from pedido where estado = 'Entregado' and fecha_entrega regexp '-01-';
/**
┌───────────────┬──────────────┬────────────────┬───────────────┬───────────┬────────────────────────────────────────────────────────┬────────────────┐
│ codigo_pedido │ fecha_pedido │ fecha_esperada │ fecha_entrega │  estado   │                      comentarios                       │ codigo_cliente │
├───────────────┼──────────────┼────────────────┼───────────────┼───────────┼────────────────────────────────────────────────────────┼────────────────┤
│ 1             │ 2006-01-17   │ 2006-01-19     │ 2006-01-19    │ Entregado │ Pagado a plazos                                        │ 5              │
│ 13            │ 2009-01-12   │ 2009-01-14     │ 2009-01-15    │ Entregado │                                                        │ 7              │
│ 15            │ 2009-01-09   │ 2009-01-12     │ 2009-01-11    │ Entregado │                                                        │ 7              │
│ 16            │ 2009-01-06   │ 2009-01-07     │ 2009-01-15    │ Entregado │                                                        │ 7              │
│ 17            │ 2009-01-08   │ 2009-01-09     │ 2009-01-11    │ Entregado │ mal estado                                             │ 7              │
│ 18            │ 2009-01-05   │ 2009-01-06     │ 2009-01-07    │ Entregado │                                                        │ 9              │
│ 22            │ 2009-01-11   │ 2009-01-11     │ 2009-01-13    │ Entregado │                                                        │ 9              │
│ 32            │ 2007-01-07   │ 2007-01-19     │ 2007-01-27    │ Entregado │ Entrega tardia, el cliente puso reclamacion            │ 4              │
│ 55            │ 2008-12-10   │ 2009-01-10     │ 2009-01-11    │ Entregado │ Retrasado 1 dia por problemas de transporte            │ 14             │
│ 58            │ 2009-01-24   │ 2009-01-31     │ 2009-01-30    │ Entregado │ Todo correcto                                          │ 3              │
│ 64            │ 2009-01-24   │ 2009-01-31     │ 2009-01-30    │ Entregado │ Todo correcto                                          │ 1              │
│ 75            │ 2009-01-11   │ 2009-01-13     │ 2009-01-13    │ Entregado │ El pedido llego perfectamente                          │ 15             │
│ 79            │ 2009-01-12   │ 2009-01-13     │ 2009-01-13    │ Entregado │                                                        │ 28             │
│ 82            │ 2009-01-20   │ 2009-01-29     │ 2009-01-29    │ Entregado │ El pedido llego un poco mas tarde de la hora fijada    │ 28             │
│ 95            │ 2008-01-04   │ 2008-01-19     │ 2008-01-19    │ Entregado │                                                        │ 35             │
│ 100           │ 2009-01-10   │ 2009-01-15     │ 2009-01-15    │ Entregado │ El pedido llego perfectamente                          │ 16             │
│ 102           │ 2008-12-28   │ 2009-01-08     │ 2009-01-08    │ Entregado │ Pago pendiente                                         │ 16             │
│ 114           │ 2009-01-15   │ 2009-01-29     │ 2009-01-31    │ Entregado │ El envio llego dos dias más tarde debido al mal tiempo │ 36             │
│ 119           │ 2009-01-10   │ 2009-01-15     │ 2009-01-15    │ Entregado │ El pedido llego perfectamente                          │ 16             │
│ 121           │ 2008-12-28   │ 2009-01-08     │ 2009-01-08    │ Entregado │ Pago pendiente                                         │ 16             │
└───────────────┴──────────────┴────────────────┴───────────────┴───────────┴────────────────────────────────────────────────────────┴────────────────┘
**/

-- Devuelve un listado con todos los pagos que se realizaron en el año 2008 mediante Paypal. Ordene el resultado de mayor a menor.
select * from pago where forma_pago = 'Paypal' and strftime('%Y', fecha_pago) = '2008' order by total desc;
-- Otra opción: select * from pago where forma_pago = 'Paypal' and fecha_pago regexp '2008' order by total desc;
/**
No devuelve nada porque ningún pago con Paypal se realizó en 2008.
**/

-- Devuelve un listado con todas las formas de pago que aparecen en la tabla pago. Tenga en cuenta que no deben aparecer formas de pago repetidas.
select distinct forma_pago from pago;
/**
┌───────────────┐
│  forma_pago   │
├───────────────┤
│ PayPal        │
│ Transferencia │
│ Cheque        │
└───────────────┘
**/

-- Devuelve un listado con todos los productos que pertenecen a la gama Ornamentales y que tienen más de 100 unidades en stock. El listado deberá estar ordenado por su precio de venta, mostrando en primer lugar los de mayor precio.
select codigo_producto, gama, cantidad_en_stock, precio_venta from producto where gama = 'Ornamentales' and cantidad_en_stock > 100 order by precio_venta desc;
/**
┌─────────────────┬──────────────┬───────────────────┬──────────────┐
│ codigo_producto │     gama     │ cantidad_en_stock │ precio_venta │
├─────────────────┼──────────────┼───────────────────┼──────────────┤
│ OR-115          │ Ornamentales │ 120               │ 7            │
│ OR-116          │ Ornamentales │ 120               │ 7            │
│ OR-117          │ Ornamentales │ 120               │ 7            │
│ OR-118          │ Ornamentales │ 120               │ 7            │
│ OR-112          │ Ornamentales │ 120               │ 5            │
│ OR-113          │ Ornamentales │ 120               │ 5            │
│ OR-114          │ Ornamentales │ 120               │ 5            │
│ OR-119          │ Ornamentales │ 120               │ 5            │
│ OR-120          │ Ornamentales │ 120               │ 5            │
│ OR-121          │ Ornamentales │ 120               │ 5            │
│ OR-122          │ Ornamentales │ 120               │ 5            │
│ OR-123          │ Ornamentales │ 120               │ 5            │
│ OR-124          │ Ornamentales │ 120               │ 5            │
│ OR-125          │ Ornamentales │ 120               │ 5            │
│ OR-126          │ Ornamentales │ 120               │ 5            │
└─────────────────┴──────────────┴───────────────────┴──────────────┘
**/

-- Devuelve un listado con todos los clientes que sean de la ciudad de Madrid y cuyo representante de ventas tenga el código de empleado 11 o 30.
select codigo_cliente, ciudad, codigo_empleado_rep_ventas from cliente where ciudad = 'Madrid' and codigo_empleado_rep_ventas in(11, 30);
/**
┌────────────────┬────────┬────────────────────────────┐
│ codigo_cliente │ ciudad │ codigo_empleado_rep_ventas │
├────────────────┼────────┼────────────────────────────┤
│ 7              │ Madrid │ 11                         │
│ 8              │ Madrid │ 11                         │
│ 9              │ Madrid │ 11                         │
│ 10             │ Madrid │ 11                         │
│ 11             │ Madrid │ 11                         │
│ 15             │ Madrid │ 30                         │
│ 18             │ Madrid │ 30                         │
└────────────────┴────────┴────────────────────────────┘
**/


-- Consultas multitabla (Where para unir tablas)



-- Obtén un listado con el nombre de cada cliente y el nombre y apellido de su representante de ventas.
select c.nombre_cliente, e.nombre as nombre_rep_ventas , e.apellido1||' '||e.apellido2 as apellidos_rep_ventas from cliente c join empleado e on c.codigo_empleado_rep_ventas = e.codigo_empleado;
/**
┌────────────────────────────────┬───────────────────┬──────────────────────┐
│         nombre_cliente         │ nombre_rep_ventas │ apellidos_rep_ventas │
├────────────────────────────────┼───────────────────┼──────────────────────┤
│ GoldFish Garden                │ Walter Santiago   │ Sanchez Lopez        │
│ Gardening Associates           │ Walter Santiago   │ Sanchez Lopez        │
│ Gerudo Valley                  │ Lorena            │ Paxton               │
│ Tendo Garden                   │ Lorena            │ Paxton               │
│ Lasas S.A.                     │ Mariano           │ López Murcia         │
│ Beragua                        │ Emmanuel          │ Magaña Perez         │
│ Club Golf Puerta del hierro    │ Emmanuel          │ Magaña Perez         │
│ Naturagua                      │ Emmanuel          │ Magaña Perez         │
│ DaraDistribuciones             │ Emmanuel          │ Magaña Perez         │
│ Madrileña de riegos            │ Emmanuel          │ Magaña Perez         │
│ Lasas S.A.                     │ Mariano           │ López Murcia         │
│ Camunas Jardines S.L.          │ Mariano           │ López Murcia         │
│ Dardena S.A.                   │ Mariano           │ López Murcia         │
│ Jardin de Flores               │ Julian            │ Bellinelli           │
│ Flores Marivi                  │ Felipe            │ Rosas Marquez        │
│ Flowers, S.A                   │ Felipe            │ Rosas Marquez        │
│ Naturajardin                   │ Julian            │ Bellinelli           │
│ Golf S.A.                      │ José Manuel       │ Martinez De la Osa   │
│ Americh Golf Management SL     │ José Manuel       │ Martinez De la Osa   │
│ Aloha                          │ José Manuel       │ Martinez De la Osa   │
│ El Prat                        │ José Manuel       │ Martinez De la Osa   │
│ Sotogrande                     │ José Manuel       │ Martinez De la Osa   │
│ Vivero Humanes                 │ Julian            │ Bellinelli           │
│ Fuenla City                    │ Felipe            │ Rosas Marquez        │
│ Jardines y Mansiones Cactus SL │ Lucio             │ Campoamor Martín     │
│ Jardinerías Matías SL          │ Lucio             │ Campoamor Martín     │
│ Agrojardin                     │ Julian            │ Bellinelli           │
│ Top Campo                      │ Felipe            │ Rosas Marquez        │
│ Jardineria Sara                │ Felipe            │ Rosas Marquez        │
│ Campohermoso                   │ Julian            │ Bellinelli           │
│ france telecom                 │ Lionel            │ Narvaez              │
│ Musée du Louvre                │ Lionel            │ Narvaez              │
│ Tutifruti S.A                  │ Mariko            │ Kishi                │
│ Flores S.L.                    │ Michael           │ Bolton               │
│ The Magic Garden               │ Michael           │ Bolton               │
│ El Jardin Viviente S.L         │ Mariko            │ Kishi                │
└────────────────────────────────┴───────────────────┴──────────────────────┘
**/

-- Muestra el nombre de los clientes que hayan realizado pagos junto con el nombre de sus representantes de ventas.
select distinct p.codigo_cliente, c.nombre_cliente, e.nombre as nombre_rep_ventas from pago p join cliente c on p.codigo_cliente = c.codigo_cliente join empleado e on c.codigo_empleado_rep_ventas = e.codigo_empleado;
/**
┌────────────────┬────────────────────────────────┬───────────────────┐
│ codigo_cliente │         nombre_cliente         │ nombre_rep_ventas │
├────────────────┼────────────────────────────────┼───────────────────┤
│ 1              │ GoldFish Garden                │ Walter Santiago   │
│ 3              │ Gardening Associates           │ Walter Santiago   │
│ 4              │ Gerudo Valley                  │ Lorena            │
│ 5              │ Tendo Garden                   │ Lorena            │
│ 7              │ Beragua                        │ Emmanuel          │
│ 9              │ Naturagua                      │ Emmanuel          │
│ 13             │ Camunas Jardines S.L.          │ Mariano           │
│ 14             │ Dardena S.A.                   │ Mariano           │
│ 15             │ Jardin de Flores               │ Julian            │
│ 16             │ Flores Marivi                  │ Felipe            │
│ 19             │ Golf S.A.                      │ José Manuel       │
│ 23             │ Sotogrande                     │ José Manuel       │
│ 26             │ Jardines y Mansiones Cactus SL │ Lucio             │
│ 27             │ Jardinerías Matías SL          │ Lucio             │
│ 28             │ Agrojardin                     │ Julian            │
│ 30             │ Jardineria Sara                │ Felipe            │
│ 35             │ Tutifruti S.A                  │ Mariko            │
│ 38             │ El Jardin Viviente S.L         │ Mariko            │
└────────────────┴────────────────────────────────┴───────────────────┘
**/

-- Muestra el nombre de los clientes que no hayan realizado pagos junto con el nombre de sus representantes de ventas.
select distinct c.codigo_cliente, c.nombre_cliente, e.nombre as nombre_rep_ventas from cliente c join empleado e on c.codigo_empleado_rep_ventas = e.codigo_empleado left join pago p on c.codigo_cliente = p.codigo_cliente where p.codigo_cliente is null;
/**
┌────────────────┬─────────────────────────────┬───────────────────┐
│ codigo_cliente │       nombre_cliente        │ nombre_rep_ventas │
├────────────────┼─────────────────────────────┼───────────────────┤
│ 6              │ Lasas S.A.                  │ Mariano           │
│ 8              │ Club Golf Puerta del hierro │ Emmanuel          │
│ 10             │ DaraDistribuciones          │ Emmanuel          │
│ 11             │ Madrileña de riegos         │ Emmanuel          │
│ 12             │ Lasas S.A.                  │ Mariano           │
│ 17             │ Flowers, S.A                │ Felipe            │
│ 18             │ Naturajardin                │ Julian            │
│ 20             │ Americh Golf Management SL  │ José Manuel       │
│ 21             │ Aloha                       │ José Manuel       │
│ 22             │ El Prat                     │ José Manuel       │
│ 24             │ Vivero Humanes              │ Julian            │
│ 25             │ Fuenla City                 │ Felipe            │
│ 29             │ Top Campo                   │ Felipe            │
│ 31             │ Campohermoso                │ Julian            │
│ 32             │ france telecom              │ Lionel            │
│ 33             │ Musée du Louvre             │ Lionel            │
│ 36             │ Flores S.L.                 │ Michael           │
│ 37             │ The Magic Garden            │ Michael           │
└────────────────┴─────────────────────────────┴───────────────────┘
**/

-- Devuelve el nombre de los clientes que han hecho pagos y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.

select distinct c.nombre_cliente, e.nombre as nombre_rep_ventas, o.ciudad as ciudad_ofi_rep_ventas from cliente c join empleado e on c.codigo_empleado_rep_ventas = e.codigo_empleado join oficina o on e.codigo_oficina = o.codigo_oficina left join pago p on c.codigo_cliente = p.codigo_cliente where p.codigo_cliente not null;

/**
┌────────────────────────────────┬───────────────────┬───────────────────────┐
│         nombre_cliente         │ nombre_rep_ventas │ ciudad_ofi_rep_ventas │
├────────────────────────────────┼───────────────────┼───────────────────────┤
│ GoldFish Garden                │ Walter Santiago   │ San Francisco         │
│ Gardening Associates           │ Walter Santiago   │ San Francisco         │
│ Gerudo Valley                  │ Lorena            │ Boston                │
│ Tendo Garden                   │ Lorena            │ Boston                │
│ Beragua                        │ Emmanuel          │ Barcelona             │
│ Naturagua                      │ Emmanuel          │ Barcelona             │
│ Camunas Jardines S.L.          │ Mariano           │ Madrid                │
│ Dardena S.A.                   │ Mariano           │ Madrid                │
│ Jardin de Flores               │ Julian            │ Sydney                │
│ Flores Marivi                  │ Felipe            │ Talavera de la Reina  │
│ Golf S.A.                      │ José Manuel       │ Barcelona             │
│ Sotogrande                     │ José Manuel       │ Barcelona             │
│ Jardines y Mansiones Cactus SL │ Lucio             │ Madrid                │
│ Jardinerías Matías SL          │ Lucio             │ Madrid                │
│ Agrojardin                     │ Julian            │ Sydney                │
│ Jardineria Sara                │ Felipe            │ Talavera de la Reina  │
│ Tutifruti S.A                  │ Mariko            │ Sydney                │
│ El Jardin Viviente S.L         │ Mariko            │ Sydney                │
└────────────────────────────────┴───────────────────┴───────────────────────┘
**/

-- Otra opción:

select distinct p.codigo_cliente, c.nombre_cliente, e.nombre as nombre_rep_ventas, o.ciudad as ciudad_ofi_rep_ventas from pago p join cliente c on p.codigo_cliente = c.codigo_cliente join empleado e on c.codigo_empleado_rep_ventas = e.codigo_empleado join oficina o on e.codigo_oficina = o.codigo_oficina;

/**
┌────────────────┬────────────────────────────────┬───────────────────┬───────────────────────┐
│ codigo_cliente │         nombre_cliente         │ nombre_rep_ventas │ ciudad_ofi_rep_ventas │
├────────────────┼────────────────────────────────┼───────────────────┼───────────────────────┤
│ 1              │ GoldFish Garden                │ Walter Santiago   │ San Francisco         │
│ 3              │ Gardening Associates           │ Walter Santiago   │ San Francisco         │
│ 4              │ Gerudo Valley                  │ Lorena            │ Boston                │
│ 5              │ Tendo Garden                   │ Lorena            │ Boston                │
│ 7              │ Beragua                        │ Emmanuel          │ Barcelona             │
│ 9              │ Naturagua                      │ Emmanuel          │ Barcelona             │
│ 13             │ Camunas Jardines S.L.          │ Mariano           │ Madrid                │
│ 14             │ Dardena S.A.                   │ Mariano           │ Madrid                │
│ 15             │ Jardin de Flores               │ Julian            │ Sydney                │
│ 16             │ Flores Marivi                  │ Felipe            │ Talavera de la Reina  │
│ 19             │ Golf S.A.                      │ José Manuel       │ Barcelona             │
│ 23             │ Sotogrande                     │ José Manuel       │ Barcelona             │
│ 26             │ Jardines y Mansiones Cactus SL │ Lucio             │ Madrid                │
│ 27             │ Jardinerías Matías SL          │ Lucio             │ Madrid                │
│ 28             │ Agrojardin                     │ Julian            │ Sydney                │
│ 30             │ Jardineria Sara                │ Felipe            │ Talavera de la Reina  │
│ 35             │ Tutifruti S.A                  │ Mariko            │ Sydney                │
│ 38             │ El Jardin Viviente S.L         │ Mariko            │ Sydney                │
└────────────────┴────────────────────────────────┴───────────────────┴───────────────────────┘
**/

-- Devuelve el nombre de los clientes que no hayan hecho pagos y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.
select distinct c.nombre_cliente, e.nombre as nombre_rep_ventas, o.ciudad as ciudad_ofi_rep_ventas from cliente c join empleado e on c.codigo_empleado_rep_ventas = e.codigo_empleado join oficina o on e.codigo_oficina = o.codigo_oficina left join pago p on c.codigo_cliente = p.codigo_cliente where p.codigo_cliente is null;
/**
┌─────────────────────────────┬───────────────────┬───────────────────────┐
│       nombre_cliente        │ nombre_rep_ventas │ ciudad_ofi_rep_ventas │
├─────────────────────────────┼───────────────────┼───────────────────────┤
│ Lasas S.A.                  │ Mariano           │ Madrid                │
│ Club Golf Puerta del hierro │ Emmanuel          │ Barcelona             │
│ DaraDistribuciones          │ Emmanuel          │ Barcelona             │
│ Madrileña de riegos         │ Emmanuel          │ Barcelona             │
│ Flowers, S.A                │ Felipe            │ Talavera de la Reina  │
│ Naturajardin                │ Julian            │ Sydney                │
│ Americh Golf Management SL  │ José Manuel       │ Barcelona             │
│ Aloha                       │ José Manuel       │ Barcelona             │
│ El Prat                     │ José Manuel       │ Barcelona             │
│ Vivero Humanes              │ Julian            │ Sydney                │
│ Fuenla City                 │ Felipe            │ Talavera de la Reina  │
│ Top Campo                   │ Felipe            │ Talavera de la Reina  │
│ Campohermoso                │ Julian            │ Sydney                │
│ france telecom              │ Lionel            │ Paris                 │
│ Musée du Louvre             │ Lionel            │ Paris                 │
│ Flores S.L.                 │ Michael           │ San Francisco         │
│ The Magic Garden            │ Michael           │ San Francisco         │
└─────────────────────────────┴───────────────────┴───────────────────────┘
**/

-- Lista la dirección de las oficinas que tengan clientes en Fuenlabrada.
select distinct o.linea_direccion1||'  '||o.linea_direccion2 as direccion_oficina from oficina o left join empleado e on o.codigo_oficina = e.codigo_oficina left join cliente c on e.codigo_empleado = c.codigo_empleado_rep_ventas where c.ciudad = 'Fuenlabrada';
/**
┌───────────────────────────────────────────┐
│             direccion_oficina             │
├───────────────────────────────────────────┤
│ Bulevar Indalecio Prieto, 32              │
│ 5-11 Wentworth Avenue  Floor #2           │
│ Francisco Aguirre, 32  5º piso (exterior) │
└───────────────────────────────────────────┘
**/

-- Devuelve el nombre de los clientes y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.

/**

**/

-- Devuelve un listado con el nombre de los empleados junto con el nombre de sus jefes.

/**

**/

-- Devuelve un listado que muestre el nombre de cada empleados, el nombre de su jefe y el nombre del jefe de sus jefe.

/**

**/

-- Devuelve el nombre de los clientes a los que no se les ha entregado a tiempo un pedido.

/**

**/

-- Devuelve un listado de las diferentes gamas de producto que ha comprado cada cliente.

/**

**/


-- Consultas multitabla (inner join)



-- Devuelve un listado que muestre solamente los clientes que no han realizado ningún pago.

/**

**/

-- Devuelve un listado que muestre solamente los clientes que no han realizado ningún pedido.

/**

**/

-- Devuelve un listado que muestre los clientes que no han realizado ningún pago y los que no han realizado ningún pedido.

/**

**/

-- Devuelve un listado que muestre solamente los empleados que no tienen una oficina asociada.

/**

**/

-- Devuelve un listado que muestre solamente los empleados que no tienen un cliente asociado.

/**

**/

-- Devuelve un listado que muestre solamente los empleados que no tienen un cliente asociado junto con los datos de la oficina donde trabajan.

/**

**/

-- Devuelve un listado que muestre los empleados que no tienen una oficina asociada y los que no tienen un cliente asociado.

/**

**/

-- Devuelve un listado de los productos que nunca han aparecido en un pedido.

/**

**/

-- Devuelve un listado de los productos que nunca han aparecido en un pedido. El resultado debe mostrar el nombre, la descripción y la imagen del producto.

/**

**/

-- Devuelve las oficinas donde no trabajan ninguno de los empleados que hayan sido los representantes de ventas de algún cliente que haya realizado la compra de algún producto de la gama Frutales.

/**

**/

-- Devuelve un listado con los clientes que han realizado algún pedido pero no han realizado ningún pago.

/**

**/

-- Devuelve un listado con los datos de los empleados que no tienen clientes asociados y el nombre de su jefe asociado.

/**

**/



-- Consultas resumen (count,avg,...)





-- ¿Cuántos empleados hay en la compañía?

/**

**/

-- ¿Cuántos clientes tiene cada país?

/**

**/

-- ¿Cuál fue el pago medio en 2009?

/**

**/

-- ¿Cuántos pedidos hay en cada estado? Ordena el resultado de forma descendente por el número de pedidos.
/**

**/


-- Calcula el precio de venta del producto más caro y más barato en una misma consulta.

/**

**/

-- Calcula el número de clientes que tiene la empresa.

/**

**/

-- ¿Cuántos clientes existen con domicilio en la ciudad de Madrid?

/**

**/

-- ¿Calcula cuántos clientes tiene cada una de las ciudades que empiezan por M?

/**

**/

-- Devuelve el nombre de los representantes de ventas y el número de clientes al que atiende cada uno.

/**

**/

-- Calcula el número de clientes que no tiene asignado representante de ventas.

/**

**/

-- Calcula la fecha del primer y último pago realizado por cada uno de los clientes. El listado deberá mostrar el nombre y los apellidos de cada cliente.

/**

**/

-- Calcula el número de productos diferentes que hay en cada uno de los pedidos.

/**

**/

-- Calcula la suma de la cantidad total de todos los productos que aparecen en cada uno de los pedidos.

/**

**/

-- Devuelve un listado de los 20 productos más vendidos y el número total de unidades que se han vendido de cada uno. El listado deberá estar ordenado por el número total de unidades vendidas.

/**

**/

-- La facturación que ha tenido la empresa en toda la historia, indicando la base imponible, el IGIC y el total facturado. La base imponible se calcula sumando el coste del producto por el número de unidades vendidas de la tabla detalle_pedido. El IGIC es el 7 % de la base imponible, y el total la suma de los dos campos anteriores.

/**

**/

-- La misma información que en la pregunta anterior, pero agrupada por código de producto.

/**

**/

-- La misma información que en la pregunta anterior, pero agrupada por código de producto filtrada por los códigos que empiecen por OR.

/**

**/

-- Lista las ventas totales de los productos que hayan facturado más de __3000 euros__. Se mostrará el nombre, unidades vendidas, total facturado y total facturado con impuestos (7% IGIC).

/**

**/

-- Muestre la suma total de todos los pagos que se realizaron para cada uno de los años que aparecen en la tabla pagos.

/**

**/




-- Subconsultas en SQL





-- Devuelve el nombre del cliente con mayor límite de crédito.

/**

**/

-- Devuelve el nombre del producto que tenga el precio de venta más caro.

/**

**/

-- Devuelve el nombre del producto del que se han vendido más unidades. (Tenga en cuenta que tendrá que calcular cuál es el número total de unidades que se han vendido de cada producto a partir de los datos de la tabla detalle_pedido)

/**

**/

-- Los clientes cuyo límite de crédito sea mayor que los pagos que haya realizado. (Sin utilizar INNER JOIN).

/**

**/

-- Devuelve el producto que más unidades tiene en stock.

/**

**/

-- Devuelve el producto que menos unidades tiene en stock.

/**

**/

-- Devuelve el nombre, los apellidos y el email de los empleados que están a cargo de Alberto Soria.

/**

**/

-- Devuelve el nombre del cliente con mayor límite de crédito.

/**

**/

-- Devuelve el nombre del producto que tenga el precio de venta más caro.

/**

**/

-- Devuelve el producto que menos unidades tiene en stock.

/**

**/

-- Devuelve el nombre, apellido1 y cargo de los empleados que no representen a ningún cliente.

/**

**/

-- Devuelve un listado que muestre solamente los clientes que no han realizado ningún pago.

/**

**/

-- Devuelve un listado que muestre solamente los clientes que sí han realizado algún pago.

/**

**/

-- Devuelve un listado de los productos que nunca han aparecido en un pedido.

/**

**/

-- Devuelve el nombre, apellidos, puesto y teléfono de la oficina de aquellos empleados que no sean representante de ventas de ningún cliente.

/**

**/

-- Devuelve las oficinas donde no trabajan ninguno de los empleados que hayan sido los representantes de ventas de algún cliente que haya realizado la compra de algún producto de la gama Frutales.

/**

**/

-- Devuelve un listado con los clientes que han realizado algún pedido pero no han realizado ningún pago.

/**

**/

-- Devuelve un listado que muestre solamente los clientes que no han realizado ningún pago.

/**

**/

-- Devuelve un listado que muestre solamente los clientes que sí han realizado algún pago.

/**

**/

-- Devuelve un listado de los productos que nunca han aparecido en un pedido.

/**

**/

-- Devuelve un listado de los productos que han aparecido en un pedido alguna vez.

/**

**/




-- Consultas variadas en SQL





-- Devuelve el listado de clientes indicando el nombre del cliente y cuántos pedidos ha realizado. Tenga en cuenta que pueden existir clientes que no han realizado ningún pedido.

/**

**/

-- Devuelve un listado con los nombres de los clientes y el total pagado por cada uno de ellos. Tenga en cuenta que pueden existir clientes que no han realizado ningún pago.

/**

**/

-- Devuelve el nombre de los clientes que hayan hecho pedidos en 2008 ordenados alfabéticamente de menor a mayor.

/**

**/

-- Devuelve el nombre del cliente, el nombre y primer apellido de su representante de ventas y el número de teléfono de la oficina del representante de ventas, de aquellos clientes que no hayan realizado ningún pago.

/**

**/

-- Devuelve el listado de clientes donde aparezca el nombre del cliente, el nombre y primer apellido de su representante de ventas y la ciudad donde está su oficina.

/**

**/

-- Devuelve el nombre, apellidos, puesto y teléfono de la oficina de aquellos empleados que no sean representante de ventas de ningún cliente.

/**

**/

-- Devuelve un listado indicando todas las ciudades donde hay oficinas y el número de empleados que tiene.

/**

**/

