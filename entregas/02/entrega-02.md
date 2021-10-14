---
title: "Trabajo Práctico Integrador: segunda entrega"
subject: "Segunda entrega del TPI"
titlepage: true
...

En esta segunda entrega, continuaremos agregando funcionalidad a la herramienta de gestión de turnos del policonsultorio, de manera que quienes la utilicen
puedan exportar grillas diarias o semanales de turnos en un formato visualmente amigable e imprimible.

# Alcance de la segunda entrega

Para esta segunda entrega deberás corregir cualquier observación que se te haya formulado
en la primera entrega, así como también completar cualquier funcionalidad que te haya quedado pendiente
de implementar. Luego, sobre esa base deberás:

* Utilizando las gemas que consideres necesarias, agregar la funcionalidad de generar grillas de turnos
  en un formato de texto rico de tu elección (HTML, PDF u otro).
* Implementar los comandos necesarios para generar las grillas antes mencionadas, según se indique
  mediante argumentos, de:
  * Los turnos en un día particular, opcionalmente filtrando por un o una profesional.
  * Los turnos en una semana particular, opcionalmente filtrando por un o una profesional.
* Realizar las modificaciones necesarias en tu modelo de datos y elementos de soporte para que las
  operaciones antes mencionadas funcionen correctamente.

## Sobre las grillas

En el aspecto visual, las grillas pueden ser representadas como tablas, donde el eje vertical
represente las horas del día y el eje horizontal represente el o los días (en el caso de una grilla
semanal) a mostrar. Cada celda representará un bloque donde pueden haber turnos de uno/a o más
profesionales, en los cuales se mostrará el nombre de paciente que tiene el turno, o quedará en
blanco en caso que el turno no esté tomado.

Implementar una grilla de turnos que sea visualmente amigable no es un tema trivial, por lo cual
podrás hacer algunas concesiones con respecto a su estructura, de manera que su desarrollo
no exceda la complejidad esperada para esta entrega. Las concesiones permitidas serán:

* Podés asumir que la grilla mostrará la información en bloques de duración fija (cada 15
  minutos, por ejemplo), y que cada turno se considera como que durará el total de tiempo
  del bloque en el que esté.
* Podés asumir que los turnos de un/a mismo/a profesional no se solaparán dentro de un mismo
  bloque (es decir, no habrían _sobreturnos_). Esto no es válido para turnos de distintos/as
  profesionales.
* Podés asumir que los turnos se dan siempre respetando el horario de comienzo de cada bloque
  de la grilla - es decir, si la grilla es cada 15 minutos, los turnos siempre se darán en los
  minutos 0, 15, 30 ó 45 de cada hora.

Todas las concesiones antes mencionadas son a fin de simplificar la implementación de esta nueva
funcionalidad. Cada una es opcional, lo que quiere decir que si no considerás que alguna afecte
positivamente tu desarrollo, podés obviarla sin problemas.

El único requisito en este apartado es, como lo solicitamos en general, que documentes las
decisiones que tomes al respecto - en este caso que documentes qué cosas de las antes mencionadas
vas a asumir para tu proyecto.

## Sobre los formatos de archivo de salida

Las grillas deberán generarse utilizando un formato visualmente rico, siendo algunos ejemplos
de estos formatos ricos HTML y PDF. Es decisión tuya qué formato en particular utilizarás en tu
desarrollo, siendo necesario que incluyas un apartado sobre la decisión y sus motivos en la
documentación del proyecto.

# Modalidad de la entrega

Para esta segunda entrega, aplican las mismas condiciones que para la entrega anterior:

* El trabajo es invididual.
* La entrega es obligatoria, pero no su aprobación. **Quienes no realicen esta entrega no podrán
  presentarse a ninguna entrega posterior.**
* Se debe utilizar el mismo repositorio Git que para la primera entrega y partir del código
  de la entrega anterior.
* La fecha límite de entrega del trabajo será comunicada en el curso de la plataforma de
  Cátedras, y no se admitirán entregas posteriores a esa fecha.
