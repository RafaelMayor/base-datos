-- Rafael Martín Mayor.


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
select puesto, nombre, apellido1||' '||apellido2 as apellidos, email from empleado where codigo_jefe is null;
/**
┌──────────────────┬────────┬──────────────┬──────────────────────┐
│      puesto      │ nombre │  apellidos   │        email         │
├──────────────────┼────────┼──────────────┼──────────────────────┤
│ Director General │ Marcos │ Magaña Perez │ marcos@jardineria.es │
└──────────────────┴────────┴──────────────┴──────────────────────┘
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
select c.nombre_cliente, e.nombre as nombre_rep_ventas, o.ciudad as ciudad_ofi_rep_ventas from cliente c join empleado e on c.codigo_empleado_rep_ventas = e.codigo_empleado join oficina o on e.codigo_oficina = o.codigo_oficina;
/**
┌────────────────────────────────┬───────────────────┬───────────────────────┐
│         nombre_cliente         │ nombre_rep_ventas │ ciudad_ofi_rep_ventas │
├────────────────────────────────┼───────────────────┼───────────────────────┤
│ GoldFish Garden                │ Walter Santiago   │ San Francisco         │
│ Gardening Associates           │ Walter Santiago   │ San Francisco         │
│ Gerudo Valley                  │ Lorena            │ Boston                │
│ Tendo Garden                   │ Lorena            │ Boston                │
│ Lasas S.A.                     │ Mariano           │ Madrid                │
│ Beragua                        │ Emmanuel          │ Barcelona             │
│ Club Golf Puerta del hierro    │ Emmanuel          │ Barcelona             │
│ Naturagua                      │ Emmanuel          │ Barcelona             │
│ DaraDistribuciones             │ Emmanuel          │ Barcelona             │
│ Madrileña de riegos            │ Emmanuel          │ Barcelona             │
│ Lasas S.A.                     │ Mariano           │ Madrid                │
│ Camunas Jardines S.L.          │ Mariano           │ Madrid                │
│ Dardena S.A.                   │ Mariano           │ Madrid                │
│ Jardin de Flores               │ Julian            │ Sydney                │
│ Flores Marivi                  │ Felipe            │ Talavera de la Reina  │
│ Flowers, S.A                   │ Felipe            │ Talavera de la Reina  │
│ Naturajardin                   │ Julian            │ Sydney                │
│ Golf S.A.                      │ José Manuel       │ Barcelona             │
│ Americh Golf Management SL     │ José Manuel       │ Barcelona             │
│ Aloha                          │ José Manuel       │ Barcelona             │
│ El Prat                        │ José Manuel       │ Barcelona             │
│ Sotogrande                     │ José Manuel       │ Barcelona             │
│ Vivero Humanes                 │ Julian            │ Sydney                │
│ Fuenla City                    │ Felipe            │ Talavera de la Reina  │
│ Jardines y Mansiones Cactus SL │ Lucio             │ Madrid                │
│ Jardinerías Matías SL          │ Lucio             │ Madrid                │
│ Agrojardin                     │ Julian            │ Sydney                │
│ Top Campo                      │ Felipe            │ Talavera de la Reina  │
│ Jardineria Sara                │ Felipe            │ Talavera de la Reina  │
│ Campohermoso                   │ Julian            │ Sydney                │
│ france telecom                 │ Lionel            │ Paris                 │
│ Musée du Louvre                │ Lionel            │ Paris                 │
│ Tutifruti S.A                  │ Mariko            │ Sydney                │
│ Flores S.L.                    │ Michael           │ San Francisco         │
│ The Magic Garden               │ Michael           │ San Francisco         │
│ El Jardin Viviente S.L         │ Mariko            │ Sydney                │
└────────────────────────────────┴───────────────────┴───────────────────────┘
**/

-- Devuelve un listado con el nombre de los empleados junto con el nombre de sus jefes.
select e.nombre as nombre_empleado, j.nombre as nombre_jefe from empleado e join empleado j on e.codigo_jefe = j.codigo_empleado;
/**
┌─────────────────┬─────────────┐
│ nombre_empleado │ nombre_jefe │
├─────────────────┼─────────────┤
│ Ruben           │ Marcos      │
│ Alberto         │ Ruben       │
│ Maria           │ Ruben       │
│ Felipe          │ Alberto     │
│ Juan Carlos     │ Alberto     │
│ Carlos          │ Alberto     │
│ Mariano         │ Carlos      │
│ Lucio           │ Carlos      │
│ Hilario         │ Carlos      │
│ Emmanuel        │ Alberto     │
│ José Manuel     │ Emmanuel    │
│ David           │ Emmanuel    │
│ Oscar           │ Emmanuel    │
│ Francois        │ Alberto     │
│ Lionel          │ Francois    │
│ Laurent         │ Francois    │
│ Michael         │ Alberto     │
│ Walter Santiago │ Michael     │
│ Hilary          │ Alberto     │
│ Marcus          │ Hilary      │
│ Lorena          │ Hilary      │
│ Nei             │ Alberto     │
│ Narumi          │ Nei         │
│ Takuma          │ Nei         │
│ Amy             │ Alberto     │
│ Larry           │ Amy         │
│ John            │ Amy         │
│ Kevin           │ Alberto     │
│ Julian          │ Kevin       │
│ Mariko          │ Kevin       │
└─────────────────┴─────────────┘
**/

-- Devuelve un listado que muestre el nombre de cada empleados, el nombre de su jefe y el nombre del jefe de sus jefe.
select e.nombre as nombre_empleado, j.nombre as nombre_jefe, jj.nombre as nombre_jefe_del_jefe from empleado e join empleado j on e.codigo_jefe = j.codigo_empleado left join empleado jj ON j.codigo_jefe = jj.codigo_empleado;
/**
┌─────────────────┬─────────────┬──────────────────────┐
│ nombre_empleado │ nombre_jefe │ nombre_jefe_del_jefe │
├─────────────────┼─────────────┼──────────────────────┤
│ Ruben           │ Marcos      │                      │
│ Alberto         │ Ruben       │ Marcos               │
│ Maria           │ Ruben       │ Marcos               │
│ Felipe          │ Alberto     │ Ruben                │
│ Juan Carlos     │ Alberto     │ Ruben                │
│ Carlos          │ Alberto     │ Ruben                │
│ Mariano         │ Carlos      │ Alberto              │
│ Lucio           │ Carlos      │ Alberto              │
│ Hilario         │ Carlos      │ Alberto              │
│ Emmanuel        │ Alberto     │ Ruben                │
│ José Manuel     │ Emmanuel    │ Alberto              │
│ David           │ Emmanuel    │ Alberto              │
│ Oscar           │ Emmanuel    │ Alberto              │
│ Francois        │ Alberto     │ Ruben                │
│ Lionel          │ Francois    │ Alberto              │
│ Laurent         │ Francois    │ Alberto              │
│ Michael         │ Alberto     │ Ruben                │
│ Walter Santiago │ Michael     │ Alberto              │
│ Hilary          │ Alberto     │ Ruben                │
│ Marcus          │ Hilary      │ Alberto              │
│ Lorena          │ Hilary      │ Alberto              │
│ Nei             │ Alberto     │ Ruben                │
│ Narumi          │ Nei         │ Alberto              │
│ Takuma          │ Nei         │ Alberto              │
│ Amy             │ Alberto     │ Ruben                │
│ Larry           │ Amy         │ Alberto              │
│ John            │ Amy         │ Alberto              │
│ Kevin           │ Alberto     │ Ruben                │
│ Julian          │ Kevin       │ Alberto              │
│ Mariko          │ Kevin       │ Alberto              │
└─────────────────┴─────────────┴──────────────────────┘
**/

-- Devuelve el nombre de los clientes a los que no se les ha entregado a tiempo un pedido.
select distinct c.nombre_cliente from cliente c join pedido p on c.codigo_cliente = p.codigo_cliente where p.fecha_entrega > p.fecha_esperada;
/**
┌────────────────────────────────┐
│         nombre_cliente         │
├────────────────────────────────┤
│ GoldFish Garden                │
│ Beragua                        │
│ Naturagua                      │
│ Gardening Associates           │
│ Camunas Jardines S.L.          │
│ Gerudo Valley                  │
│ Golf S.A.                      │
│ Sotogrande                     │
│ Jardines y Mansiones Cactus SL │
│ Dardena S.A.                   │
│ Jardinerías Matías SL          │
│ Tutifruti S.A                  │
│ Jardineria Sara                │
│ Flores S.L.                    │
│ El Jardin Viviente S.L         │
└────────────────────────────────┘
**/

-- Devuelve un listado de las diferentes gamas de producto que ha comprado cada cliente.
select c.codigo_cliente, c.nombre_cliente, p.gama from cliente c left join pedido pe on c.codigo_cliente = pe.codigo_cliente left join detalle_pedido dp on pe.codigo_pedido = dp.codigo_pedido left join producto p on dp.codigo_producto = p.codigo_producto group by c.codigo_cliente, p.gama;
/**
┌────────────────┬────────────────────────────────┬──────────────┐
│ codigo_cliente │         nombre_cliente         │     gama     │
├────────────────┼────────────────────────────────┼──────────────┤
│ 1              │ GoldFish Garden                │ Aromáticas   │
│ 1              │ GoldFish Garden                │ Frutales     │
│ 1              │ GoldFish Garden                │ Ornamentales │
│ 3              │ Gardening Associates           │ Frutales     │
│ 3              │ Gardening Associates           │ Ornamentales │
│ 4              │ Gerudo Valley                  │ Frutales     │
│ 4              │ Gerudo Valley                  │ Herramientas │
│ 4              │ Gerudo Valley                  │ Ornamentales │
│ 5              │ Tendo Garden                   │ Aromáticas   │
│ 5              │ Tendo Garden                   │ Frutales     │
│ 5              │ Tendo Garden                   │ Ornamentales │
│ 6              │ Lasas S.A.                     │              │
│ 7              │ Beragua                        │ Frutales     │
│ 7              │ Beragua                        │ Herramientas │
│ 7              │ Beragua                        │ Ornamentales │
│ 8              │ Club Golf Puerta del hierro    │              │
│ 9              │ Naturagua                      │ Frutales     │
│ 9              │ Naturagua                      │ Herramientas │
│ 9              │ Naturagua                      │ Ornamentales │
│ 10             │ DaraDistribuciones             │              │
│ 11             │ Madrileña de riegos            │              │
│ 12             │ Lasas S.A.                     │              │
│ 13             │ Camunas Jardines S.L.          │ Aromáticas   │
│ 13             │ Camunas Jardines S.L.          │ Frutales     │
│ 13             │ Camunas Jardines S.L.          │ Ornamentales │
│ 14             │ Dardena S.A.                   │ Frutales     │
│ 14             │ Dardena S.A.                   │ Herramientas │
│ 14             │ Dardena S.A.                   │ Ornamentales │
│ 15             │ Jardin de Flores               │ Aromáticas   │
│ 15             │ Jardin de Flores               │ Frutales     │
│ 15             │ Jardin de Flores               │ Herramientas │
│ 15             │ Jardin de Flores               │ Ornamentales │
│ 16             │ Flores Marivi                  │ Aromáticas   │
│ 16             │ Flores Marivi                  │ Frutales     │
│ 16             │ Flores Marivi                  │ Herramientas │
│ 16             │ Flores Marivi                  │ Ornamentales │
│ 17             │ Flowers, S.A                   │              │
│ 18             │ Naturajardin                   │              │
│ 19             │ Golf S.A.                      │ Aromáticas   │
│ 19             │ Golf S.A.                      │ Herramientas │
│ 20             │ Americh Golf Management SL     │              │
│ 21             │ Aloha                          │              │
│ 22             │ El Prat                        │              │
│ 23             │ Sotogrande                     │ Aromáticas   │
│ 23             │ Sotogrande                     │ Frutales     │
│ 24             │ Vivero Humanes                 │              │
│ 25             │ Fuenla City                    │              │
│ 26             │ Jardines y Mansiones Cactus SL │ Frutales     │
│ 26             │ Jardines y Mansiones Cactus SL │ Ornamentales │
│ 27             │ Jardinerías Matías SL          │ Aromáticas   │
│ 27             │ Jardinerías Matías SL          │ Frutales     │
│ 27             │ Jardinerías Matías SL          │ Herramientas │
│ 28             │ Agrojardin                     │ Frutales     │
│ 28             │ Agrojardin                     │ Ornamentales │
│ 29             │ Top Campo                      │              │
│ 30             │ Jardineria Sara                │ Aromáticas   │
│ 30             │ Jardineria Sara                │ Frutales     │
│ 30             │ Jardineria Sara                │ Herramientas │
│ 30             │ Jardineria Sara                │ Ornamentales │
│ 31             │ Campohermoso                   │              │
│ 32             │ france telecom                 │              │
│ 33             │ Musée du Louvre                │              │
│ 35             │ Tutifruti S.A                  │ Frutales     │
│ 35             │ Tutifruti S.A                  │ Ornamentales │
│ 36             │ Flores S.L.                    │ Frutales     │
│ 37             │ The Magic Garden               │              │
│ 38             │ El Jardin Viviente S.L         │ Aromáticas   │
│ 38             │ El Jardin Viviente S.L         │ Frutales     │
│ 38             │ El Jardin Viviente S.L         │ Herramientas │
│ 38             │ El Jardin Viviente S.L         │ Ornamentales │
└────────────────┴────────────────────────────────┴──────────────┘
**/


-- Consultas multitabla (inner join)



-- Devuelve un listado que muestre solamente los clientes que no han realizado ningún pago.
select c.codigo_cliente, c.nombre_cliente from cliente c left join pago p on c.codigo_cliente = p.codigo_cliente where p.codigo_cliente is null;
/**
┌────────────────┬─────────────────────────────┐
│ codigo_cliente │       nombre_cliente        │
├────────────────┼─────────────────────────────┤
│ 6              │ Lasas S.A.                  │
│ 8              │ Club Golf Puerta del hierro │
│ 10             │ DaraDistribuciones          │
│ 11             │ Madrileña de riegos         │
│ 12             │ Lasas S.A.                  │
│ 17             │ Flowers, S.A                │
│ 18             │ Naturajardin                │
│ 20             │ Americh Golf Management SL  │
│ 21             │ Aloha                       │
│ 22             │ El Prat                     │
│ 24             │ Vivero Humanes              │
│ 25             │ Fuenla City                 │
│ 29             │ Top Campo                   │
│ 31             │ Campohermoso                │
│ 32             │ france telecom              │
│ 33             │ Musée du Louvre             │
│ 36             │ Flores S.L.                 │
│ 37             │ The Magic Garden            │
└────────────────┴─────────────────────────────┘
**/

-- Devuelve un listado que muestre solamente los clientes que no han realizado ningún pedido.
select c.codigo_cliente, c.nombre_cliente from cliente c left join pedido p on c.codigo_cliente = p.codigo_cliente where p.codigo_cliente is null;
/**
┌────────────────┬─────────────────────────────┐
│ codigo_cliente │       nombre_cliente        │
├────────────────┼─────────────────────────────┤
│ 6              │ Lasas S.A.                  │
│ 8              │ Club Golf Puerta del hierro │
│ 10             │ DaraDistribuciones          │
│ 11             │ Madrileña de riegos         │
│ 12             │ Lasas S.A.                  │
│ 17             │ Flowers, S.A                │
│ 18             │ Naturajardin                │
│ 20             │ Americh Golf Management SL  │
│ 21             │ Aloha                       │
│ 22             │ El Prat                     │
│ 24             │ Vivero Humanes              │
│ 25             │ Fuenla City                 │
│ 29             │ Top Campo                   │
│ 31             │ Campohermoso                │
│ 32             │ france telecom              │
│ 33             │ Musée du Louvre             │
│ 37             │ The Magic Garden            │
└────────────────┴─────────────────────────────┘
**/

-- Devuelve un listado que muestre los clientes que no han realizado ningún pago y los que no han realizado ningún pedido.
select distinct c.codigo_cliente, c.nombre_cliente from cliente c left join pago pa on c.codigo_cliente = pa.codigo_cliente left join pedido pe on c.codigo_cliente = pe.codigo_cliente where pa.codigo_cliente is null or pe.codigo_pedido is null;
/**
┌────────────────┬─────────────────────────────┐
│ codigo_cliente │       nombre_cliente        │
├────────────────┼─────────────────────────────┤
│ 6              │ Lasas S.A.                  │
│ 8              │ Club Golf Puerta del hierro │
│ 10             │ DaraDistribuciones          │
│ 11             │ Madrileña de riegos         │
│ 12             │ Lasas S.A.                  │
│ 17             │ Flowers, S.A                │
│ 18             │ Naturajardin                │
│ 20             │ Americh Golf Management SL  │
│ 21             │ Aloha                       │
│ 22             │ El Prat                     │
│ 24             │ Vivero Humanes              │
│ 25             │ Fuenla City                 │
│ 29             │ Top Campo                   │
│ 31             │ Campohermoso                │
│ 32             │ france telecom              │
│ 33             │ Musée du Louvre             │
│ 36             │ Flores S.L.                 │
│ 37             │ The Magic Garden            │
└────────────────┴─────────────────────────────┘
**/

-- Devuelve un listado que muestre solamente los empleados que no tienen una oficina asociada.
select e.codigo_empleado, e.nombre from empleado e left join oficina o on e.codigo_oficina = o.codigo_oficina where o.codigo_oficina is null;
/**
No devuelve nada porque todos los empleados tienen una oficina asociada.
**/

-- Devuelve un listado que muestre solamente los empleados que no tienen un cliente asociado.
select e.codigo_empleado, e.nombre from empleado e left join cliente c on e.codigo_empleado = c.codigo_empleado_rep_ventas where c.codigo_cliente is null;
/**
┌─────────────────┬─────────────┐
│ codigo_empleado │   nombre    │
├─────────────────┼─────────────┤
│ 1               │ Marcos      │
│ 2               │ Ruben       │
│ 3               │ Alberto     │
│ 4               │ Maria       │
│ 6               │ Juan Carlos │
│ 7               │ Carlos      │
│ 10              │ Hilario     │
│ 13              │ David       │
│ 14              │ Oscar       │
│ 15              │ Francois    │
│ 17              │ Laurent     │
│ 20              │ Hilary      │
│ 21              │ Marcus      │
│ 23              │ Nei         │
│ 24              │ Narumi      │
│ 25              │ Takuma      │
│ 26              │ Amy         │
│ 27              │ Larry       │
│ 28              │ John        │
│ 29              │ Kevin       │
└─────────────────┴─────────────┘
**/

-- Devuelve un listado que muestre solamente los empleados que no tienen un cliente asociado junto con los datos de la oficina donde trabajan.
SELECT e.*, o.* FROM empleado e LEFT JOIN cliente c ON e.codigo_empleado = c.codigo_empleado_rep_ventas LEFT JOIN oficina o ON e.codigo_oficina = o.codigo_oficina WHERE c.codigo_cliente IS NULL;
/**
┌─────────────────┬─────────────┬────────────┬───────────┬───────────┬───────────────────────────┬────────────────┬─────────────┬───────────────────────┬────────────────┬──────────────────────┬────────────┬───────────────────┬───────────────┬─────────────────┬──────────────────────────────┬─────────────────────┐
│ codigo_empleado │   nombre    │ apellido1  │ apellido2 │ extension │           email           │ codigo_oficina │ codigo_jefe │        puesto         │ codigo_oficina │        ciudad        │    pais    │      region       │ codigo_postal │    telefono     │       linea_direccion1       │  linea_direccion2   │
├─────────────────┼─────────────┼────────────┼───────────┼───────────┼───────────────────────────┼────────────────┼─────────────┼───────────────────────┼────────────────┼──────────────────────┼────────────┼───────────────────┼───────────────┼─────────────────┼──────────────────────────────┼─────────────────────┤
│ 1               │ Marcos      │ Magaña     │ Perez     │ 3897      │ marcos@jardineria.es      │ TAL-ES         │             │ Director General      │ TAL-ES         │ Talavera de la Reina │ España     │ Castilla-LaMancha │ 45632         │ +34 925 867231  │ Francisco Aguirre, 32        │ 5º piso (exterior)  │
│ 2               │ Ruben       │ López      │ Martinez  │ 2899      │ rlopez@jardineria.es      │ TAL-ES         │ 1           │ Subdirector Marketing │ TAL-ES         │ Talavera de la Reina │ España     │ Castilla-LaMancha │ 45632         │ +34 925 867231  │ Francisco Aguirre, 32        │ 5º piso (exterior)  │
│ 3               │ Alberto     │ Soria      │ Carrasco  │ 2837      │ asoria@jardineria.es      │ TAL-ES         │ 2           │ Subdirector Ventas    │ TAL-ES         │ Talavera de la Reina │ España     │ Castilla-LaMancha │ 45632         │ +34 925 867231  │ Francisco Aguirre, 32        │ 5º piso (exterior)  │
│ 4               │ Maria       │ Solís      │ Jerez     │ 2847      │ msolis@jardineria.es      │ TAL-ES         │ 2           │ Secretaria            │ TAL-ES         │ Talavera de la Reina │ España     │ Castilla-LaMancha │ 45632         │ +34 925 867231  │ Francisco Aguirre, 32        │ 5º piso (exterior)  │
│ 6               │ Juan Carlos │ Ortiz      │ Serrano   │ 2845      │ cortiz@jardineria.es      │ TAL-ES         │ 3           │ Representante Ventas  │ TAL-ES         │ Talavera de la Reina │ España     │ Castilla-LaMancha │ 45632         │ +34 925 867231  │ Francisco Aguirre, 32        │ 5º piso (exterior)  │
│ 7               │ Carlos      │ Soria      │ Jimenez   │ 2444      │ csoria@jardineria.es      │ MAD-ES         │ 3           │ Director Oficina      │ MAD-ES         │ Madrid               │ España     │ Madrid            │ 28032         │ +34 91 7514487  │ Bulevar Indalecio Prieto, 32 │                     │
│ 10              │ Hilario     │ Rodriguez  │ Huertas   │ 2444      │ hrodriguez@jardineria.es  │ MAD-ES         │ 7           │ Representante Ventas  │ MAD-ES         │ Madrid               │ España     │ Madrid            │ 28032         │ +34 91 7514487  │ Bulevar Indalecio Prieto, 32 │                     │
│ 13              │ David       │ Palma      │ Aceituno  │ 2519      │ dpalma@jardineria.es      │ BCN-ES         │ 11          │ Representante Ventas  │ BCN-ES         │ Barcelona            │ España     │ Barcelona         │ 08019         │ +34 93 3561182  │ Avenida Diagonal, 38         │ 3A escalera Derecha │
│ 14              │ Oscar       │ Palma      │ Aceituno  │ 2519      │ opalma@jardineria.es      │ BCN-ES         │ 11          │ Representante Ventas  │ BCN-ES         │ Barcelona            │ España     │ Barcelona         │ 08019         │ +34 93 3561182  │ Avenida Diagonal, 38         │ 3A escalera Derecha │
│ 15              │ Francois    │ Fignon     │           │ 9981      │ ffignon@gardening.com     │ PAR-FR         │ 3           │ Director Oficina      │ PAR-FR         │ Paris                │ Francia    │ EMEA              │ 75017         │ +33 14 723 4404 │ 29 Rue Jouffroy d'abbans     │                     │
│ 17              │ Laurent     │ Serra      │           │ 9982      │ lserra@gardening.com      │ PAR-FR         │ 15          │ Representante Ventas  │ PAR-FR         │ Paris                │ Francia    │ EMEA              │ 75017         │ +33 14 723 4404 │ 29 Rue Jouffroy d'abbans     │                     │
│ 20              │ Hilary      │ Washington │           │ 7565      │ hwashington@gardening.com │ BOS-USA        │ 3           │ Director Oficina      │ BOS-USA        │ Boston               │ EEUU       │ MA                │ 02108         │ +1 215 837 0825 │ 1550 Court Place             │ Suite 102           │
│ 21              │ Marcus      │ Paxton     │           │ 7565      │ mpaxton@gardening.com     │ BOS-USA        │ 20          │ Representante Ventas  │ BOS-USA        │ Boston               │ EEUU       │ MA                │ 02108         │ +1 215 837 0825 │ 1550 Court Place             │ Suite 102           │
│ 23              │ Nei         │ Nishikori  │           │ 8734      │ nnishikori@gardening.com  │ TOK-JP         │ 3           │ Director Oficina      │ TOK-JP         │ Tokyo                │ Japón      │ Chiyoda-Ku        │ 102-8578      │ +81 33 224 5000 │ 4-1 Kioicho                  │                     │
│ 24              │ Narumi      │ Riko       │           │ 8734      │ nriko@gardening.com       │ TOK-JP         │ 23          │ Representante Ventas  │ TOK-JP         │ Tokyo                │ Japón      │ Chiyoda-Ku        │ 102-8578      │ +81 33 224 5000 │ 4-1 Kioicho                  │                     │
│ 25              │ Takuma      │ Nomura     │           │ 8735      │ tnomura@gardening.com     │ TOK-JP         │ 23          │ Representante Ventas  │ TOK-JP         │ Tokyo                │ Japón      │ Chiyoda-Ku        │ 102-8578      │ +81 33 224 5000 │ 4-1 Kioicho                  │                     │
│ 26              │ Amy         │ Johnson    │           │ 3321      │ ajohnson@gardening.com    │ LON-UK         │ 3           │ Director Oficina      │ LON-UK         │ Londres              │ Inglaterra │ EMEA              │ EC2N 1HN      │ +44 20 78772041 │ 52 Old Broad Street          │ Ground Floor        │
│ 27              │ Larry       │ Westfalls  │           │ 3322      │ lwestfalls@gardening.com  │ LON-UK         │ 26          │ Representante Ventas  │ LON-UK         │ Londres              │ Inglaterra │ EMEA              │ EC2N 1HN      │ +44 20 78772041 │ 52 Old Broad Street          │ Ground Floor        │
│ 28              │ John        │ Walton     │           │ 3322      │ jwalton@gardening.com     │ LON-UK         │ 26          │ Representante Ventas  │ LON-UK         │ Londres              │ Inglaterra │ EMEA              │ EC2N 1HN      │ +44 20 78772041 │ 52 Old Broad Street          │ Ground Floor        │
│ 29              │ Kevin       │ Fallmer    │           │ 3210      │ kfalmer@gardening.com     │ SYD-AU         │ 3           │ Director Oficina      │ SYD-AU         │ Sydney               │ Australia  │ APAC              │ NSW 2010      │ +61 2 9264 2451 │ 5-11 Wentworth Avenue        │ Floor #2            │
└─────────────────┴─────────────┴────────────┴───────────┴───────────┴───────────────────────────┴────────────────┴─────────────┴───────────────────────┴────────────────┴──────────────────────┴────────────┴───────────────────┴───────────────┴─────────────────┴──────────────────────────────┴─────────────────────┘
**/

-- Devuelve un listado que muestre los empleados que no tienen una oficina asociada y los que no tienen un cliente asociado.
SELECT e.codigo_empleado, e.nombre, o.codigo_oficina, c.codigo_cliente FROM empleado e LEFT JOIN oficina o ON e.codigo_oficina = o.codigo_oficina LEFT JOIN cliente c ON e.codigo_empleado = c.codigo_empleado_rep_ventas WHERE o.codigo_oficina IS NULL OR c.codigo_cliente IS NULL;
/**
┌─────────────────┬─────────────┬────────────────┬────────────────┐
│ codigo_empleado │   nombre    │ codigo_oficina │ codigo_cliente │
├─────────────────┼─────────────┼────────────────┼────────────────┤
│ 1               │ Marcos      │ TAL-ES         │                │
│ 2               │ Ruben       │ TAL-ES         │                │
│ 3               │ Alberto     │ TAL-ES         │                │
│ 4               │ Maria       │ TAL-ES         │                │
│ 6               │ Juan Carlos │ TAL-ES         │                │
│ 7               │ Carlos      │ MAD-ES         │                │
│ 10              │ Hilario     │ MAD-ES         │                │
│ 13              │ David       │ BCN-ES         │                │
│ 14              │ Oscar       │ BCN-ES         │                │
│ 15              │ Francois    │ PAR-FR         │                │
│ 17              │ Laurent     │ PAR-FR         │                │
│ 20              │ Hilary      │ BOS-USA        │                │
│ 21              │ Marcus      │ BOS-USA        │                │
│ 23              │ Nei         │ TOK-JP         │                │
│ 24              │ Narumi      │ TOK-JP         │                │
│ 25              │ Takuma      │ TOK-JP         │                │
│ 26              │ Amy         │ LON-UK         │                │
│ 27              │ Larry       │ LON-UK         │                │
│ 28              │ John        │ LON-UK         │                │
│ 29              │ Kevin       │ SYD-AU         │                │
└─────────────────┴─────────────┴────────────────┴────────────────┘
**/

-- Devuelve un listado de los productos que nunca han aparecido en un pedido.
SELECT distinct p.nombre FROM producto p LEFT JOIN detalle_pedido dp ON p.codigo_producto = dp.codigo_producto WHERE dp.codigo_producto IS NULL;
/**
┌─────────────────────────────────────────────────────────────┐
│                           nombre                            │
├─────────────────────────────────────────────────────────────┤
│ Olea-Olivos                                                 │
│ Calamondin Mini                                             │
│ Camelia Blanco, Chrysler Rojo, Soraya Naranja,              │
│ Landora Amarillo, Rose Gaujard bicolor blanco-rojo          │
│ Kordes Perfect bicolor rojo-amarillo, Roundelay rojo fuerte │
│ Albaricoquero Corbato                                       │
│ Albaricoquero Moniqui                                       │
│ Albaricoquero Kurrot                                        │
│ Cerezo Burlat                                               │
│ Cerezo Picota                                               │
│ Ciruelo R. Claudia Verde                                    │
│ Ciruelo Golden Japan                                        │
│ Ciruelo Claudia Negra                                       │
│ Higuera Verdal                                              │
│ Higuera Breva                                               │
│ Melocotonero Spring Crest                                   │
│ Melocotonero Federica                                       │
│ Parra Uva de Mesa                                           │
│ Mandarino -Plantón joven                                    │
│ Peral Castell                                               │
│ Peral Williams                                              │
│ Peral Conference                                            │
│ Olivo Cipresino                                             │
│ Albaricoquero                                               │
│ Cerezo                                                      │
│ Ciruelo                                                     │
│ Granado                                                     │
│ Higuera                                                     │
│ Manzano                                                     │
│ Melocotonero                                                │
│ Membrillero                                                 │
│ Arbustos Mix Maceta                                         │
│ Mimosa Injerto CLASICA Dealbata                             │
│ Mimosa Semilla Bayleyana                                    │
│ Mimosa Semilla Espectabilis                                 │
│ Mimosa Semilla Longifolia                                   │
│ Mimosa Semilla Floribunda 4 estaciones                      │
│ Abelia Floribunda                                           │
│ Callistemom (Mix)                                           │
│ Corylus Avellana \"Contorta\"                               │
│ Escallonia (Mix)                                            │
│ Evonimus Emerald Gayeti                                     │
│ Evonimus Pulchellus                                         │
│ Hibiscus Syriacus  \"Helene\" -Blanco-C.rojo                │
│ Hibiscus Syriacus \"Pink Giant\" Rosa                       │
│ Lonicera Nitida \"Maigrum\"                                 │
│ Prunus pisardii                                             │
│ Weigelia \"Bristol Ruby\"                                   │
│ Leptospermum formado PIRAMIDE                               │
│ Leptospermum COPA                                           │
│ Nerium oleander-CALIDAD \"GARDEN\"                          │
│ Nerium Oleander Arbusto GRANDE                              │
│ Nerium oleander COPA  Calibre 6/8                           │
│ ROSAL TREPADOR                                              │
│ Solanum Jazminoide                                          │
│ Wisteria Sinensis  azul, rosa, blanca                       │
│ Wisteria Sinensis INJERTADAS DECÃ“                          │
│ Bougamvillea Sanderiana Tutor                               │
│ Bougamvillea Sanderiana Espaldera                           │
│ Bougamvillea Sanderiana, 3 tut. piramide                    │
│ Expositor Árboles clima mediterráneo                        │
│ Expositor Árboles borde del mar                             │
│ Brachychiton Acerifolius                                    │
│ Cassia Corimbosa                                            │
│ Cassia Corimbosa                                            │
│ Chitalpa Summer Bells                                       │
│ Erytrina Kafra                                              │
│ Eucalyptus Citriodora                                       │
│ Eucalyptus Ficifolia                                        │
│ Hibiscus Syriacus  Var. Injertadas 1 Tallo                  │
│ Lagunaria Patersonii                                        │
│ Lagunaria Patersonii                                        │
│ Morus Alba                                                  │
│ Platanus Acerifolia                                         │
│ Salix Babylonica  Pendula                                   │
│ Tamarix  Ramosissima Pink Cascade                           │
│ Tecoma Stands                                               │
│ Tecoma Stands                                               │
│ Tipuana Tipu                                                │
│ Pleioblastus distichus-Bambú enano                          │
│ Sasa palmata                                                │
│ Phylostachys aurea                                          │
│ Phylostachys Bambusa Spectabilis                            │
│ Phylostachys biseti                                         │
│ Pseudosasa japonica (Metake)                                │
│ Pseudosasa japonica (Metake)                                │
│ Cedrus Deodara \"Feeling Blue\" Novedad                     │
│ Juniperus chinensis \"Blue Alps\"                           │
│ Juniperus Chinensis Stricta                                 │
│ Juniperus squamata \"Blue Star\"                            │
│ Juniperus x media Phitzeriana verde                         │
│ Bismarckia Nobilis                                          │
│ Brahea Armata                                               │
│ Brahea Edulis                                               │
│ Butia Capitata                                              │
│ Chamaerops Humilis                                          │
│ Chamaerops Humilis \"Cerifera\"                             │
│ Chrysalidocarpus Lutescens -ARECA                           │
│ Cordyline Australis -DRACAENA                               │
│ Cycas Revoluta                                              │
│ Dracaena Drago                                              │
│ Livistonia Decipiens                                        │
│ Rhaphis Excelsa                                             │
│ Sabal Minor                                                 │
│ Trachycarpus Fortunei                                       │
│ Washingtonia Robusta                                        │
│ Zamia Furfuracaea                                           │
└─────────────────────────────────────────────────────────────┘
**/

-- Devuelve un listado de los productos que nunca han aparecido en un pedido. El resultado debe mostrar el nombre, la descripción y la imagen del producto.
SELECT p.nombre, p.descripcion, g.imagen FROM producto p LEFT JOIN detalle_pedido dp ON p.codigo_producto = dp.codigo_producto LEFT JOIN gama_producto g ON p.gama = g.gama WHERE dp.codigo_producto IS NULL;
/**
┌─────────────────────────────────────────────────────────────┬──────────────────────────────────────────────────────────────┬────────┐
│                           nombre                            │                         descripcion                          │ imagen │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Olea-Olivos                                                 │ Existen dos hipótesis sobre el origen del olivo, una que pos │        │
│                                                             │ tula que proviene de las costas de Siria, Líbano e Israel y  │        │
│                                                             │ otra que considera que lo considera originario de Asia menor │        │
│                                                             │ . La llegada a Europa probablemente tuvo lugar de mano de lo │        │
│                                                             │ s Fenicios, en transito por Chipre, Creta, e Islas del Mar E │        │
│                                                             │ geo, pasando a Grecia y más tarde a Italia. Los primeros ind │        │
│                                                             │ icios de la presencia del olivo en las costas mediterráneas  │        │
│                                                             │ españolas coinciden con el dominio romano, aunque fueron pos │        │
│                                                             │ teriormente los árabes los que impulsaron su cultivo en Anda │        │
│                                                             │ lucía, convirtiendo a España en el primer país productor de  │        │
│                                                             │ aceite de oliva a nivel mundial.                             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Calamondin Mini                                             │ Se trata de un pequeño arbolito de copa densa, con tendencia │        │
│                                                             │  a la verticalidad, inerme o con cortas espinas. Sus hojas s │        │
│                                                             │ on pequeñas, elípticas de 5-10 cm de longitud, con los pecío │        │
│                                                             │ los estrechamente alados.Posee 1 o 2 flores en situación axi │        │
│                                                             │ lar, al final de las ramillas.Sus frutos son muy pequeños (3 │        │
│                                                             │ -3,5 cm de diámetro), con pocas semillas, esféricos u ovales │        │
│                                                             │ , con la zona apical aplanada; corteza de color naranja-roji │        │
│                                                             │ zo, muy fina y fácilmente separable de la pulpa, que es dulc │        │
│                                                             │ e, ácida y comestible..                                      │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Camelia Blanco, Chrysler Rojo, Soraya Naranja,              │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Landora Amarillo, Rose Gaujard bicolor blanco-rojo          │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Kordes Perfect bicolor rojo-amarillo, Roundelay rojo fuerte │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Albaricoquero Corbato                                       │ árbol que puede pasar de los 6 m de altura, en la región med │        │
│                                                             │ iterránea con ramas formando una copa redondeada. La corteza │        │
│                                                             │  del tronco es pardo-violácea, agrietada; las ramas son roji │        │
│                                                             │ zas y extendidas cuando jóvenes y las ramas secundarias son  │        │
│                                                             │ cortas, divergentes y escasas. Las yemas latentes son frecue │        │
│                                                             │ ntes especialmente sobre las ramas viejas.                   │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Albaricoquero Moniqui                                       │ árbol que puede pasar de los 6 m de altura, en la región med │        │
│                                                             │ iterránea con ramas formando una copa redondeada. La corteza │        │
│                                                             │  del tronco es pardo-violácea, agrietada; las ramas son roji │        │
│                                                             │ zas y extendidas cuando jóvenes y las ramas secundarias son  │        │
│                                                             │ cortas, divergentes y escasas. Las yemas latentes son frecue │        │
│                                                             │ ntes especialmente sobre las ramas viejas.                   │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Albaricoquero Kurrot                                        │ árbol que puede pasar de los 6 m de altura, en la región med │        │
│                                                             │ iterránea con ramas formando una copa redondeada. La corteza │        │
│                                                             │  del tronco es pardo-violácea, agrietada; las ramas son roji │        │
│                                                             │ zas y extendidas cuando jóvenes y las ramas secundarias son  │        │
│                                                             │ cortas, divergentes y escasas. Las yemas latentes son frecue │        │
│                                                             │ ntes especialmente sobre las ramas viejas.                   │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Cerezo Burlat                                               │ Las principales especies de cerezo cultivadas en el mundo so │        │
│                                                             │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │        │
│                                                             │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │        │
│                                                             │  son naturales del sureste de Europa y oeste de Asia. El cer │        │
│                                                             │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │        │
│                                                             │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │        │
│                                                             │ evado por los pájaros y las migraciones humanas. Fue uno de  │        │
│                                                             │ los frutales más apreciados por los griegos y con el Imperio │        │
│                                                             │  Romano se extendió a regiones muy diversas. En la actualida │        │
│                                                             │ d, el cerezo se encuentra difundido por numerosas regiones y │        │
│                                                             │  países del mundo con clima templado                         │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Cerezo Picota                                               │ Las principales especies de cerezo cultivadas en el mundo so │        │
│                                                             │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │        │
│                                                             │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │        │
│                                                             │  son naturales del sureste de Europa y oeste de Asia. El cer │        │
│                                                             │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │        │
│                                                             │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │        │
│                                                             │ evado por los pájaros y las migraciones humanas. Fue uno de  │        │
│                                                             │ los frutales más apreciados por los griegos y con el Imperio │        │
│                                                             │  Romano se extendió a regiones muy diversas. En la actualida │        │
│                                                             │ d, el cerezo se encuentra difundido por numerosas regiones y │        │
│                                                             │  países del mundo con clima templado                         │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Ciruelo R. Claudia Verde                                    │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │        │
│                                                             │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │        │
│                                                             │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │        │
│                                                             │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │        │
│                                                             │ osas                                                         │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Ciruelo Golden Japan                                        │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │        │
│                                                             │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │        │
│                                                             │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │        │
│                                                             │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │        │
│                                                             │ osas                                                         │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Ciruelo Claudia Negra                                       │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │        │
│                                                             │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │        │
│                                                             │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │        │
│                                                             │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │        │
│                                                             │ osas                                                         │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Higuera Verdal                                              │ La higuera (Ficus carica L.) es un árbol típico de secano en │        │
│                                                             │  los países mediterráneos. Su rusticidad y su fácil multipli │        │
│                                                             │ cación hacen de la higuera un frutal muy apropiado para el c │        │
│                                                             │ ultivo extensivo.. Siempre ha sido considerado como árbol qu │        │
│                                                             │ e no requiere cuidado alguno una vez plantado y arraigado, l │        │
│                                                             │ imitándose el hombre a recoger de él los frutos cuando madur │        │
│                                                             │ an, unos para consumo en fresco y otros para conserva. Las ú │        │
│                                                             │ nicas higueras con cuidados culturales esmerados, en muchas  │        │
│                                                             │ comarcas, son las brevales, por el interés económico de su p │        │
│                                                             │ rimera cosecha, la de brevas.                                │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Higuera Breva                                               │ La higuera (Ficus carica L.) es un árbol típico de secano en │        │
│                                                             │  los países mediterráneos. Su rusticidad y su fácil multipli │        │
│                                                             │ cación hacen de la higuera un frutal muy apropiado para el c │        │
│                                                             │ ultivo extensivo.. Siempre ha sido considerado como árbol qu │        │
│                                                             │ e no requiere cuidado alguno una vez plantado y arraigado, l │        │
│                                                             │ imitándose el hombre a recoger de él los frutos cuando madur │        │
│                                                             │ an, unos para consumo en fresco y otros para conserva. Las ú │        │
│                                                             │ nicas higueras con cuidados culturales esmerados, en muchas  │        │
│                                                             │ comarcas, son las brevales, por el interés económico de su p │        │
│                                                             │ rimera cosecha, la de brevas.                                │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Melocotonero Spring Crest                                   │ Árbol caducifolio de porte bajo con corteza lisa, de color c │        │
│                                                             │ eniciento. Sus hojas son alargadas con el margen ligeramente │        │
│                                                             │  aserrado, de color verde brillante, algo más claras por el  │        │
│                                                             │ envés. El melocotonero está muy arraigado en la cultura asiá │        │
│                                                             │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │        │
│                                                             │ id japonés, nació del interior de un enorme melocotón que fl │        │
│                                                             │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │        │
│                                                             │ onfiere longevidad al ser humano, ya que formaba parte de la │        │
│                                                             │  dieta de sus dioses inmortales.                             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Melocotonero Federica                                       │ Árbol caducifolio de porte bajo con corteza lisa, de color c │        │
│                                                             │ eniciento. Sus hojas son alargadas con el margen ligeramente │        │
│                                                             │  aserrado, de color verde brillante, algo más claras por el  │        │
│                                                             │ envés. El melocotonero está muy arraigado en la cultura asiá │        │
│                                                             │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │        │
│                                                             │ id japonés, nació del interior de un enorme melocotón que fl │        │
│                                                             │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │        │
│                                                             │ onfiere longevidad al ser humano, ya que formaba parte de la │        │
│                                                             │  dieta de sus dioses inmortales.                             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Parra Uva de Mesa                                           │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Mandarino -Plantón joven                                    │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Peral Castell                                               │ Árbol piramidal, redondeado en su juventud, luego oval, que  │        │
│                                                             │ llega hasta 20 metros de altura y por término medio vive 65  │        │
│                                                             │ años.Tronco alto, grueso, de corteza agrietada, gris, de la  │        │
│                                                             │ cual se destacan con frecuencia placas lenticulares.Las rama │        │
│                                                             │ s se insertan formando ángulo agudo con el tronco (45º), de  │        │
│                                                             │ corteza lisa, primero verde y luego gris-violácea, con numer │        │
│                                                             │ osas lenticelas.                                             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Peral Williams                                              │ Árbol piramidal, redondeado en su juventud, luego oval, que  │        │
│                                                             │ llega hasta 20 metros de altura y por término medio vive 65  │        │
│                                                             │ años.Tronco alto, grueso, de corteza agrietada, gris, de la  │        │
│                                                             │ cual se destacan con frecuencia placas lenticulares.Las rama │        │
│                                                             │ s se insertan formando ángulo agudo con el tronco (45º), de  │        │
│                                                             │ corteza lisa, primero verde y luego gris-violácea, con numer │        │
│                                                             │ osas lenticelas.                                             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Peral Conference                                            │ Árbol piramidal, redondeado en su juventud, luego oval, que  │        │
│                                                             │ llega hasta 20 metros de altura y por término medio vive 65  │        │
│                                                             │ años.Tronco alto, grueso, de corteza agrietada, gris, de la  │        │
│                                                             │ cual se destacan con frecuencia placas lenticulares.Las rama │        │
│                                                             │ s se insertan formando ángulo agudo con el tronco (45º), de  │        │
│                                                             │ corteza lisa, primero verde y luego gris-violácea, con numer │        │
│                                                             │ osas lenticelas.                                             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Olivo Cipresino                                             │ Existen dos hipótesis sobre el origen del olivo, una que pos │        │
│                                                             │ tula que proviene de las costas de Siria, Líbano e Israel y  │        │
│                                                             │ otra que considera que lo considera originario de Asia menor │        │
│                                                             │ . La llegada a Europa probablemente tuvo lugar de mano de lo │        │
│                                                             │ s Fenicios, en transito por Chipre, Creta, e Islas del Mar E │        │
│                                                             │ geo, pasando a Grecia y más tarde a Italia. Los primeros ind │        │
│                                                             │ icios de la presencia del olivo en las costas mediterráneas  │        │
│                                                             │ españolas coinciden con el dominio romano, aunque fueron pos │        │
│                                                             │ teriormente los árabes los que impulsaron su cultivo en Anda │        │
│                                                             │ lucía, convirtiendo a España en el primer país productor de  │        │
│                                                             │ aceite de oliva a nivel mundial.                             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Albaricoquero                                               │ árbol que puede pasar de los 6 m de altura, en la región med │        │
│                                                             │ iterránea con ramas formando una copa redondeada. La corteza │        │
│                                                             │  del tronco es pardo-violácea, agrietada; las ramas son roji │        │
│                                                             │ zas y extendidas cuando jóvenes y las ramas secundarias son  │        │
│                                                             │ cortas, divergentes y escasas. Las yemas latentes son frecue │        │
│                                                             │ ntes especialmente sobre las ramas viejas.                   │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Albaricoquero                                               │ árbol que puede pasar de los 6 m de altura, en la región med │        │
│                                                             │ iterránea con ramas formando una copa redondeada. La corteza │        │
│                                                             │  del tronco es pardo-violácea, agrietada; las ramas son roji │        │
│                                                             │ zas y extendidas cuando jóvenes y las ramas secundarias son  │        │
│                                                             │ cortas, divergentes y escasas. Las yemas latentes son frecue │        │
│                                                             │ ntes especialmente sobre las ramas viejas.                   │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Albaricoquero                                               │ árbol que puede pasar de los 6 m de altura, en la región med │        │
│                                                             │ iterránea con ramas formando una copa redondeada. La corteza │        │
│                                                             │  del tronco es pardo-violácea, agrietada; las ramas son roji │        │
│                                                             │ zas y extendidas cuando jóvenes y las ramas secundarias son  │        │
│                                                             │ cortas, divergentes y escasas. Las yemas latentes son frecue │        │
│                                                             │ ntes especialmente sobre las ramas viejas.                   │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Cerezo                                                      │ Las principales especies de cerezo cultivadas en el mundo so │        │
│                                                             │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │        │
│                                                             │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │        │
│                                                             │  son naturales del sureste de Europa y oeste de Asia. El cer │        │
│                                                             │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │        │
│                                                             │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │        │
│                                                             │ evado por los pájaros y las migraciones humanas. Fue uno de  │        │
│                                                             │ los frutales más apreciados por los griegos y con el Imperio │        │
│                                                             │  Romano se extendió a regiones muy diversas. En la actualida │        │
│                                                             │ d, el cerezo se encuentra difundido por numerosas regiones y │        │
│                                                             │  países del mundo con clima templado                         │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Cerezo                                                      │ Las principales especies de cerezo cultivadas en el mundo so │        │
│                                                             │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │        │
│                                                             │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │        │
│                                                             │  son naturales del sureste de Europa y oeste de Asia. El cer │        │
│                                                             │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │        │
│                                                             │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │        │
│                                                             │ evado por los pájaros y las migraciones humanas. Fue uno de  │        │
│                                                             │ los frutales más apreciados por los griegos y con el Imperio │        │
│                                                             │  Romano se extendió a regiones muy diversas. En la actualida │        │
│                                                             │ d, el cerezo se encuentra difundido por numerosas regiones y │        │
│                                                             │  países del mundo con clima templado                         │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Cerezo                                                      │ Las principales especies de cerezo cultivadas en el mundo so │        │
│                                                             │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │        │
│                                                             │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │        │
│                                                             │  son naturales del sureste de Europa y oeste de Asia. El cer │        │
│                                                             │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │        │
│                                                             │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │        │
│                                                             │ evado por los pájaros y las migraciones humanas. Fue uno de  │        │
│                                                             │ los frutales más apreciados por los griegos y con el Imperio │        │
│                                                             │  Romano se extendió a regiones muy diversas. En la actualida │        │
│                                                             │ d, el cerezo se encuentra difundido por numerosas regiones y │        │
│                                                             │  países del mundo con clima templado                         │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Ciruelo                                                     │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │        │
│                                                             │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │        │
│                                                             │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │        │
│                                                             │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │        │
│                                                             │ osas                                                         │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Granado                                                     │ pequeño árbol caducifolio, a veces con porte arbustivo, de 3 │        │
│                                                             │  a 6 m de altura, con el tronco retorcido. Madera dura y cor │        │
│                                                             │ teza escamosa de color grisáceo. Las ramitas jóvenes son más │        │
│                                                             │  o menos cuadrangulares o angostas y de cuatro alas, posteri │        │
│                                                             │ ormente se vuelven redondas con corteza de color café grisác │        │
│                                                             │ eo, la mayoría de las ramas, pero especialmente las pequeñas │        │
│                                                             │  ramitas axilares, son en forma de espina o terminan en una  │        │
│                                                             │ espina aguda; la copa es extendida.                          │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Granado                                                     │ pequeño árbol caducifolio, a veces con porte arbustivo, de 3 │        │
│                                                             │  a 6 m de altura, con el tronco retorcido. Madera dura y cor │        │
│                                                             │ teza escamosa de color grisáceo. Las ramitas jóvenes son más │        │
│                                                             │  o menos cuadrangulares o angostas y de cuatro alas, posteri │        │
│                                                             │ ormente se vuelven redondas con corteza de color café grisác │        │
│                                                             │ eo, la mayoría de las ramas, pero especialmente las pequeñas │        │
│                                                             │  ramitas axilares, son en forma de espina o terminan en una  │        │
│                                                             │ espina aguda; la copa es extendida.                          │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Granado                                                     │ pequeño árbol caducifolio, a veces con porte arbustivo, de 3 │        │
│                                                             │  a 6 m de altura, con el tronco retorcido. Madera dura y cor │        │
│                                                             │ teza escamosa de color grisáceo. Las ramitas jóvenes son más │        │
│                                                             │  o menos cuadrangulares o angostas y de cuatro alas, posteri │        │
│                                                             │ ormente se vuelven redondas con corteza de color café grisác │        │
│                                                             │ eo, la mayoría de las ramas, pero especialmente las pequeñas │        │
│                                                             │  ramitas axilares, son en forma de espina o terminan en una  │        │
│                                                             │ espina aguda; la copa es extendida.                          │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Higuera                                                     │ La higuera (Ficus carica L.) es un árbol típico de secano en │        │
│                                                             │  los países mediterráneos. Su rusticidad y su fácil multipli │        │
│                                                             │ cación hacen de la higuera un frutal muy apropiado para el c │        │
│                                                             │ ultivo extensivo.. Siempre ha sido considerado como árbol qu │        │
│                                                             │ e no requiere cuidado alguno una vez plantado y arraigado, l │        │
│                                                             │ imitándose el hombre a recoger de él los frutos cuando madur │        │
│                                                             │ an, unos para consumo en fresco y otros para conserva. Las ú │        │
│                                                             │ nicas higueras con cuidados culturales esmerados, en muchas  │        │
│                                                             │ comarcas, son las brevales, por el interés económico de su p │        │
│                                                             │ rimera cosecha, la de brevas.                                │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Manzano                                                     │ alcanza como máximo 10 m. de altura y tiene una copa globosa │        │
│                                                             │ . Tronco derecho que normalmente alcanza de 2 a 2,5 m. de al │        │
│                                                             │ tura, con corteza cubierta de lenticelas, lisa, adherida, de │        │
│                                                             │  color ceniciento verdoso sobre los ramos y escamosa y gris  │        │
│                                                             │ parda sobre las partes viejas del árbol. Tiene una vida de u │        │
│                                                             │ nos 60-80 años. Las ramas se insertan en ángulo abierto sobr │        │
│                                                             │ e el tallo, de color verde oscuro, a veces tendiendo a negru │        │
│                                                             │ zco o violáceo. Los brotes jóvenes terminan con frecuencia e │        │
│                                                             │ n una espina                                                 │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Melocotonero                                                │ Árbol caducifolio de porte bajo con corteza lisa, de color c │        │
│                                                             │ eniciento. Sus hojas son alargadas con el margen ligeramente │        │
│                                                             │  aserrado, de color verde brillante, algo más claras por el  │        │
│                                                             │ envés. El melocotonero está muy arraigado en la cultura asiá │        │
│                                                             │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │        │
│                                                             │ id japonés, nació del interior de un enorme melocotón que fl │        │
│                                                             │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │        │
│                                                             │ onfiere longevidad al ser humano, ya que formaba parte de la │        │
│                                                             │  dieta de sus dioses inmortales.                             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Melocotonero                                                │ Árbol caducifolio de porte bajo con corteza lisa, de color c │        │
│                                                             │ eniciento. Sus hojas son alargadas con el margen ligeramente │        │
│                                                             │  aserrado, de color verde brillante, algo más claras por el  │        │
│                                                             │ envés. El melocotonero está muy arraigado en la cultura asiá │        │
│                                                             │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │        │
│                                                             │ id japonés, nació del interior de un enorme melocotón que fl │        │
│                                                             │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │        │
│                                                             │ onfiere longevidad al ser humano, ya que formaba parte de la │        │
│                                                             │  dieta de sus dioses inmortales.                             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Melocotonero                                                │ Árbol caducifolio de porte bajo con corteza lisa, de color c │        │
│                                                             │ eniciento. Sus hojas son alargadas con el margen ligeramente │        │
│                                                             │  aserrado, de color verde brillante, algo más claras por el  │        │
│                                                             │ envés. El melocotonero está muy arraigado en la cultura asiá │        │
│                                                             │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │        │
│                                                             │ id japonés, nació del interior de un enorme melocotón que fl │        │
│                                                             │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │        │
│                                                             │ onfiere longevidad al ser humano, ya que formaba parte de la │        │
│                                                             │  dieta de sus dioses inmortales.                             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Membrillero                                                 │ arbolito caducifolio de 4-6 m de altura con el tronco tortuo │        │
│                                                             │ so y la corteza lisa, grisácea, que se desprende en escamas  │        │
│                                                             │ con la edad. Copa irregular, con ramas inermes, flexuosas, p │        │
│                                                             │ arduzcas, punteadas. Ramillas jóvenes tomentosas             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Membrillero                                                 │ arbolito caducifolio de 4-6 m de altura con el tronco tortuo │        │
│                                                             │ so y la corteza lisa, grisácea, que se desprende en escamas  │        │
│                                                             │ con la edad. Copa irregular, con ramas inermes, flexuosas, p │        │
│                                                             │ arduzcas, punteadas. Ramillas jóvenes tomentosas             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Membrillero                                                 │ arbolito caducifolio de 4-6 m de altura con el tronco tortuo │        │
│                                                             │ so y la corteza lisa, grisácea, que se desprende en escamas  │        │
│                                                             │ con la edad. Copa irregular, con ramas inermes, flexuosas, p │        │
│                                                             │ arduzcas, punteadas. Ramillas jóvenes tomentosas             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Membrillero                                                 │ arbolito caducifolio de 4-6 m de altura con el tronco tortuo │        │
│                                                             │ so y la corteza lisa, grisácea, que se desprende en escamas  │        │
│                                                             │ con la edad. Copa irregular, con ramas inermes, flexuosas, p │        │
│                                                             │ arduzcas, punteadas. Ramillas jóvenes tomentosas             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Arbustos Mix Maceta                                         │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Mimosa Injerto CLASICA Dealbata                             │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │        │
│                                                             │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │        │
│                                                             │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │        │
│                                                             │ a). Arbol de follaje persistente muy usado en parques por su │        │
│                                                             │  atractiva floración amarilla hacia fines del invierno. Altu │        │
│                                                             │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │        │
│                                                             │ je perenne de tonos plateados, muy ornamental. Sus hojas son │        │
│                                                             │  de textura fina, de color verde y sus flores amarillas que  │        │
│                                                             │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │        │
│                                                             │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │        │
│                                                             │ mente curvada, con los bordes algo constreñidos entre las se │        │
│                                                             │ millas, que se disponen en el fruto longitudinalmente...     │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Mimosa Semilla Bayleyana                                    │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │        │
│                                                             │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │        │
│                                                             │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │        │
│                                                             │ a). Arbol de follaje persistente muy usado en parques por su │        │
│                                                             │  atractiva floración amarilla hacia fines del invierno. Altu │        │
│                                                             │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │        │
│                                                             │ je perenne de tonos plateados, muy ornamental. Sus hojas son │        │
│                                                             │  de textura fina, de color verde y sus flores amarillas que  │        │
│                                                             │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │        │
│                                                             │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │        │
│                                                             │ mente curvada, con los bordes algo constreñidos entre las se │        │
│                                                             │ millas, que se disponen en el fruto longitudinalmente...     │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Mimosa Semilla Espectabilis                                 │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │        │
│                                                             │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │        │
│                                                             │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │        │
│                                                             │ a). Arbol de follaje persistente muy usado en parques por su │        │
│                                                             │  atractiva floración amarilla hacia fines del invierno. Altu │        │
│                                                             │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │        │
│                                                             │ je perenne de tonos plateados, muy ornamental. Sus hojas son │        │
│                                                             │  de textura fina, de color verde y sus flores amarillas que  │        │
│                                                             │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │        │
│                                                             │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │        │
│                                                             │ mente curvada, con los bordes algo constreñidos entre las se │        │
│                                                             │ millas, que se disponen en el fruto longitudinalmente...     │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Mimosa Semilla Longifolia                                   │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │        │
│                                                             │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │        │
│                                                             │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │        │
│                                                             │ a). Arbol de follaje persistente muy usado en parques por su │        │
│                                                             │  atractiva floración amarilla hacia fines del invierno. Altu │        │
│                                                             │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │        │
│                                                             │ je perenne de tonos plateados, muy ornamental. Sus hojas son │        │
│                                                             │  de textura fina, de color verde y sus flores amarillas que  │        │
│                                                             │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │        │
│                                                             │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │        │
│                                                             │ mente curvada, con los bordes algo constreñidos entre las se │        │
│                                                             │ millas, que se disponen en el fruto longitudinalmente...     │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Mimosa Semilla Floribunda 4 estaciones                      │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │        │
│                                                             │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │        │
│                                                             │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │        │
│                                                             │ a). Arbol de follaje persistente muy usado en parques por su │        │
│                                                             │  atractiva floración amarilla hacia fines del invierno. Altu │        │
│                                                             │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │        │
│                                                             │ je perenne de tonos plateados, muy ornamental. Sus hojas son │        │
│                                                             │  de textura fina, de color verde y sus flores amarillas que  │        │
│                                                             │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │        │
│                                                             │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │        │
│                                                             │ mente curvada, con los bordes algo constreñidos entre las se │        │
│                                                             │ millas, que se disponen en el fruto longitudinalmente...     │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Abelia Floribunda                                           │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Callistemom (Mix)                                           │ Limpitatubos. arbolito de 6-7 m de altura. Ramas flexibles y │        │
│                                                             │  colgantes (de ahí lo de \"llorón\")..                       │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Callistemom (Mix)                                           │ Limpitatubos. arbolito de 6-7 m de altura. Ramas flexibles y │        │
│                                                             │  colgantes (de ahí lo de \"llorón\")..                       │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Corylus Avellana \"Contorta\"                               │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Escallonia (Mix)                                            │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Evonimus Emerald Gayeti                                     │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Evonimus Pulchellus                                         │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Hibiscus Syriacus  \"Helene\" -Blanco-C.rojo                │ Por su capacidad de soportar podas, pueden ser fácilmente mo │        │
│                                                             │ ldeadas como bonsái en el transcurso de pocos años. Flores d │        │
│                                                             │ e muchos colores según la variedad, desde el blanco puro al  │        │
│                                                             │ rojo intenso, del amarillo al anaranjado. La flor apenas dur │        │
│                                                             │ a 1 día, pero continuamente aparecen nuevas y la floración s │        │
│                                                             │ e prolonga durante todo el periodo de crecimiento vegetativo │        │
│                                                             │ .                                                            │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Hibiscus Syriacus \"Pink Giant\" Rosa                       │ Por su capacidad de soportar podas, pueden ser fácilmente mo │        │
│                                                             │ ldeadas como bonsái en el transcurso de pocos años. Flores d │        │
│                                                             │ e muchos colores según la variedad, desde el blanco puro al  │        │
│                                                             │ rojo intenso, del amarillo al anaranjado. La flor apenas dur │        │
│                                                             │ a 1 día, pero continuamente aparecen nuevas y la floración s │        │
│                                                             │ e prolonga durante todo el periodo de crecimiento vegetativo │        │
│                                                             │ .                                                            │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Lonicera Nitida \"Maigrum\"                                 │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Prunus pisardii                                             │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Weigelia \"Bristol Ruby\"                                   │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Leptospermum formado PIRAMIDE                               │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Leptospermum COPA                                           │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Nerium oleander-CALIDAD \"GARDEN\"                          │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Nerium Oleander Arbusto GRANDE                              │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Nerium oleander COPA  Calibre 6/8                           │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ ROSAL TREPADOR                                              │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Camelia Blanco, Chrysler Rojo, Soraya Naranja,              │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Solanum Jazminoide                                          │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Wisteria Sinensis  azul, rosa, blanca                       │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Wisteria Sinensis INJERTADAS DECÃ“                          │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Bougamvillea Sanderiana Tutor                               │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Bougamvillea Sanderiana Espaldera                           │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Bougamvillea Sanderiana Espaldera                           │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Bougamvillea Sanderiana, 3 tut. piramide                    │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Expositor Árboles clima mediterráneo                        │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Expositor Árboles borde del mar                             │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Brachychiton Acerifolius                                    │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Cassia Corimbosa                                            │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Cassia Corimbosa                                            │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Chitalpa Summer Bells                                       │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Erytrina Kafra                                              │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Eucalyptus Citriodora                                       │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Eucalyptus Ficifolia                                        │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Hibiscus Syriacus  Var. Injertadas 1 Tallo                  │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Lagunaria Patersonii                                        │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Lagunaria Patersonii                                        │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Morus Alba                                                  │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Platanus Acerifolia                                         │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Salix Babylonica  Pendula                                   │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Tamarix  Ramosissima Pink Cascade                           │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Tecoma Stands                                               │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Tecoma Stands                                               │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Tipuana Tipu                                                │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Pleioblastus distichus-Bambú enano                          │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Sasa palmata                                                │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Phylostachys aurea                                          │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Phylostachys aurea                                          │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Phylostachys Bambusa Spectabilis                            │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Phylostachys biseti                                         │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Pseudosasa japonica (Metake)                                │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Pseudosasa japonica (Metake)                                │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Cedrus Deodara \"Feeling Blue\" Novedad                     │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Juniperus chinensis \"Blue Alps\"                           │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Juniperus Chinensis Stricta                                 │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Juniperus squamata \"Blue Star\"                            │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Juniperus x media Phitzeriana verde                         │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Bismarckia Nobilis                                          │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Brahea Armata                                               │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Brahea Edulis                                               │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Butia Capitata                                              │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Butia Capitata                                              │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Butia Capitata                                              │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Chamaerops Humilis                                          │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Chamaerops Humilis                                          │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Chamaerops Humilis \"Cerifera\"                             │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Chrysalidocarpus Lutescens -ARECA                           │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Cordyline Australis -DRACAENA                               │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Cycas Revoluta                                              │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Cycas Revoluta                                              │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Dracaena Drago                                              │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Dracaena Drago                                              │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Livistonia Decipiens                                        │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Livistonia Decipiens                                        │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Rhaphis Excelsa                                             │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Sabal Minor                                                 │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Sabal Minor                                                 │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Trachycarpus Fortunei                                       │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Washingtonia Robusta                                        │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Zamia Furfuracaea                                           │                                                              │        │
└─────────────────────────────────────────────────────────────┴──────────────────────────────────────────────────────────────┴────────┘
**/

-- Devuelve las oficinas donde no trabajan ninguno de los empleados que hayan sido los representantes de ventas de algún cliente que haya realizado la compra de algún producto de la gama Frutales.
SELECT distinct o.* FROM oficina o LEFT JOIN empleado e ON o.codigo_oficina = e.codigo_oficina LEFT JOIN cliente c ON e.codigo_empleado = c.codigo_empleado_rep_ventas LEFT JOIN pedido pe ON c.codigo_cliente = pe.codigo_cliente LEFT JOIN detalle_pedido dp ON pe.codigo_pedido = dp.codigo_pedido LEFT JOIN producto p ON dp.codigo_producto = p.codigo_producto WHERE p.gama = 'Frutales';
/**
┌────────────────┬──────────────────────┬───────────┬───────────────────┬───────────────┬─────────────────┬──────────────────────────────┬─────────────────────┐
│ codigo_oficina │        ciudad        │   pais    │      region       │ codigo_postal │    telefono     │       linea_direccion1       │  linea_direccion2   │
├────────────────┼──────────────────────┼───────────┼───────────────────┼───────────────┼─────────────────┼──────────────────────────────┼─────────────────────┤
│ BCN-ES         │ Barcelona            │ España    │ Barcelona         │ 08019         │ +34 93 3561182  │ Avenida Diagonal, 38         │ 3A escalera Derecha │
│ BOS-USA        │ Boston               │ EEUU      │ MA                │ 02108         │ +1 215 837 0825 │ 1550 Court Place             │ Suite 102           │
│ MAD-ES         │ Madrid               │ España    │ Madrid            │ 28032         │ +34 91 7514487  │ Bulevar Indalecio Prieto, 32 │                     │
│ SFC-USA        │ San Francisco        │ EEUU      │ CA                │ 94080         │ +1 650 219 4782 │ 100 Market Street            │ Suite 300           │
│ SYD-AU         │ Sydney               │ Australia │ APAC              │ NSW 2010      │ +61 2 9264 2451 │ 5-11 Wentworth Avenue        │ Floor #2            │
│ TAL-ES         │ Talavera de la Reina │ España    │ Castilla-LaMancha │ 45632         │ +34 925 867231  │ Francisco Aguirre, 32        │ 5º piso (exterior)  │
└────────────────┴──────────────────────┴───────────┴───────────────────┴───────────────┴─────────────────┴──────────────────────────────┴─────────────────────┘
**/

-- Devuelve un listado con los clientes que han realizado algún pedido pero no han realizado ningún pago.
SELECT distinct c.* FROM cliente c LEFT JOIN pedido pe ON c.codigo_cliente = pe.codigo_cliente LEFT JOIN pago pa ON c.codigo_cliente = pa.codigo_cliente WHERE pe.codigo_pedido NOT NULL AND pa.codigo_cliente IS NULL;
/**
┌────────────────┬────────────────┬─────────────────┬───────────────────┬───────────┬───────────┬──────────────────┬──────────────────┬────────┬─────────────┬───────┬───────────────┬────────────────────────────┬────────────────┐
│ codigo_cliente │ nombre_cliente │ nombre_contacto │ apellido_contacto │ telefono  │    fax    │ linea_direccion1 │ linea_direccion2 │ ciudad │   region    │ pais  │ codigo_postal │ codigo_empleado_rep_ventas │ limite_credito │
├────────────────┼────────────────┼─────────────────┼───────────────────┼───────────┼───────────┼──────────────────┼──────────────────┼────────┼─────────────┼───────┼───────────────┼────────────────────────────┼────────────────┤
│ 36             │ Flores S.L.    │ Antonio         │ Romero            │ 654352981 │ 685249700 │ Avenida España   │                  │ Madrid │ Fuenlabrada │ Spain │ 29643         │ 18                         │ 6000           │
└────────────────┴────────────────┴─────────────────┴───────────────────┴───────────┴───────────┴──────────────────┴──────────────────┴────────┴─────────────┴───────┴───────────────┴────────────────────────────┴────────────────┘
**/

-- Devuelve un listado con los datos de los empleados que no tienen clientes asociados y el nombre de su jefe asociado.
SELECT e.*, j.nombre AS nombre_jefe FROM empleado e LEFT JOIN empleado j ON e.codigo_jefe = j.codigo_empleado LEFT JOIN cliente c ON e.codigo_empleado = c.codigo_empleado_rep_ventas WHERE c.codigo_cliente IS NULL;
/**
┌─────────────────┬─────────────┬────────────┬───────────┬───────────┬───────────────────────────┬────────────────┬─────────────┬───────────────────────┬─────────────┐
│ codigo_empleado │   nombre    │ apellido1  │ apellido2 │ extension │           email           │ codigo_oficina │ codigo_jefe │        puesto         │ nombre_jefe │
├─────────────────┼─────────────┼────────────┼───────────┼───────────┼───────────────────────────┼────────────────┼─────────────┼───────────────────────┼─────────────┤
│ 1               │ Marcos      │ Magaña     │ Perez     │ 3897      │ marcos@jardineria.es      │ TAL-ES         │             │ Director General      │             │
│ 2               │ Ruben       │ López      │ Martinez  │ 2899      │ rlopez@jardineria.es      │ TAL-ES         │ 1           │ Subdirector Marketing │ Marcos      │
│ 3               │ Alberto     │ Soria      │ Carrasco  │ 2837      │ asoria@jardineria.es      │ TAL-ES         │ 2           │ Subdirector Ventas    │ Ruben       │
│ 4               │ Maria       │ Solís      │ Jerez     │ 2847      │ msolis@jardineria.es      │ TAL-ES         │ 2           │ Secretaria            │ Ruben       │
│ 6               │ Juan Carlos │ Ortiz      │ Serrano   │ 2845      │ cortiz@jardineria.es      │ TAL-ES         │ 3           │ Representante Ventas  │ Alberto     │
│ 7               │ Carlos      │ Soria      │ Jimenez   │ 2444      │ csoria@jardineria.es      │ MAD-ES         │ 3           │ Director Oficina      │ Alberto     │
│ 10              │ Hilario     │ Rodriguez  │ Huertas   │ 2444      │ hrodriguez@jardineria.es  │ MAD-ES         │ 7           │ Representante Ventas  │ Carlos      │
│ 13              │ David       │ Palma      │ Aceituno  │ 2519      │ dpalma@jardineria.es      │ BCN-ES         │ 11          │ Representante Ventas  │ Emmanuel    │
│ 14              │ Oscar       │ Palma      │ Aceituno  │ 2519      │ opalma@jardineria.es      │ BCN-ES         │ 11          │ Representante Ventas  │ Emmanuel    │
│ 15              │ Francois    │ Fignon     │           │ 9981      │ ffignon@gardening.com     │ PAR-FR         │ 3           │ Director Oficina      │ Alberto     │
│ 17              │ Laurent     │ Serra      │           │ 9982      │ lserra@gardening.com      │ PAR-FR         │ 15          │ Representante Ventas  │ Francois    │
│ 20              │ Hilary      │ Washington │           │ 7565      │ hwashington@gardening.com │ BOS-USA        │ 3           │ Director Oficina      │ Alberto     │
│ 21              │ Marcus      │ Paxton     │           │ 7565      │ mpaxton@gardening.com     │ BOS-USA        │ 20          │ Representante Ventas  │ Hilary      │
│ 23              │ Nei         │ Nishikori  │           │ 8734      │ nnishikori@gardening.com  │ TOK-JP         │ 3           │ Director Oficina      │ Alberto     │
│ 24              │ Narumi      │ Riko       │           │ 8734      │ nriko@gardening.com       │ TOK-JP         │ 23          │ Representante Ventas  │ Nei         │
│ 25              │ Takuma      │ Nomura     │           │ 8735      │ tnomura@gardening.com     │ TOK-JP         │ 23          │ Representante Ventas  │ Nei         │
│ 26              │ Amy         │ Johnson    │           │ 3321      │ ajohnson@gardening.com    │ LON-UK         │ 3           │ Director Oficina      │ Alberto     │
│ 27              │ Larry       │ Westfalls  │           │ 3322      │ lwestfalls@gardening.com  │ LON-UK         │ 26          │ Representante Ventas  │ Amy         │
│ 28              │ John        │ Walton     │           │ 3322      │ jwalton@gardening.com     │ LON-UK         │ 26          │ Representante Ventas  │ Amy         │
│ 29              │ Kevin       │ Fallmer    │           │ 3210      │ kfalmer@gardening.com     │ SYD-AU         │ 3           │ Director Oficina      │ Alberto     │
└─────────────────┴─────────────┴────────────┴───────────┴───────────┴───────────────────────────┴────────────────┴─────────────┴───────────────────────┴─────────────┘
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

