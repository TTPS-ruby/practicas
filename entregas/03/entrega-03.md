---
title: "Trabajo Práctico Integrador: entrega final"
subject: "Entrega final del TPI"
titlepage: true
...

En esta tercera y última entrega, integraremos el modelo de datos implementado en las
entregas anteriores dentro de una aplicación web Ruby on Rails. Se continuará con la misma
funcionalidad de base (el manejo de notas organizadas en cuadernos, con la posibilidad de
exportar las notas en un formato de texto rico), pero se realizarán cambios importantes en
los siguientes aspectos de la implementación que actualmente tenés hecha:

* La interfaz de usuario (UI) pasará de estar basada en la interfaz de linea de comandos
  (CLI) a tener una interfaz más gráfica, basada en tecnologías Web.
* Las notas y los cuadernos se dejarán de persistir utilizando archivos y directorios,
  respectivamente, para almacenarse en una base de datos estructurada (SQL). Esto impactará
  también en las restricciones anteriormente planteadas respecto de los nombres de las notas
  y los cuadernos, por ejemplo.

Estos cambios obviamente conllevan la toma de nuevas decisiones de diseño, la migración del
código existente para adecuarlo a la estructura de una aplicación Ruby on Rails, y la
eliminación de gran parte del código (toda aquella parte del proyecto relacionada con
elementos funcionales que ya no estén dentro del alcance, como puede ser el manejo de las
interacciones mediante CLI), entre otras acciones que deberás realizar para implementar lo
solicitado para esta instancia.

# Alcance de la última entrega

Para esta entrega deberás corregir cualquier observación que se te haya formulado en las
entregas anteriores, así como también completar cualquier funcionalidad que te haya quedado
pendiente de implementar que aún esté dentro de lo necesario para esta última instancia.
Sobre esa base, deberás:

* Crear una nueva aplicación Ruby on Rails utilizando la versión más reciente de este
  framework (`6.1.0` al momento de elaboración de este documento).
* Migrar la lógica existente de tu modelo de datos que siga siendo relevante para el nuevo
  alcance del proyecto, a la aplicación Rails. Tené en cuenta que esto seguramente implique
  no sólo copiar el código, sino también adaptarlo para que encaje correctamente en la
  aplicación.
* Adaptar la capa de persistencia de tu modelo de datos para que utilice `ActiveRecord`
  para guardar las notas y los modelos. Esto hará, por ejemplo, que dejen de tener sentido
  todas las partes de la lógica que manejan archivos para guardar o leer las notas, y las
  que manejan directorios para mantener la estructura de los cuadernos, ya que todos esos
  elementos del dominio de la aplicación pasarán a ser persistidos en base de datos.
  También implicará el uso de migraciones para generar la estructura de la base de datos en
  la que se almacenarán los datos.
* Implementar las validaciones necesarias para que el modelo de datos sólo permita la
  persistencia de elementos que sean válidos según las restricciones que impongas en la
  base de datos y acorde al dominio de la aplicación - por ejemplo, validar que una nota
  tenga título, o que su título no exceda los _N_ caracteres.
* Eliminar el código de las entregas anteriores de tu proyecto que ya no sea necesario.
* Documentar las decisiones de diseño que tomes.

Al alcance definido hasta este momento, se le agrega la noción de _propiedad_ de las notas
y los cuadernos, los cuales tendrán una persona dueña, que es quien los haya creado en la
aplicación, y no podrá ser modificada para ninguna nota o cuaderno. Cada persona podrá ver
únicamente las notas y los cuadernos que sean de su propiedad, y no podrá acceder de
ninguna forma a las notas o los cuadernos de otras personas. Esto conllevará la necesidad
de implementar mecanismos de autenticación y autorización para que las personas puedan
identificarse con sus credenciales y acceder solamente a aquellos datos que les
pertenezcan. Las personas no autenticadas no podrán acceder a ninguna nota ni crear una,
pero sí podrán registrarse para crear una cuenta y utilizar el servicio.

Adicionalmente, deberás implementar la UI para poder realizar las operaciones que se
permiten hacer con las notas y los cuadernos. Para eso, tendrás que desarrollar
controladores con acciones y vistas asociadas para presentar a la persona sus notas y
cuadernos existentes, la posibilidad de crear nuevos cuadernos, nuevas notas, ver el
contenido de las mismas y exportarlas en formato de texto rico. Cómo implementes el flujo
de interacción será tu decisión, pero se deben ofrecer de manera clara y sencilla las
mismas operaciones que se especificaron en las entregas anteriores.

No te solicitaremos ninguna estructura, tecnología o modelo de interacción en particular
para la UI. Esas decisiones son de diseño y, como tales, quedan a tu discreción; desde la
Cátedra únicamente esperamos una usabilidad aceptable de la aplicación.

## Stack tecnológico

* **Ruby** MRI, en una versión reciente (`2.5` o posterior).
* **Ruby on Rails**, en su versión más reciente.
* **Base de datos SQL**: SQLite, MySQL, o PostgreSQL. Si no sabés cuál elegir, usá SQLite.

Los requisitos para poder ejecutar la aplicación, así como también los pasos para tenerla
funcionando localmente, deberán ser debidamente documentados como parte de la entrega.

# Modalidad de la entrega

* El trabajo es individual.
* La entrega es obligatoria, así como también su aprobación. Sólo podrán acceder a esta
  instancia quienes hayan realizado en tiempo y forma las entregas anteriores junto con sus
  correspondientes coloquios.
* Se debe utilizar el mismo repositorio Git que para la primera entrega, y partiendo del
  código de tu entrega anterior.
* Esta instancia contará con:
  * Una entrega con fecha límite el 8 de febrero de 2021 que tendrá su coloquio de defensa
    correspondiente el 11 de febrero de 2021, en el horario de práctica.
  * Una reentrega (para quienes no aprueben en la fecha anterior), el 19 de febrero de 2021.
    La reentrega, salvo se te indique lo contrario en tu caso particular, no tendrá coloquio
    de defensa.
* La aprobación de esta entrega en cualquiera de sus dos fechas implicará la aprobación de
  la cursada. El final de la materia se obtendrá, una vez aprobada la cursada, coordinando
  con el Profesor los requerimientos específicos para tal fin.
