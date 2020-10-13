---
title: "Trabajo Práctico Integrador: primera entrega"
subject: "Primera entrega del TPI"
titlepage: true
...

En esta primera entrega práctica vas a comenzar a plantear las bases de una herramienta que
construirás a lo largo de la cursada. En las sucesivas entregas vas a ir extendiendo su
alcance y modificando incrementalmente lo que tenés hecho hasta el momento para, finalmente,
implementar una herramienta más completa a partir de todos los temas que veremos en la
materia.

# La herramienta

Se te ha encomendado desarrollar una herramienta para llevar un registro personal de notas
organizadas de manera que permita acceder fácilmente a la información que éstas contienen.

La herramienta está pensada como un clon simplificado de **[Tomboy](https://wiki.gnome.org/Apps/Tomboy)**
implementado, obviamente, en Ruby. Si no conocés la aplicación, Tomboy es una aplicación
de código abierto, con licencia LGPL, que corre en entornos de escritorio que permite tomar
notas, organizarlas, conectar las notas entre sí y utilizar texto rico para el contenido
de las notas, entre otras cosas.

# Alcance de la primera entrega

Para completar esta primera entrega, tendrás que diseñar e implementar el modelo de datos
básico para que la herramienta provea la siguiente funcionalidad:

* Gestionar las notas con operaciones sencillas (ver apartado **Gestión de notas**).
* Persistir las notas en disco utilizando archivos (ver apartado **Persistencia**).
* Organizar las notas en cuadernos (ver apartado **Organización en cuadernos**).

En esta primera instancia el desarrollo será utilizable mediante la interfaz de línea de
comandos (_CLI_), para lo cual te brindamos un _template_ de proyecto para que utilices
como base de tu desarrollo.

## Persistencia

Las notas deberán persistirse utilizando archivos de texto plano en el disco. Cada nota se
representará con un archivo, que tendrá las siguientes características:

* Su nombre será utilizado como título de la nota, deberá ser único dentro del directorio
  que lo contenga, y su terminación o extensión será `.rn`.
* Su contenido será de texto plano, y se lo utilizará como el contenido de la nota. _En
  esta primera etapa sólo utilizaremos notas de texto plano (sin formato), pero puede que
  en el futuro te pidamos que las notas puedan expresarse en Markdown, LaTeX, MediaWiki, o
  cualquier otro formato que a partir de texto plano permita generar texto rico._

> **Una observación respecto de los títulos de las notas:**
>
> Tené en cuenta que hay caracteres que no podrán ser parte del título de la nota, porque
> no está permitido incluirlos en el nombre de un archivo. Esta limitación existirá
> mientras el proyecto tenga este modo de persistencia utilizando archivos, el cual - tené
> presente que - en el futuro te pediremos que cambies por otro.

El _cajón de notas_ (el lugar en el sistema de archivos donde residen físicamente todas las
notas) por defecto será el directorio `.my_rns` dentro del directorio personal (_"Home"_)
del usuario que ejecute la herramienta, lo cual opcionalmente podés hacer configurable si
así lo deseás.

## Organización en cuadernos

Las notas deben poder organizarse lógicamente en cuadernos, que serán representados con
directorios dentro del cajón de notas. Al igual que con los archivos que representan las
notas, el nombre del directorio será el nombre del cuaderno, aplicando a esto las mismas
limitaciones que con los títulos de las notas.

Las notas pueden no estar organizadas dentro de un cuaderno, para lo cual se reserva el
nombre de cuaderno "Sin organizar", al que denominaremos el _cuaderno global_.

Para simplificar la implementación no se permitirá el anidado de cuadernos, es decir que
un cuadeno no puede contener a otro(s).

## Gestión de notas `[WIP]`

La herramienta debe permitir realizar, al menos, las siguientes operaciones:

* Sobre las notas:
  * Creación de una nota.
  * Listado de notas, que puede o no filtrarse por cuaderno y/o por título.
  * Vista de una nota.
  * Modificación de una nota.
  * Borrado de una nota.
* Sobre los cuadernos:
  * Listado de los cuadernos de notas.
  * Renombrado de un cuaderno.
  * Borrado de un cuaderno.

> Si considerás que sería bueno agregar alguna otra operación sos completamente libre de
> hacerlo, pero tené en cuenta que es necesario que la implementación que hagas cumpla con
> las operaciones básicas aquí enumeradas. Es decir: te recomendamos que primero te
> asegures de cumplir con las operaciones solicitadas por la cátedra y luego, si te queda
> tiempo antes de la fecha de entrega, implementes las operaciones adicionales.

_TODO: definir qué parámetros admite cada operación. Considerar que si no se especifica un
cuaderno al crear una nota, esta quedará en el cuaderno global._

# Uso de la herramienta

_TBD_

# Modalidad de la entrega

_TBD_