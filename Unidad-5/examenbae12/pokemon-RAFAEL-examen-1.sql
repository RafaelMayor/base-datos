-- Actualizar el nivel de Bulbasaur.
/**
sqlite> select * from Pokemon where nombre = 'Bulbasaur';
┌────┬───────────┬─────────┬───────┐
│ id │  nombre   │ id_tipo │ nivel │
├────┼───────────┼─────────┼───────┤
│ 1  │ Bulbasaur │ 3       │ 10    │
└────┴───────────┴─────────┴───────┘
sqlite> update Pokemon set nivel = 15 where nombre = 'Bulbasaur';
sqlite> select * from Pokemon where nombre = 'Bulbasaur';
┌────┬───────────┬─────────┬───────┐
│ id │  nombre   │ id_tipo │ nivel │
├────┼───────────┼─────────┼───────┤
│ 1  │ Bulbasaur │ 3       │ 15    │
└────┴───────────┴─────────┴───────┘
**/
-- Cambiar el tipo de Pikachu a "Eléctrico/Rojo".
/**
sqlite> select * from Tipo;
┌────┬───────────┐
│ id │  nombre   │
├────┼───────────┤
│ 1  │ Agua      │
│ 2  │ Fuego     │
│ 3  │ Planta    │
│ 4  │ Eléctrico │
│ 5  │ Tierra    │
└────┴───────────┘
sqlite> update Tipo set nombre = 'Rojo' where nombre = 'Eléctrico';
sqlite> select * from Tipo;
┌────┬────────┐
│ id │ nombre │
├────┼────────┤
│ 1  │ Agua   │
│ 2  │ Fuego  │
│ 3  │ Planta │
│ 4  │ Rojo   │
│ 5  │ Tierra │
└────┴────────┘
**/
-- Incrementar el nivel de todos los Pokémon de tipo Agua.
/**

**/
-- Eliminar a Jynx de la lista de Pokémon.
/**

**/
-- Eliminar el tipo "Hielo" de la lista de tipos de Pokémon.
/**

**/
-- Obtener todos los Pokémon.
/**

**/
-- Obtener el nombre y nivel de los Pokémon de tipo Fuego.
/**

**/
-- Obtener el nombre de los Pokémon que tienen un nivel superior a 30.
/**

**/
-- Obtener el nombre de los Pokémon ordenados por nivel de forma descendente.
/**

**/
-- Obtener la cantidad de Pokémon por tipo.
/**

**/