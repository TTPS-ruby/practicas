---
title: "Entrega 1"
subject: "Entrega práctica 1"
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

La herramienta está pensada como un clon simplificado de [Tomboy](https://wiki.gnome.org/Apps/Tomboy)
implementado, obviamente, en Ruby. Si no estás familiarizado con la aplicación, Tomboy es
una aplicación de código abierto, con licencia LGPL, que corre en entornos de escritorio
que permite tomar notas, organizarlas, conectar las notas entre sí y utilizar texto rico
para el contenido de las notas, entre otras cosas.

# Alcance de la primera entrega

Para completar esta primera entrega, tendrás que diseñar e implementar el modelo de datos
básico para que la herramienta provea la siguiente funcionalidad:

* Gestionar las notas con operaciones sencillas (ver apartado **Gestión de notas**).
* Persistir las notas en disco utilizando archivos con una estructura especial, el formato
  `nota` (ver apartado **Persistencia**).
* Organizar las notas en cuadernos (ver apartado **Organización en cuadernos**).

En esta primera instancia el desarrollo será utilizable mediante la interfaz de línea de
comandos (_CLI_), para lo cual te brindamos un _template_ de proyecto para que utilices
como base de tu desarrollo.

## Gestión de notas

_TBD_

## Persistencia

_TBD_

## Organización en cuadernos

_TBD_

# Modalidad de la entrega

_TBD_

* * *

Generar Tomboy desde línea de comando

Se deberá generar una versión de Tomboy que pueda operar desde la línea de comandos, la aplicación debe recibir como parámetro cada una las acciones a realizar.
El aplicativo deberá permitir

1-	Buscar una nota.

2-	Listar todos los cuadernos de nota.

3-	Crear un cuaderno de notas.

4-	Crear una nota nueva.

5-	Ver nota

6-	Editar nota

7-	Eliminar nota

8-	Enlazar nota (Permite vincular a varias notas entre sí)


Al “Crear una nota nueva” se deberá permitir ingresar un nombre y seleccionar a que cuaderno pertenece la nota, sino se selecciona ninguno la nota se debe guardar en “Sin Archivar”.
