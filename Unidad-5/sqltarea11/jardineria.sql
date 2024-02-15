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

/**

**/

-- Devuelve un listado con los distintos estados por los que puede pasar un pedido.

/**

**/

-- Devuelve un listado con el código de cliente de aquellos clientes que realizaron algún pago en 2008. Tenga en cuenta que deberá eliminar aquellos códigos de cliente que aparezcan repetidos.

/**

**/

-- Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de entrega de los pedidos que no han sido entregados a tiempo.

/**

**/

-- Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de entrega de los pedidos cuya fecha de entrega ha sido al menos dos días antes de la fecha esperada.

/**

**/

-- Devuelve un listado de todos los pedidos que fueron rechazados en 2009.

/**

**/

-- Devuelve un listado de todos los pedidos que han sido entregados en el mes de enero de cualquier año.

/**

**/

-- Devuelve un listado con todos los pagos que se realizaron en el año 2008 mediante Paypal. Ordene el resultado de mayor a menor.

/**

**/

-- Devuelve un listado con todas las formas de pago que aparecen en la tabla pago. Tenga en cuenta que no deben aparecer formas de pago repetidas.

/**

**/

-- Devuelve un listado con todos los productos que pertenecen a la gama Ornamentales y que tienen más de 100 unidades en stock. El listado deberá estar ordenado por su precio de venta, mostrando en primer lugar los de mayor precio.

/**

**/

-- Devuelve un listado con todos los clientes que sean de la ciudad de Madrid y cuyo representante de ventas tenga el código de empleado 11 o 30.

/**

**/


-- Consultas multitabla (Where para unir tablas)



-- Obtén un listado con el nombre de cada cliente y el nombre y apellido de su representante de ventas.

/**

**/

-- Muestra el nombre de los clientes que hayan realizado pagos junto con el nombre de sus representantes de ventas.

/**

**/

-- Muestra el nombre de los clientes que no hayan realizado pagos junto con el nombre de sus representantes de ventas.

/**

**/

-- Devuelve el nombre de los clientes que han hecho pagos y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.

/**

**/

-- Devuelve el nombre de los clientes que no hayan hecho pagos y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.

/**

**/

-- Lista la dirección de las oficinas que tengan clientes en Fuenlabrada.

/**

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

