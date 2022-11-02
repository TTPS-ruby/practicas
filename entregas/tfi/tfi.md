---
title: "Trabajo Final Integrador"
subject: "Enunciado"
titlepage: true
...

En este Trabajo Final Integrador, buscaremos que apliques los conocimientos adquiridos en
la materia para resolver un problema real, basado en un caso hipotético. El objetivo de la
implementación que deberás hacer es tener un sistema que permita resolver las necesidades
expuestas en este documento.

# Contexto

Un importante banco de la Argentina está buscando modernizar la forma en que gestionan los
turnos para atención presencial en sus sucursales, y para eso te encomendaron un desarrollo.
En la actualidad, cualquier cliente debe acercarse a la sucursal para solicitar un turno
para atención, y luego esperar a que se le llame. El banco quiere poder ofrecer un sistema
de turnos online, para que cualquier persona pueda solicitar un turno para ser atendido en
una sucursal.

# Requisitos técnicos

El desarrollo debe realizarse utilizando el siguiente stack tecnológico:

* Una versión reciente de Ruby (`2.7` o superior).
* La versión estable más reciente del framework Ruby on Rails (`7.0.4` al momento de escribir
  este documento).
* Una base de datos SQL (puede ser SQLite, PostgreSQL o MySQL). En caso de no tener experiencia
  en este apartado, recomendamos utilizar SQLite.

# Alcance

Te han solicitado que el sistema de gestión de turnos provea el siguiente conjunto de
funcionalidades:

* Gestionar las sucursales del banco (ver apartado **Gestión de sucursales**).
* Gestionar los horarios de atención de las sucursales (ver apartado **Gestión de horarios**).
* Gestionar los usuarios (ver apartado **Gestión de usuarios**).
* Gestionar los turnos (ver apartado **Gestión de turnos**).

## Gestión de sucursales

Las sucursales bancarias deberán tener, como mínimo, los siguientes atributos (todos requeridos):
nombre (único), dirección y teléfono.

El sistema debe permitir gestionar las sucursales del banco. Para esto, se debe brindar una
interfaz de administración que permita:

* Dar de alta una sucursal.
* Modificar una sucursal existente.
* Visualizar una lista de todas las sucursales existentes.
* Visualizar la información completa de una sucursal, incluidos sus horarios de atención.
* Eliminar una sucursal, siempre y cuando no tenga turnos pendientes de ser atendidos.

## Gestión de horarios

Los horarios de atención de las sucursales estarán asociados a una sucursal, y deberán
permitir definir distintos horarios de atención para distintos días. Por ejemplo, una sucursal
podría tener un horario de atención de 9 a 13hs los lunes, miércoles y viernes, y de 10 a
15hs los martes y jueves.

Para simplificar la lógica, se puede asumir que por día de la semana se definirá un único
rango horario de atención (es decir no se permitirá definir horarios de atención cortados
o que se superpongan dentro del mismo día de la semana). Además de esto, no se deberán
considerar situaciones excepcionales como feriados ni días no hábiles de ningún tipo.

## Gestión de usuarios

Los usuarios tendrán una identificación (puede ser nombre de usuario o correo electrónico),
una contraseña y un rol. Los roles posibles son:

* `Administrador`.
* `Personal bancario`, que además de los atributos antes mencionados deberá tener una
  sucursal asignada (dato obligatorio solo para usuarios de este rol).
* `Cliente`.

A continuación se detalla qué operaciones puede realizar cada rol:

* `Administrador` puede:
  * Visualizar los datos de su perfil de usuario.
  * Modificar su contraseña.
  * Gestionar todas las sucursales.
  * Gestionar los horarios de atención de todas las sucursales.
  * Gestionar todos los usuarios.
* `Personal bancario` puede:
  * Visualizar los datos de su perfil de usuario.
  * Modificar su contraseña.
  * Visualizar la información de cualquier sucursal.
  * Consultar y atender turnos de su sucursal (no puede acceder a ningún tipo de operación
    de los turnos de otras sucursales distintas de la propia). Al atender un turno, le
    deberá cargar al mismo un comentario que indique el resultado de la atención (requerido),
    y se cambiará el estado del turno a `atendido`, guardando la información que indique
    qué usuario `Personal bancario` fue el que atendió el turno.
  * Visualizar la información de los usuarios con rol `Cliente` (no puede acceder a ningún
    tipo de operación de los usuarios con rol `Administrador` o `Personal bancario`).
* `Cliente` puede:
  * Visualizar los datos de su perfil de usuario.
  * Modificar su contraseña.
  * Solicitar un turno para ser atendido en una sucursal (seleccionando la sucursal, el
    día y el horario de atención, y un motivo de la solicitud). Al solicitar un turno, el
    mismo deberá quedar en estado `pendiente`.
  * Modificar un turno propio con estado `pendiente`.
  * Cancelar un turno propio con estado `pendiente`, lo cual puede o bien cambiar el estado
    del mismo a `cancelado`, o bien eliminarlo por completo del sistema. Cualquiera sea el
    mecanismo de cancelación que elijas, el turno cancelado no deberá aparecer más en
    ninguna parte del sistema.
  * Visualizar sus propios turnos (pasados y futuros), en los cuales podrá ver la información
    referente a la atención (qué usuario atendió el turno y el comentario de resultado que
    ingresó) en los turnos que hayan sido atendidos.

Los usuarios con rol `Administrador` y `Personal bancario` solo deberán poder ser creados
por un usuario con rol `Administrador`, desde la interfaz de gestión de usuarios; en cambio
los usuarios con rol `Cliente` podrán registrarse desde la interfaz pública del sistema.

## Gestión de turnos

Los turnos estarán necesariamente asociados a una sucursal y un usuario `Cliente`, tendrán
una fecha y hora para la cita (que deberá estar dentro de los horarios de atención de la
sucursal), y un motivo de la solicitud (todos valores requeridos). Además, tendrán un estado
que refleje su situación, y una vez atendidos deberán tener un comentario de resultado,
y una referencia al usuario `Personal bancario` que lo atendió.

Los usuarios `Cliente` podrán solicitar turnos, y los usuarios `Personal bancario` podrán
atenderlos.

## Consideraciones generales

* Se espera que todos los modelos tengan las validaciones adecuadas para asegurar la
  integridad de los datos.
* Se deberá incluir un conjunto de datos de prueba para poder evaluar el sistema. Estos
  datos deberán generarse mediante el script `db/seeds.rb` del proyecto Ruby on Rails.
* No se solicitará la implementación de un diseño visual para la interfaz de usuario. Se
  espera que la interfaz de usuario sea cómoda, entendible, y lo más intuitiva posible, y
  que se pueda acceder a todas las funcionalidades a través de una navegación acorde al
  rol de usuario que se disponga; esto es que no se deberán mostrar enlaces a partes del
  sistema u operaciones a las que no se pueda acceder, ni se deberá permitir el acceso a
  éstas.
* Se deberá documentar en el archivo `README.md` del raiz del proyecto cualquier decisión
  de diseño importante que se haya tomado, así como también se deberán dejar escritos
  los requisitos técnicos y los pasos (comandos) para hacer funcionar la aplicación.

# Modalidad de la entrega

El trabajo deberá realizarse de manera individual. Los trabajos entregados se compararán
para encontrar posibles similitudes en su estructura que pudieran provenir de copias entre
distintas entregas.

Esta entrega, además, es de caracter obligatorio, y su aprobación (en cualquiera de sus
instancias) es condición necesaria para aprobar la cursada de la materia.

Tu trabajo tiene que estar versionado en un repositorio Git de GitHub, cuya URL deberás
entregarnos mediante una tarea dedicada que publicaremos en el curso de la plataforma de
Cátedras (Moodle). En caso que el repositorio sea privado, vamos a necesitar que nos brindes
acceso al mismo para poder descargarlo y evaluarlo. Si esta es tu decisión, por favor
consultá antes de la fecha límite de la entrega con el Jefe de Trabajos Prácticos para
saber a qué usuarios de GitHub deberás brindarles acceso a tu repositorio.

Las fechas límite de entrega del trabajo serán comunicadas en el curso de la plataforma de
Cátedras, y no se admitirán entregas posteriores a las mismas.
