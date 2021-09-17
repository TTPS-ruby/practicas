---
title: "Trabajo Práctico Integrador: primera entrega"
subject: "Primera entrega del TPI"
titlepage: true
...

En esta primera entrega práctica vas a comenzar a plantear las bases de una herramienta que
construirás a lo largo de la cursada. En las sucesivas entregas vas a ir extendiendo su
alcance y modificando incrementalmente lo que tenés hecho hasta el momento para, finalmente,
implementar un producto más completo a partir de todos los temas que veremos en la materia.

# La herramienta

Se te ha pedido que desarrolles una herramienta para gestionar la agenda de turnos de un
policonsultorio, en el cual atienden profesionales de diferentes especialidades.

# Alcance de la primera entrega

Para completar esta primera entrega, tendrás que diseñar e implementar el modelo de datos
básico para que la herramienta provea la siguiente funcionalidad:

* Gestionar qué profesionales atienden en el policonsultorio (ver apartado **Gestión de profesionales**).
* Gestionar los turnos de cada profesional (ver apartado **Gestión de turnos**).
* Persistir la información en disco (ver apartado **Persistencia**).

En esta primera instancia, la herramienta a desarrollar se utilizará mediante la interfaz de
línea de comandos (_CLI_), para lo cual te brindamos un repositorio _template_ para que
uses como base de tu proyecto. El repositorio en cuestión está [disponible en GitHub](https://github.com/TTPS-ruby/polycon-template).

Podés generar tu proyecto a partir de la plantilla con el botón _"Use this template"_ que
GitHub agrega al repositorio _template_. Eso va a permitirte generar un nuevo repositorio
tuyo a partir del código del _template_ que la cátedra brinda, en el cual vas a poder trabajar.

Se espera que documentes en algún archivo `README` o similar las decisiones de diseño que
tomes, incluyendo una breve descripción dle modelo de datos que definiste y cualquier otro
elemento que consideres importante incluir en esa documentación del proyecto.

> Si considerás que sería bueno agregar alguna otra operación sos completamente libre de
> hacerlo, pero tené en cuenta que es necesario que la implementación del trabajo que
> realices cumpla con las operaciones básicas enumeradas en este enunciado. Es decir: te
> recomendamos que primero te asegures de cumplir con las operaciones solicitadas por la
> cátedra y luego, si te queda tiempo antes de la fecha de entrega, implementes las
> operaciones adicionales.

## Gestión de profesionales

La herramienta debe permitir realizar, al menos, las siguientes operaciones referentes a
la gestión de profesionales:

* Creación.
* Modificación de su nombre.
* Listado de profesionales.
* Borrado (siempre y cuando no tenga turnos).

> Nota: para simplificar la implementación, consideraremos que los nombres de profesionales
> son siempre únicos.

Podés consultar las operaciones esperadas y los argumentos que recibe cada una de éstas en
la plantilla para la entrega.

## Gestión de turnos

Con respecto a los turnos, en esta etapa deberás implementar las siguientes operaciones
sobre las notas:

* Creación.
* Reprogramación de un turno (cambio de fecha y/u hora).
* Modificación de los datos de un turno (excluida su fecha).
* Listado de turnos por profesional y día.
* Visualización de detalles de un turno por profesional y fecha.
* Cancelación de un turno por profesional y fecha.
* Cancelación de todos los turnos por profesional.

Podés consultar las operaciones esperadas y los argumentos que recibe cada una de éstas en
la plantilla para la entrega.

## Persistencia

La información ingresada deberá persistirse utilizando archivos de texto plano en el sistema
de archivos local. Cada turno se representará con un archivo, que tendrá las siguientes
características:

* Su nombre será la fecha del turno en formato `AAAA-MM-DD_HH-II`, deberá ser único dentro
  del directorio que lo contenga, y su terminación o extensión será `.paf` (por _Polycon Appointment File_).
  * `AAAA` indica cuatro dígitos para el año.
  * `MM` indica dos dígitos para el mes.
  * `DD` indica dos dígitos para el día.
  * `HH` indica dos dígitos para la hora.
  * `II` indica dos dígitos para el minuto.
* El contenido del archivo será de texto plano, y tendrá la información referente al turno,
  ingresada de a un dato por línea, respetando el orden, para los siguientes campos posibles:
  * Apellido de quien ha solicitado el turno.
  * Nombre de quien ha solicitado el turno.
  * Teléfono de quien ha solicitado el turno.
  * Notas adicionales sobre el turno (único campo opcional).

Los turnos se organizarán en directorios que representarán cada profesional que atienda en
el policonsultorio. A modo de ejemplo: la profesional `Alma Estevez` tendrá un directorio
donde se almacenarán los archivos que representan sus turnos. Queda a tu criterio si el
nombre del directorio contendrá espacios o si preferís que los mismos sean remplazados por
guiones bajos (`Alma_Estevez`) - lo importante es que hagas un uso adecuado de las rutas
del sistema de archivos al referenciar los directorios y sus archivos.

Para simplificar la implementación, el directorio raíz donde se guardarán todos los turnos
será siempre el mismo: el directorio `.polycon` dentro del directorio personal (_"Home"_)
del usuario que ejecute la herramienta. Tené en cuenta que deberás asegurarte de que este
directorio exista antes de realizar cualquier lectura o escritura de información.

# Modalidad de la entrega

El trabajo, como se ha indicado anteriormente, debe desarrollarse de manera individual.
Los trabajos entregados se compararán para encontrar posibles similitudes en su estructura
que pudieran provenir de copias entre distintas entregas.

La entrega de esta primera etapa, al igual que las próximas etapas de entrega del Trabajo
Práctico Integrador (TPI), es de caracter obligatorio pero no así su aprobación. La única
etapa del TPI que debe ser aprobada es la última (la entrega final). Es decir que en esta
etapa podés entregar algo incompleto y con eso será suficiente, pero **tené en cuenta que
todo lo que no implementes en esta etapa vas a tener que implementarlo más adelante**.

**Quienes no realicen esta entrega no podrán presentarse a ninguna entrega posterior.**
Podés no aprobarla, pero es obligatorio que presentes una entrega ‐ aún cuando esté incompleta ‐
en la que se vea que trabajaste.

Tu trabajo tiene que estar versionado en un repositorio Git de GitHub, cuya URL nos
entregarás mediante una tarea dedicada a esta primera etapa del TPI en el curso de la plataforma
de Cátedras. En caso que el repositorio sea privado, vamos a necesitar que nos brindes
acceso al repositorio para poder descargarlo. Si esta es tu situación, por favor consultá
antes de la fecha límite de la entrega con el Jefe de Trabajos Prácticos de la materia a
qué usuarios de GitHub debés brindarles acceso.

El proyecto debería comenzarse a partir de la plantilla que la cátedra te provee a modo de
 _template repository_ de GitHub (por eso la limitación al hosting para el repositorio Git),
 que se encuentra disponible en [https://github.com/TTPS-ruby/polycon-template](https://github.com/TTPS-ruby/polycon-template).

La fecha límite de entrega del trabajo será comunicada en el curso de la plataforma de
Cátedras, y no se admitirán entregas posteriores a esa fecha.
