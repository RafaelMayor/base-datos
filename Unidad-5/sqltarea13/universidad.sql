-- Rafael Martín Mayor.



-- Consultas de una única tabla



-- Devuelve un listado con el primer apellido, segundo apellido y el nombre de todos los alumnos. El listado deberá estar ordenado alfabéticamente de menor a mayor por el primer apellido, segundo apellido y nombre.
select distinct apellido1, apellido2, nombre from persona where tipo = 'alumno' order by apellido1, apellido2, nombre desc;
/**
┌───────────┬───────────┬──────────┐
│ apellido1 │ apellido2 │  nombre  │
├───────────┼───────────┼──────────┤
│ Domínguez │ Guerrero  │ Antonio  │
│ Gea       │ Ruiz      │ Sonia    │
│ Gutiérrez │ López     │ Juan     │
│ Heller    │ Pagac     │ Pedro    │
│ Herman    │ Pacocha   │ Daniel   │
│ Hernández │ Martínez  │ Irene    │
│ Herzog    │ Tremblay  │ Ramón    │
│ Koss      │ Bayer     │ José     │
│ Lakin     │ Yundt     │ Inma     │
│ Saez      │ Vega      │ Juan     │
│ Strosin   │ Turcotte  │ Ismael   │
│ Sánchez   │ Pérez     │ Salvador │
└───────────┴───────────┴──────────┘
**/

-- Averigua el nombre y los dos apellidos de los alumnos que no han dado de alta su número de teléfono en la base de datos.
select nombre, apellido1||' '||apellido2 as apellidos from persona where tipo = 'alumno' and telefono is null;
/**
┌────────┬──────────────────┐
│ nombre │    apellidos     │
├────────┼──────────────────┤
│ Pedro  │ Heller Pagac     │
│ Ismael │ Strosin Turcotte │
└────────┴──────────────────┘
**/

-- Devuelve el listado de los alumnos que nacieron en 1999.
select distinct apellido1, apellido2, nombre, fecha_nacimiento from persona where tipo = 'alumno' and fecha_nacimiento regexp '1999' order by apellido1, apellido2, nombre desc;
/**
┌───────────┬───────────┬─────────┬──────────────────┐
│ apellido1 │ apellido2 │ nombre  │ fecha_nacimiento │
├───────────┼───────────┼─────────┼──────────────────┤
│ Domínguez │ Guerrero  │ Antonio │ 1999/02/11       │
│ Strosin   │ Turcotte  │ Ismael  │ 1999/05/24       │
└───────────┴───────────┴─────────┴──────────────────┘
**/

-- Devuelve el listado de profesores que no han dado de alta su número de teléfono en la base de datos y además su nif termina en K.
select nombre, apellido1||' '||apellido2 as apellidos, telefono, nif from persona where tipo = 'profesor' and telefono is null and nif regexp 'K$';
/**
┌───────────┬─────────────────┬──────────┬───────────┐
│  nombre   │    apellidos    │ telefono │    nif    │
├───────────┼─────────────────┼──────────┼───────────┤
│ Antonio   │ Fahey Considine │          │ 10485008K │
│ Guillermo │ Ruecker Upton   │          │ 85869555K │
└───────────┴─────────────────┴──────────┴───────────┘
**/

-- Devuelve el listado de las asignaturas que se imparten en el primer cuatrimestre, en el tercer curso del grado que tiene el identificador 7.
select nombre, cuatrimestre, curso, id_grado from asignatura where cuatrimestre = 1 and curso = 3 and id_grado = 7;
/**
┌───────────────────────────────────────────┬──────────────┬───────┬──────────┐
│                  nombre                   │ cuatrimestre │ curso │ id_grado │
├───────────────────────────────────────────┼──────────────┼───────┼──────────┤
│ Bases moleculares del desarrollo vegetal  │ 1            │ 3     │ 7        │
│ Fisiología animal                         │ 1            │ 3     │ 7        │
│ Metabolismo y biosíntesis de biomoléculas │ 1            │ 3     │ 7        │
│ Operaciones de separación                 │ 1            │ 3     │ 7        │
│ Patología molecular de plantas            │ 1            │ 3     │ 7        │
│ Técnicas instrumentales básicas           │ 1            │ 3     │ 7        │
└───────────────────────────────────────────┴──────────────┴───────┴──────────┘
**/

-- Consultas multitabla (Join)



-- Devuelve un listado con los datos de todas las alumnas que se han matriculado alguna vez en el Grado en Ingeniería Informática (Plan 2015).
select distinct p.nombre, apellido1||' '||apellido2 as apellidos, sexo, g.nombre as nombre_grado from persona p join alumno_se_matricula_asignatura ass on ass.id_alumno = p.id join asignatura a on ass.id_asignatura = a.id join grado g on a.id_grado = g.id where sexo = 'M' and id_grado = 4;
/**
┌────────┬────────────────────┬──────┬─────────────────────────────────────────────┐
│ nombre │     apellidos      │ sexo │                nombre_grado                 │
├────────┼────────────────────┼──────┼─────────────────────────────────────────────┤
│ Sonia  │ Gea Ruiz           │ M    │ Grado en Ingeniería Informática (Plan 2015) │
│ Irene  │ Hernández Martínez │ M    │ Grado en Ingeniería Informática (Plan 2015) │
│ Inma   │ Lakin Yundt        │ M    │ Grado en Ingeniería Informática (Plan 2015) │
└────────┴────────────────────┴──────┴─────────────────────────────────────────────┘
**/

-- Devuelve un listado con todas las asignaturas ofertadas en el Grado en Ingeniería Informática (Plan 2015).
select nombre from asignatura where id_grado = 4;
/**
┌──────────────────────────────────────────────────────────────┐
│                            nombre                            │
├──────────────────────────────────────────────────────────────┤
│ Álgegra lineal y matemática discreta                         │
├──────────────────────────────────────────────────────────────┤
│ Cálculo                                                      │
├──────────────────────────────────────────────────────────────┤
│ Física para informática                                      │
├──────────────────────────────────────────────────────────────┤
│ Introducción a la programación                               │
├──────────────────────────────────────────────────────────────┤
│ Organización y gestión de empresas                           │
├──────────────────────────────────────────────────────────────┤
│ Estadística                                                  │
├──────────────────────────────────────────────────────────────┤
│ Estructura y tecnología de computadores                      │
├──────────────────────────────────────────────────────────────┤
│ Fundamentos de electrónica                                   │
├──────────────────────────────────────────────────────────────┤
│ Lógica y algorítmica                                         │
├──────────────────────────────────────────────────────────────┤
│ Metodología de la programación                               │
├──────────────────────────────────────────────────────────────┤
│ Arquitectura de Computadores                                 │
├──────────────────────────────────────────────────────────────┤
│ Estructura de Datos y Algoritmos I                           │
├──────────────────────────────────────────────────────────────┤
│ Ingeniería del Software                                      │
├──────────────────────────────────────────────────────────────┤
│ Sistemas Inteligentes                                        │
├──────────────────────────────────────────────────────────────┤
│ Sistemas Operativos                                          │
├──────────────────────────────────────────────────────────────┤
│ Bases de Datos                                               │
├──────────────────────────────────────────────────────────────┤
│ Estructura de Datos y Algoritmos II                          │
├──────────────────────────────────────────────────────────────┤
│ Fundamentos de Redes de Computadores                         │
├──────────────────────────────────────────────────────────────┤
│ Planificación y Gestión de Proyectos Informáticos            │
├──────────────────────────────────────────────────────────────┤
│ Programación de Servicios Software                           │
├──────────────────────────────────────────────────────────────┤
│ Desarrollo de interfaces de usuario                          │
├──────────────────────────────────────────────────────────────┤
│ Ingeniería de Requisitos                                     │
├──────────────────────────────────────────────────────────────┤
│ Integración de las Tecnologías de la Información en las Orga │
│ nizaciones                                                   │
├──────────────────────────────────────────────────────────────┤
│ Modelado y Diseño del Software 1                             │
├──────────────────────────────────────────────────────────────┤
│ Multiprocesadores                                            │
├──────────────────────────────────────────────────────────────┤
│ Seguridad y cumplimiento normativo                           │
├──────────────────────────────────────────────────────────────┤
│ Sistema de Información para las Organizaciones               │
├──────────────────────────────────────────────────────────────┤
│ Tecnologías web                                              │
├──────────────────────────────────────────────────────────────┤
│ Teoría de códigos y criptografía                             │
├──────────────────────────────────────────────────────────────┤
│ Administración de bases de datos                             │
├──────────────────────────────────────────────────────────────┤
│ Herramientas y Métodos de Ingeniería del Software            │
├──────────────────────────────────────────────────────────────┤
│ Informática industrial y robótica                            │
├──────────────────────────────────────────────────────────────┤
│ Ingeniería de Sistemas de Información                        │
├──────────────────────────────────────────────────────────────┤
│ Modelado y Diseño del Software 2                             │
├──────────────────────────────────────────────────────────────┤
│ Negocio Electrónico                                          │
├──────────────────────────────────────────────────────────────┤
│ Periféricos e interfaces                                     │
├──────────────────────────────────────────────────────────────┤
│ Sistemas de tiempo real                                      │
├──────────────────────────────────────────────────────────────┤
│ Tecnologías de acceso a red                                  │
├──────────────────────────────────────────────────────────────┤
│ Tratamiento digital de imágenes                              │
├──────────────────────────────────────────────────────────────┤
│ Administración de redes y sistemas operativos                │
├──────────────────────────────────────────────────────────────┤
│ Almacenes de Datos                                           │
├──────────────────────────────────────────────────────────────┤
│ Fiabilidad y Gestión de Riesgos                              │
├──────────────────────────────────────────────────────────────┤
│ Líneas de Productos Software                                 │
├──────────────────────────────────────────────────────────────┤
│ Procesos de Ingeniería del Software 1                        │
├──────────────────────────────────────────────────────────────┤
│ Tecnologías multimedia                                       │
├──────────────────────────────────────────────────────────────┤
│ Análisis y planificación de las TI                           │
├──────────────────────────────────────────────────────────────┤
│ Desarrollo Rápido de Aplicaciones                            │
├──────────────────────────────────────────────────────────────┤
│ Gestión de la Calidad y de la Innovación Tecnológica         │
├──────────────────────────────────────────────────────────────┤
│ Inteligencia del Negocio                                     │
├──────────────────────────────────────────────────────────────┤
│ Procesos de Ingeniería del Software 2                        │
├──────────────────────────────────────────────────────────────┤
│ Seguridad Informática                                        │
└──────────────────────────────────────────────────────────────┘
**/

-- Devuelve un listado de los profesores junto con el nombre del departamento al que están vinculados. El listado debe devolver cuatro columnas, primer apellido, segundo apellido, nombre y nombre del departamento. El resultado estará ordenado alfabéticamente de menor a mayor por los apellidos y el nombre.
select apellido1, apellido2, p.nombre, dp.nombre as nombre_departamento from persona p join profesor pr on p.id = pr.id_profesor join departamento dp on pr.id_departamento = dp.id order by apellido1, apellido2, p.nombre desc;
/**
┌────────────┬────────────┬───────────┬─────────────────────┐
│ apellido1  │ apellido2  │  nombre   │ nombre_departamento │
├────────────┼────────────┼───────────┼─────────────────────┤
│ Fahey      │ Considine  │ Antonio   │ Economía y Empresa  │
│ Hamill     │ Kozey      │ Manolo    │ Informática         │
│ Kohler     │ Schoen     │ Alejandro │ Matemáticas         │
│ Lemke      │ Rutherford │ Cristina  │ Economía y Empresa  │
│ Monahan    │ Murray     │ Micaela   │ Agronomía           │
│ Ramirez    │ Gea        │ Zoe       │ Informática         │
│ Ruecker    │ Upton      │ Guillermo │ Educación           │
│ Schmidt    │ Fisher     │ David     │ Matemáticas         │
│ Schowalter │ Muller     │ Francesca │ Química y Física    │
│ Spencer    │ Lakin      │ Esther    │ Educación           │
│ Stiedemann │ Morissette │ Alfredo   │ Química y Física    │
│ Streich    │ Hirthe     │ Carmen    │ Educación           │
└────────────┴────────────┴───────────┴─────────────────────┘
**/

-- Devuelve un listado con el nombre de las asignaturas, año de inicio y año de fin del curso escolar del alumno con nif 26902806M.
select a.nombre, anyo_inicio, anyo_fin, nif from asignatura a join alumno_se_matricula_asignatura ass on a.id = ass.id_asignatura join curso_escolar ce on ass.id_curso_escolar = ce.id join persona p on ass.id_alumno = p.id where nif = '26902806M';
/**
┌──────────────────────────────────────┬─────────────┬──────────┬───────────┐
│                nombre                │ anyo_inicio │ anyo_fin │    nif    │
├──────────────────────────────────────┼─────────────┼──────────┼───────────┤
│ Álgegra lineal y matemática discreta │ 2014        │ 2015     │ 26902806M │
│ Cálculo                              │ 2014        │ 2015     │ 26902806M │
│ Física para informática              │ 2014        │ 2015     │ 26902806M │
└──────────────────────────────────────┴─────────────┴──────────┴───────────┘
**/

-- Devuelve un listado con el nombre de todos los departamentos que tienen profesores que imparten alguna asignatura en el Grado en Ingeniería Informática (Plan 2015).
select distinct dp.nombre from departamento dp join profesor pr on dp.id = pr.id_departamento join asignatura a on pr.id_profesor = a.id_profesor where id_grado = 4;
/**
┌─────────────┐
│   nombre    │
├─────────────┤
│ Informática │
└─────────────┘
**/

-- Devuelve un listado con todos los alumnos que se han matriculado en alguna asignatura durante el curso escolar 2018/2019.
select distinct p.nombre, apellido1||' '||apellido2 as apellidos from persona p join alumno_se_matricula_asignatura ass on p.id = ass.id_alumno join curso_escolar ce on ass.id_curso_escolar = ce.id where anyo_inicio in (2018, 2019) or anyo_fin in (2018, 2019);
/**
┌────────┬────────────────────┐
│ nombre │     apellidos      │
├────────┼────────────────────┤
│ Sonia  │ Gea Ruiz           │
│ Irene  │ Hernández Martínez │
│ Inma   │ Lakin Yundt        │
└────────┴────────────────────┘
**/

-- Consultas multitabla (Where)



-- Devuelve un listado con los nombres de todos los profesores y los departamentos que tienen vinculados. El listado también debe mostrar aquellos profesores que no tienen ningún departamento asociado. El listado debe devolver cuatro columnas, nombre del departamento, primer apellido, segundo apellido y nombre del profesor. El resultado estará ordenado alfabéticamente de menor a mayor por el nombre del departamento, apellidos y el nombre.
select dp.nombre as nombre_departamento, apellido1, apellido2, p.nombre from persona p, departamento dp, profesor pr where p.id = pr.id_profesor and (pr.id_departamento = dp.id or pr.id_departamento is null) order by dp.nombre asc, apellido1 asc, apellido2 asc, p.nombre asc;
/**
┌─────────────────────┬────────────┬────────────┬───────────┐
│ nombre_departamento │ apellido1  │ apellido2  │  nombre   │
├─────────────────────┼────────────┼────────────┼───────────┤
│ Agronomía           │ Monahan    │ Murray     │ Micaela   │
│ Economía y Empresa  │ Fahey      │ Considine  │ Antonio   │
│ Economía y Empresa  │ Lemke      │ Rutherford │ Cristina  │
│ Educación           │ Ruecker    │ Upton      │ Guillermo │
│ Educación           │ Spencer    │ Lakin      │ Esther    │
│ Educación           │ Streich    │ Hirthe     │ Carmen    │
│ Informática         │ Hamill     │ Kozey      │ Manolo    │
│ Informática         │ Ramirez    │ Gea        │ Zoe       │
│ Matemáticas         │ Kohler     │ Schoen     │ Alejandro │
│ Matemáticas         │ Schmidt    │ Fisher     │ David     │
│ Química y Física    │ Schowalter │ Muller     │ Francesca │
│ Química y Física    │ Stiedemann │ Morissette │ Alfredo   │
└─────────────────────┴────────────┴────────────┴───────────┘
**/

-- Devuelve un listado con los profesores que no están asociados a un departamento.
select p.nombre, apellido1||' '||apellido2 as apellidos from persona p, profesor pr where p.id = pr.id_profesor and pr.id_departamento is null;
/**
No devuelve nada porque todos los profesores están asociados a un departamento.
**/

-- Devuelve un listado con los departamentos que no tienen profesores asociados.
select nombre from departamento dp, profesor pr where dp.id = pr.id_departamento and id_profesor is null;
/**
No devuelve nada porque todos los departamentos tienen al menos un profesor asociado.
**/

-- Devuelve un listado con los profesores que no imparten ninguna asignatura.
select p.nombre, apellido1||' '||apellido2 as apellidos from persona p, profesor pr where p.id = pr.id_profesor and id_profesor not in (select a.id_profesor from asignatura a, profesor pr where a.id_profesor = pr.id_profesor );
/**
┌───────────┬───────────────────────┐
│  nombre   │       apellidos       │
├───────────┼───────────────────────┤
│ David     │ Schmidt Fisher        │
│ Cristina  │ Lemke Rutherford      │
│ Esther    │ Spencer Lakin         │
│ Carmen    │ Streich Hirthe        │
│ Alfredo   │ Stiedemann Morissette │
│ Alejandro │ Kohler Schoen         │
│ Antonio   │ Fahey Considine       │
│ Guillermo │ Ruecker Upton         │
│ Micaela   │ Monahan Murray        │
│ Francesca │ Schowalter Muller     │
└───────────┴───────────────────────┘
**/

-- Devuelve un listado con las asignaturas que no tienen un profesor asignado.
select nombre from asignatura where id_profesor is null;
/**
┌────────────────────────────────────────────────────────────────────────┐
│                                 nombre                                 │
├────────────────────────────────────────────────────────────────────────┤
│ Ingeniería de Requisitos                                               │
│ Integración de las Tecnologías de la Información en las Organizaciones │
│ Modelado y Diseño del Software 1                                       │
│ Multiprocesadores                                                      │
│ Seguridad y cumplimiento normativo                                     │
│ Sistema de Información para las Organizaciones                         │
│ Tecnologías web                                                        │
│ Teoría de códigos y criptografía                                       │
│ Administración de bases de datos                                       │
│ Herramientas y Métodos de Ingeniería del Software                      │
│ Informática industrial y robótica                                      │
│ Ingeniería de Sistemas de Información                                  │
│ Modelado y Diseño del Software 2                                       │
│ Negocio Electrónico                                                    │
│ Periféricos e interfaces                                               │
│ Sistemas de tiempo real                                                │
│ Tecnologías de acceso a red                                            │
│ Tratamiento digital de imágenes                                        │
│ Administración de redes y sistemas operativos                          │
│ Almacenes de Datos                                                     │
│ Fiabilidad y Gestión de Riesgos                                        │
│ Líneas de Productos Software                                           │
│ Procesos de Ingeniería del Software 1                                  │
│ Tecnologías multimedia                                                 │
│ Análisis y planificación de las TI                                     │
│ Desarrollo Rápido de Aplicaciones                                      │
│ Gestión de la Calidad y de la Innovación Tecnológica                   │
│ Inteligencia del Negocio                                               │
│ Procesos de Ingeniería del Software 2                                  │
│ Seguridad Informática                                                  │
│ Biologia celular                                                       │
│ Física                                                                 │
│ Matemáticas I                                                          │
│ Química general                                                        │
│ Química orgánica                                                       │
│ Biología vegetal y animal                                              │
│ Bioquímica                                                             │
│ Genética                                                               │
│ Matemáticas II                                                         │
│ Microbiología                                                          │
│ Botánica agrícola                                                      │
│ Fisiología vegetal                                                     │
│ Genética molecular                                                     │
│ Ingeniería bioquímica                                                  │
│ Termodinámica y cinética química aplicada                              │
│ Biorreactores                                                          │
│ Biotecnología microbiana                                               │
│ Ingeniería genética                                                    │
│ Inmunología                                                            │
│ Virología                                                              │
│ Bases moleculares del desarrollo vegetal                               │
│ Fisiología animal                                                      │
│ Metabolismo y biosíntesis de biomoléculas                              │
│ Operaciones de separación                                              │
│ Patología molecular de plantas                                         │
│ Técnicas instrumentales básicas                                        │
│ Bioinformática                                                         │
│ Biotecnología de los productos hortofrutículas                         │
│ Biotecnología vegetal                                                  │
│ Genómica y proteómica                                                  │
│ Procesos biotecnológicos                                               │
│ Técnicas instrumentales avanzadas                                      │
└────────────────────────────────────────────────────────────────────────┘
**/

-- Devuelve un listado con todos los departamentos que tienen alguna asignatura que no se haya impartido en ningún curso escolar. El resultado debe mostrar el nombre del departamento y el nombre de la asignatura que no se haya impartido nunca.
select dp.nombre, a.nombre from departamento dp, profesor pr, asignatura a where dp.id = pr.id_departamento and pr.id_profesor = a.id_profesor and a.id not in (select id_asignatura from alumno_se_matricula_asignatura);
/**
┌─────────────┬───────────────────────────────────────────────────┐
│   nombre    │                      nombre                       │
├─────────────┼───────────────────────────────────────────────────┤
│ Informática │ Arquitectura de Computadores                      │
│ Informática │ Estructura de Datos y Algoritmos I                │
│ Informática │ Ingeniería del Software                           │
│ Informática │ Sistemas Inteligentes                             │
│ Informática │ Sistemas Operativos                               │
│ Informática │ Bases de Datos                                    │
│ Informática │ Estructura de Datos y Algoritmos II               │
│ Informática │ Fundamentos de Redes de Computadores              │
│ Informática │ Planificación y Gestión de Proyectos Informáticos │
│ Informática │ Programación de Servicios Software                │
│ Informática │ Desarrollo de interfaces de usuario               │
└─────────────┴───────────────────────────────────────────────────┘
**/



-- Consultas resúmen (Funciones)



-- Devuelve el número total de alumnas que hay.
select count(id) as num_alumnas from persona where tipo = 'alumno' and sexo = 'M';
/**
┌─────────────┐
│ num_alumnas │
├─────────────┤
│ 3           │
└─────────────┘
**/

-- Calcula cuántos alumnos nacieron en 1999.
select count(id) as num_alumnos_1999 from persona where tipo = 'alumno' and fecha_nacimiento regexp '1999';
/**
┌──────────────────┐
│ num_alumnos_1999 │
├──────────────────┤
│ 2                │
└──────────────────┘
**/

-- Calcula cuántos profesores hay en cada departamento. El resultado sólo debe mostrar dos columnas, una con el nombre del departamento y otra con el número de profesores que hay en ese departamento. El resultado sólo debe incluir los departamentos que tienen profesores asociados y deberá estar ordenado de mayor a menor por el número de profesores.
select nombre, count(id_profesor) as num_profesores from departamento dp join profesor pr on dp.id = pr.id_departamento group by dp.id order by count(id_profesor) desc;
/**
┌────────────────────┬────────────────┐
│       nombre       │ num_profesores │
├────────────────────┼────────────────┤
│ Educación          │ 3              │
│ Química y Física   │ 2              │
│ Economía y Empresa │ 2              │
│ Matemáticas        │ 2              │
│ Informática        │ 2              │
│ Agronomía          │ 1              │
└────────────────────┴────────────────┘
**/

-- Devuelve un listado con todos los departamentos y el número de profesores que hay en cada uno de ellos. Tenga en cuenta que pueden existir departamentos que no tienen profesores asociados. Estos departamentos también tienen que aparecer en el listado.
select nombre, count(id_profesor) as num_profesores from departamento dp left join profesor pr on dp.id = pr.id_departamento group by dp.id order by count(id_profesor) desc;
/**
┌─────────────────────┬────────────────┐
│       nombre        │ num_profesores │
├─────────────────────┼────────────────┤
│ Educación           │ 3              │
│ Informática         │ 2              │
│ Matemáticas         │ 2              │
│ Economía y Empresa  │ 2              │
│ Química y Física    │ 2              │
│ Agronomía           │ 1              │
│ Filología           │ 0              │
│ Derecho             │ 0              │
│ Biología y Geología │ 0              │
└─────────────────────┴────────────────┘
**/

-- Devuelve un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno. Tenga en cuenta que pueden existir grados que no tienen asignaturas asociadas. Estos grados también tienen que aparecer en el listado. El resultado deberá estar ordenado de mayor a menor por el número de asignaturas.
select g.nombre, count(a.id) as num_asignaturas from grado g left join asignatura a on g.id = a.id_grado group by g.id order by count(a.id) desc;
/**
┌────────────────────────────────────────────────────────┬─────────────────┐
│                         nombre                         │ num_asignaturas │
├────────────────────────────────────────────────────────┼─────────────────┤
│ Grado en Ingeniería Informática (Plan 2015)            │ 51              │
│ Grado en Biotecnología (Plan 2015)                     │ 32              │
│ Grado en Ingeniería Agrícola (Plan 2015)               │ 0               │
│ Grado en Ingeniería Eléctrica (Plan 2014)              │ 0               │
│ Grado en Ingeniería Electrónica Industrial (Plan 2010) │ 0               │
│ Grado en Ingeniería Mecánica (Plan 2010)               │ 0               │
│ Grado en Ingeniería Química Industrial (Plan 2010)     │ 0               │
│ Grado en Ciencias Ambientales (Plan 2009)              │ 0               │
│ Grado en Matemáticas (Plan 2010)                       │ 0               │
│ Grado en Química (Plan 2009)                           │ 0               │
└────────────────────────────────────────────────────────┴─────────────────┘
**/

-- Devuelve un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno, de los grados que tengan más de 40 asignaturas asociadas.
select g.nombre, count(a.id) as num_asignaturas from grado g join asignatura a on g.id = a.id_grado group by g.id having count(a.id) > 40 order by count(a.id) desc;
/**
┌─────────────────────────────────────────────┬─────────────────┐
│                   nombre                    │ num_asignaturas │
├─────────────────────────────────────────────┼─────────────────┤
│ Grado en Ingeniería Informática (Plan 2015) │ 51              │
└─────────────────────────────────────────────┴─────────────────┘
**/

-- Devuelve un listado que muestre el nombre de los grados y la suma del número total de créditos que hay para cada tipo de asignatura. El resultado debe tener tres columnas: nombre del grado, tipo de asignatura y la suma de los créditos de todas las asignaturas que hay de ese tipo. Ordene el resultado de mayor a menor por el número total de crédidos.
select g.nombre, a.tipo, SUM(a.creditos) as total_creditos from grado g join asignatura a on g.id = a.id_grado group by g.id, a.tipo order by SUM(a.creditos) desc;
/**
┌─────────────────────────────────────────────┬─────────────┬────────────────┐
│                   nombre                    │    tipo     │ total_creditos │
├─────────────────────────────────────────────┼─────────────┼────────────────┤
│ Grado en Ingeniería Informática (Plan 2015) │ optativa    │ 180.0          │
│ Grado en Biotecnología (Plan 2015)          │ obligatoria │ 120.0          │
│ Grado en Ingeniería Informática (Plan 2015) │ básica      │ 72.0           │
│ Grado en Biotecnología (Plan 2015)          │ básica      │ 60.0           │
│ Grado en Ingeniería Informática (Plan 2015) │ obligatoria │ 54.0           │
└─────────────────────────────────────────────┴─────────────┴────────────────┘
**/

-- Devuelve un listado que muestre cuántos alumnos se han matriculado de alguna asignatura en cada uno de los cursos escolares. El resultado deberá mostrar dos columnas, una columna con el año de inicio del curso escolar y otra con el número de alumnos matriculados.
select c.anyo_inicio, count(ass.id_alumno) as num_alumnos from alumno_se_matricula_asignatura ass join curso_escolar c on ass.id_curso_escolar = c.id group by c.id;
/**
┌─────────────┬─────────────┐
│ anyo_inicio │ num_alumnos │
├─────────────┼─────────────┤
│ 2014        │ 9           │
│ 2018        │ 30          │
└─────────────┴─────────────┘
**/

-- Devuelve un listado con el número de asignaturas que imparte cada profesor. El listado debe tener en cuenta aquellos profesores que no imparten ninguna asignatura. El resultado mostrará cinco columnas: id, nombre, primer apellido, segundo apellido y número de asignaturas. El resultado estará ordenado de mayor a menor por el número de asignaturas.
select p.id, p.nombre, p.apellido1, p.apellido2, count(a.id) as num_asignaturas from persona p join profesor pr on p.id = pr.id_profesor left join asignatura a on pr.id_profesor=a.id_profesor group by pr.id_profesor order by num_asignaturas desc;
/**
┌────┬───────────┬────────────┬────────────┬─────────────────┐
│ id │  nombre   │ apellido1  │ apellido2  │ num_asignaturas │
├────┼───────────┼────────────┼────────────┼─────────────────┤
│ 14 │ Manolo    │ Hamill     │ Kozey      │ 11              │
│ 3  │ Zoe       │ Ramirez    │ Gea        │ 10              │
│ 5  │ David     │ Schmidt    │ Fisher     │ 0               │
│ 8  │ Cristina  │ Lemke      │ Rutherford │ 0               │
│ 10 │ Esther    │ Spencer    │ Lakin      │ 0               │
│ 12 │ Carmen    │ Streich    │ Hirthe     │ 0               │
│ 13 │ Alfredo   │ Stiedemann │ Morissette │ 0               │
│ 15 │ Alejandro │ Kohler     │ Schoen     │ 0               │
│ 16 │ Antonio   │ Fahey      │ Considine  │ 0               │
│ 17 │ Guillermo │ Ruecker    │ Upton      │ 0               │
│ 18 │ Micaela   │ Monahan    │ Murray     │ 0               │
│ 20 │ Francesca │ Schowalter │ Muller     │ 0               │
└────┴───────────┴────────────┴────────────┴─────────────────┘
**/



-- Subconsultas



-- Devuelve todos los datos del alumno más joven.
select * from persona where fecha_nacimiento = (select MAX(fecha_nacimiento) from persona where tipo = "alumno");
/**
┌────┬───────────┬────────┬───────────┬───────────┬─────────┬───────────────────┬──────────┬──────────────────┬──────┬────────┐
│ id │    nif    │ nombre │ apellido1 │ apellido2 │ ciudad  │     direccion     │ telefono │ fecha_nacimiento │ sexo │  tipo  │
├────┼───────────┼────────┼───────────┼───────────┼─────────┼───────────────────┼──────────┼──────────────────┼──────┼────────┤
│ 4  │ 17105885A │ Pedro  │ Heller    │ Pagac     │ Almería │ C/ Estrella fugaz │          │ 2000/10/05       │ H    │ alumno │
└────┴───────────┴────────┴───────────┴───────────┴─────────┴───────────────────┴──────────┴──────────────────┴──────┴────────┘
**/

-- Devuelve un listado con los profesores que no están asociados a un departamento.
select p.* from persona p join profesor pr on p.id = pr.id_profesor where pr.id_departamento not in (select id from departamento);
/**
Todos los profesores tienen departamento.
**/

-- Devuelve un listado con los departamentos que no tienen profesores asociados.
select * from departamento where id not in (select id_departamento from profesor);
/**
┌────┬─────────────────────┐
│ id │       nombre        │
├────┼─────────────────────┤
│ 7  │ Filología           │
│ 8  │ Derecho             │
│ 9  │ Biología y Geología │
└────┴─────────────────────┘
**/

-- Devuelve un listado con los profesores que tienen un departamento asociado y que no imparten ninguna asignatura.
select p.* from persona p join profesor pr on p.id = pr.id_profesor where pr.id_departamento in (select id_departamento from departamento) and pr.id_profesor not in (select distinct(id_profesor) from asignatura where id_profesor not null);
/**
┌────┬───────────┬───────────┬────────────┬────────────┬─────────┬───────────────────────────┬───────────┬──────────────────┬──────┬──────────┐
│ id │    nif    │  nombre   │ apellido1  │ apellido2  │ ciudad  │         direccion         │ telefono  │ fecha_nacimiento │ sexo │   tipo   │
├────┼───────────┼───────────┼────────────┼────────────┼─────────┼───────────────────────────┼───────────┼──────────────────┼──────┼──────────┤
│ 5  │ 38223286T │ David     │ Schmidt    │ Fisher     │ Almería │ C/ Venus                  │ 678516294 │ 1978/01/19       │ H    │ profesor │
│ 8  │ 79503962T │ Cristina  │ Lemke      │ Rutherford │ Almería │ C/ Saturno                │ 669162534 │ 1977/08/21       │ M    │ profesor │
│ 10 │ 61142000L │ Esther    │ Spencer    │ Lakin      │ Almería │ C/ Plutón                 │           │ 1977/05/19       │ M    │ profesor │
│ 12 │ 85366986W │ Carmen    │ Streich    │ Hirthe     │ Almería │ C/ Almanzora              │           │ 1971-04-29       │ M    │ profesor │
│ 13 │ 73571384L │ Alfredo   │ Stiedemann │ Morissette │ Almería │ C/ Guadalquivir           │ 950896725 │ 1980/02/01       │ H    │ profesor │
│ 15 │ 80502866Z │ Alejandro │ Kohler     │ Schoen     │ Almería │ C/ Tajo                   │ 668726354 │ 1980/03/14       │ H    │ profesor │
│ 16 │ 10485008K │ Antonio   │ Fahey      │ Considine  │ Almería │ C/ Sierra de los Filabres │           │ 1982/03/18       │ H    │ profesor │
│ 17 │ 85869555K │ Guillermo │ Ruecker    │ Upton      │ Almería │ C/ Sierra de Gádor        │           │ 1973/05/05       │ H    │ profesor │
│ 18 │ 04326833G │ Micaela   │ Monahan    │ Murray     │ Almería │ C/ Veleta                 │ 662765413 │ 1976/02/25       │ H    │ profesor │
│ 20 │ 79221403L │ Francesca │ Schowalter │ Muller     │ Almería │ C/ Quinto pino            │           │ 1980/10/31       │ H    │ profesor │
└────┴───────────┴───────────┴────────────┴────────────┴─────────┴───────────────────────────┴───────────┴──────────────────┴──────┴──────────┘
**/

-- Devuelve un listado con las asignaturas que no tienen un profesor asignado.
select * from asignatura where id_profesor not in (select id_profesor from profesor) or id_profesor is null;
/**
┌────┬──────────────────────────────────────────────────────────────┬──────────┬─────────────┬───────┬──────────────┬─────────────┬──────────┐
│ id │                            nombre                            │ creditos │    tipo     │ curso │ cuatrimestre │ id_profesor │ id_grado │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 22 │ Ingeniería de Requisitos                                     │ 6.0      │ optativa    │ 3     │ 1            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 23 │ Integración de las Tecnologías de la Información en las Orga │ 6.0      │ optativa    │ 3     │ 1            │             │ 4        │
│    │ nizaciones                                                   │          │             │       │              │             │          │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 24 │ Modelado y Diseño del Software 1                             │ 6.0      │ optativa    │ 3     │ 1            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 25 │ Multiprocesadores                                            │ 6.0      │ optativa    │ 3     │ 1            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 26 │ Seguridad y cumplimiento normativo                           │ 6.0      │ optativa    │ 3     │ 1            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 27 │ Sistema de Información para las Organizaciones               │ 6.0      │ optativa    │ 3     │ 1            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 28 │ Tecnologías web                                              │ 6.0      │ optativa    │ 3     │ 1            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 29 │ Teoría de códigos y criptografía                             │ 6.0      │ optativa    │ 3     │ 1            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 30 │ Administración de bases de datos                             │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 31 │ Herramientas y Métodos de Ingeniería del Software            │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 32 │ Informática industrial y robótica                            │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 33 │ Ingeniería de Sistemas de Información                        │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 34 │ Modelado y Diseño del Software 2                             │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 35 │ Negocio Electrónico                                          │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 36 │ Periféricos e interfaces                                     │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 37 │ Sistemas de tiempo real                                      │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 38 │ Tecnologías de acceso a red                                  │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 39 │ Tratamiento digital de imágenes                              │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 40 │ Administración de redes y sistemas operativos                │ 6.0      │ optativa    │ 4     │ 1            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 41 │ Almacenes de Datos                                           │ 6.0      │ optativa    │ 4     │ 1            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 42 │ Fiabilidad y Gestión de Riesgos                              │ 6.0      │ optativa    │ 4     │ 1            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 43 │ Líneas de Productos Software                                 │ 6.0      │ optativa    │ 4     │ 1            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 44 │ Procesos de Ingeniería del Software 1                        │ 6.0      │ optativa    │ 4     │ 1            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 45 │ Tecnologías multimedia                                       │ 6.0      │ optativa    │ 4     │ 1            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 46 │ Análisis y planificación de las TI                           │ 6.0      │ optativa    │ 4     │ 2            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 47 │ Desarrollo Rápido de Aplicaciones                            │ 6.0      │ optativa    │ 4     │ 2            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 48 │ Gestión de la Calidad y de la Innovación Tecnológica         │ 6.0      │ optativa    │ 4     │ 2            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 49 │ Inteligencia del Negocio                                     │ 6.0      │ optativa    │ 4     │ 2            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 50 │ Procesos de Ingeniería del Software 2                        │ 6.0      │ optativa    │ 4     │ 2            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 51 │ Seguridad Informática                                        │ 6.0      │ optativa    │ 4     │ 2            │             │ 4        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 52 │ Biologia celular                                             │ 6.0      │ básica      │ 1     │ 1            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 53 │ Física                                                       │ 6.0      │ básica      │ 1     │ 1            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 54 │ Matemáticas I                                                │ 6.0      │ básica      │ 1     │ 1            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 55 │ Química general                                              │ 6.0      │ básica      │ 1     │ 1            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 56 │ Química orgánica                                             │ 6.0      │ básica      │ 1     │ 1            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 57 │ Biología vegetal y animal                                    │ 6.0      │ básica      │ 1     │ 2            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 58 │ Bioquímica                                                   │ 6.0      │ básica      │ 1     │ 2            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 59 │ Genética                                                     │ 6.0      │ básica      │ 1     │ 2            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 60 │ Matemáticas II                                               │ 6.0      │ básica      │ 1     │ 2            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 61 │ Microbiología                                                │ 6.0      │ básica      │ 1     │ 2            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 62 │ Botánica agrícola                                            │ 6.0      │ obligatoria │ 2     │ 1            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 63 │ Fisiología vegetal                                           │ 6.0      │ obligatoria │ 2     │ 1            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 64 │ Genética molecular                                           │ 6.0      │ obligatoria │ 2     │ 1            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 65 │ Ingeniería bioquímica                                        │ 6.0      │ obligatoria │ 2     │ 1            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 66 │ Termodinámica y cinética química aplicada                    │ 6.0      │ obligatoria │ 2     │ 1            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 67 │ Biorreactores                                                │ 6.0      │ obligatoria │ 2     │ 2            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 68 │ Biotecnología microbiana                                     │ 6.0      │ obligatoria │ 2     │ 2            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 69 │ Ingeniería genética                                          │ 6.0      │ obligatoria │ 2     │ 2            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 70 │ Inmunología                                                  │ 6.0      │ obligatoria │ 2     │ 2            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 71 │ Virología                                                    │ 6.0      │ obligatoria │ 2     │ 2            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 72 │ Bases moleculares del desarrollo vegetal                     │ 4.5      │ obligatoria │ 3     │ 1            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 73 │ Fisiología animal                                            │ 4.5      │ obligatoria │ 3     │ 1            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 74 │ Metabolismo y biosíntesis de biomoléculas                    │ 6.0      │ obligatoria │ 3     │ 1            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 75 │ Operaciones de separación                                    │ 6.0      │ obligatoria │ 3     │ 1            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 76 │ Patología molecular de plantas                               │ 4.5      │ obligatoria │ 3     │ 1            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 77 │ Técnicas instrumentales básicas                              │ 4.5      │ obligatoria │ 3     │ 1            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 78 │ Bioinformática                                               │ 4.5      │ obligatoria │ 3     │ 2            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 79 │ Biotecnología de los productos hortofrutículas               │ 4.5      │ obligatoria │ 3     │ 2            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 80 │ Biotecnología vegetal                                        │ 6.0      │ obligatoria │ 3     │ 2            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 81 │ Genómica y proteómica                                        │ 4.5      │ obligatoria │ 3     │ 2            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 82 │ Procesos biotecnológicos                                     │ 6.0      │ obligatoria │ 3     │ 2            │             │ 7        │
├────┼──────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 83 │ Técnicas instrumentales avanzadas                            │ 4.5      │ obligatoria │ 3     │ 2            │             │ 7        │
└────┴──────────────────────────────────────────────────────────────┴──────────┴─────────────┴───────┴──────────────┴─────────────┴──────────┘
**/

-- Devuelve un listado con todos los departamentos que no han impartido asignaturas en ningún curso escolar.
select dp.* from departamento as dp where dp.id not in (select id_departamento from profesor pr join asignatura a on pr.id_profesor = a.id_profesor);
/**
┌────┬─────────────────────┐
│ id │       nombre        │
├────┼─────────────────────┤
│ 2  │ Matemáticas         │
│ 3  │ Economía y Empresa  │
│ 4  │ Educación           │
│ 5  │ Agronomía           │
│ 6  │ Química y Física    │
│ 7  │ Filología           │
│ 8  │ Derecho             │
│ 9  │ Biología y Geología │
└────┴─────────────────────┘
**/