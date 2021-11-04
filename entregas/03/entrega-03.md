---
title: "Trabajo Práctico Integrador: entrega final"
subject: "Entrega final del TPI"
titlepage: true
...

En esta tercera y última entrega, integraremos el modelo de datos implementado en las
entregas anteriores dentro de una aplicación web Ruby on Rails. Se continuará con la misma
funcionalidad de base (el manejo de turnos y profesionales de un policonsultorio, con la
posibilidad de exportar la grilla diaria o semanal de turnos), pero se realizarán cambios
importantes en los siguientes aspectos de la implementación que actualmente tenés hecha:

* La interfaz de usuario (UI) pasará de estar basada en la interfaz de linea de comandos
  (CLI) a tener una interfaz más gráfica, basada en tecnologías Web.
* Los elementos del modelo de datos (turnos y profesionales) se dejarán de persistir
  utilizando archivos y directorios, respectivamente, para almacenarse en una base de datos
  estructurada (SQL). Esto puede impactar también en las restricciones anteriormente
  consideradas respecto de los nombres de profesional, por ejemplo.

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

* Crear una nueva aplicación Ruby on Rails utilizando la versión estable más reciente del
  framework (`6.1.4.1` al momento de elaboración de este documento).
* Migrar la lógica existente de tu modelo de datos que siga siendo relevante para el nuevo
  alcance del proyecto a la aplicación Rails. Tené en cuenta que esto seguramente implique
  no sólo copiar el código, sino también adaptarlo para que encaje correctamente en la
  aplicación. El principal ejemplo de esto será la eliminación de los namespaces `Polycon`
  y cualquier namespace contenido en éste.
* Adaptar la capa de persistencia de tu modelo de datos para que utilice `ActiveRecord`
  para guardar turnos y profesionales. Esto hará, por ejemplo, que dejen de tener sentido
  todas las partes de la lógica que manejan archivos para guardar o leer turnos, y las
  que manejan directorios para mantener la estructura de profesionales, ya que todos esos
  elementos del dominio de la aplicación pasarán a ser persistidos en base de datos.
  También implicará el uso de migraciones para generar la estructura de la base de datos en
  la que se almacenarán los datos.
* Implementar las validaciones necesarias para que el modelo de datos sólo permita la
  persistencia de elementos que sean válidos según las restricciones que impongas en la
  base de datos y acorde al dominio de la aplicación - por ejemplo, validar que un o una
  profesional tenga nombre, o que su nombre no exceda los _N_ caracteres, o que un turno
  tenga toda la información necesaria para poder ser persistido.
* Eliminar el código de las entregas anteriores de tu proyecto que ya no sea necesario.
* Documentar las decisiones de diseño que tomes.

Al alcance definido hasta este momento, se le agrega el requerimiento de manejo de usuarias
y usuarios de la aplicación. Éstas personas tendrán un mecanismo de identificación mediante
el cual se autenticarán ante la aplicación y éso les brindará la posibilidad de realizar
operaciones sobre las y los profesionales y/o los turnos. Cada persona tendrá uno de los
siguientes roles asociados:

* Consulta: podrá ver información de profesionales y turnos, pero no podrá realizar cambios
  (modificar o borrar) ningún dato del sistema.
* Asistencia: podrá gestionar por completo los turnos, pero no podrá modificar ni borrar
  profesionales.
* Administración: podrá hacer cualquier operación en el sistema.

Esto conllevará la necesidad de implementar mecanismos de autenticación y autorización para
que las personas puedan identificarse con sus credenciales y acceder solamente a aquellos
datos u operaciones que su rol les permita. Las personas no autenticadas no podrán acceder
a ningún dato del sistema. En este sentido, va a ser necesario que el set de datos inicial
del proyecto considere la creación de al menos una persona por cada rol existente, y que
se brinde un módulo de gestión de personas para poder dar de alta o modificar las
existentes.

Adicionalmente, deberás implementar la UI para poder realizar las operaciones que se
permiten hacer con las y los profesionales y sus turnos. Para eso, tendrás que desarrollar
controladores con acciones y vistas asociadas para presentar a la persona que haya accedido
a la aplicación:

* Las y los profesionales existentes, con la posibilidad de:
  * Crear profesionales.
  * Modificar profesionales.
  * Borrar profesionales (manteniendo la restricción existente de que no deba tener turnos
    asociados).
* Los turnos existentes, pudiendo en este aspecto:
  * Crear nuevos turnos.
  * Modificar un turno (reprogramarlo, o cambiarle cualquier otro dato).
  * Cancelar (borrar) un turno.
  * Visualizar la información completa de un turno.
* La exportación de la grilla de turnos, ya sea diaria o semanal, la cual deberá permitir
  indicar el día o semana a procesar, y generará un archivo que se brindará como descarga
  a la persona - esto es: aún si generase una tabla en formato HTML, esta no se mostrará
  en la página si no que se enviará como un archivo descargable desde el controller.

La forma en que implementes el flujo de interacción será tu decisión, pero se deben ofrecer
de manera clara y sencilla las mismas operaciones que se especificaron en las entregas
anteriores.

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
* **La entrega es obligatoria, así como también su aprobación**. Sólo podrán acceder a esta
  instancia quienes hayan realizado en tiempo y forma las entregas anteriores.
* Se debe utilizar el mismo repositorio Git que para la primera entrega, y partiendo del
  código de tu entrega anterior.
* Esta instancia contará con:
  * Una primera entrega final, cuya fecha se notificará por la plataforma de Cátedras, que
    tendrá un coloquio de defensa.
  * Una reentrega para quienes no aprueben en la fecha anterior. Esta reentrega, salvo se
    te indique lo contrario en tu caso particular, no tendrá coloquio de defensa.
* La aprobación de esta entrega en cualquiera de sus dos fechas implicará la aprobación de
  la cursada. El final de la materia se obtendrá, una vez aprobada la cursada, coordinando
  con el Profesor los requerimientos específicos para tal fin.
