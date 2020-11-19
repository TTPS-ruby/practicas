---
title: "Trabajo Práctico Integrador: segunda entrega"
subject: "Segunda entrega del TPI"
titlepage: true
...

En esta segunda entrega, continuaremos agregando funcionalidad a la herramienta de manejo
de notas que desarrollaste para la entrega anterior, de manera que quienes la utilicen
puedan dar formato al texto dentro de las notas y generar archivos visualmente ricos para
compartir (en formato HTML o PDF, por ejemplo).

# Alcance de la segunda entrega

Para esta segunda entrega deberás corregir cualquier observación que se te haya formulado
en la primera entrega, así como también completar cualquier funcionalidad que te haya
quedado pendiente de implementar. Sobre esa base, deberás:

* Utilizar una o más gemas para exportar las notas, convirtiendo el contenido desde el texto
  plano a un formato rico de tu elección (HTML, PDF u otro).
* Implementar los comandos necesarios para realizar la exportación, según se indique mediante
  argumentos, de:
  * Una nota en particular.
  * Todas las notas de un cuaderno en particular.
  * Todas las notas presentes en todos los cuadernos del cajón de notas.
* Realizar las modificaciones necesarias en tu modelo de datos y elementos de soporte para
  que las operaciones antes mencionadas funcionen.

## Sobre los formatos y la exportación de las notas

Las notas deberán poder convertirse en archivos en un formato visualmente rico de tu
elección. Para que dicha conversión sea funcionalmente completa, deberás definir un formato
a utilizar en el contenido de las notas que te permita luego generar el archivo rico
(mínimamente debe soportar: negrita, cursiva, títulos en distintos niveles, y links).
Algunos ejemplos de formatos en texto plano que permiten agregar _markup_ para especificar
elementos de texto rico son: Markdown, reStructuredText, o MediaWiki, entre otros.

Es decisión tuya tanto qué formato de texto plano utilizarás para el contenido de las notas,
como qué formato visualmente rico de salida usarás en la exportación. Sea cual fuere tu
elección, es necesario que la documentes en el proyecto.

En el mismo sentido, para la exportación de múltiples notas en una sola operación, dejamos
a tu criterio si la operación generará muchos archivos (uno por nota exportada), respetando
la estructura de directorios que plantean los cuadernos de notas; o si la misma generará
un único archivo que contendrá todas las notas (en cuyo caso debería consignarse a qué
cuaderno pertenece cada nota de manera clara).

# Modalidad de la entrega

Para esta segunda entrega, aplican las mismas condiciones que para la entrega anterior:

* El trabajo es individual.
* La entrega es obligatoria, pero no su aprobación. **Quienes no realicen esta entrega no
  podrán presentarse a ninguna entrega posterior.**
* Se debe utilizar el mismo repositorio Git que para la primera entrega, y partiendo del
  código de tu entrega anterior.
* Esta instancia tendrá su coloquio de defensa posterior a la fecha límite de entrega.
* La fecha límite de entrega del trabajo será comunicada en el curso de la plataforma de
  Cátedras, y no se admitirán entregas posteriores a esa fecha.
