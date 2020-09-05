# Materiales prácticos - TTPS Ruby

Este repositorio contiene todos los materiales relacionados a los temas de las prácticas
de la cursada de la materia Taller de Tecnologías de Producción de Software - Opción Ruby,
de la [Facultad de Informática](https://www.info.unlp.edu.ar/) de la
[Universidad Nacional de La Plata](https://www.unlp.edu.ar/).

En el apartado de _Releases_ de este repositorio se podrá encontrar la última versión
publicada de los materiales, los cuales se generan automáticamente a partir de los fuentes
que se encuentran en este repositorio.

## Desarrollo y generación local de los contenidos

Los contenidos se generan utilizando Docker y la imagen [Pandoc + Eisvogel](https://github.com/TTPS-ruby/pandoc-eisvogel)
que utiliza [Pandoc](https://pandoc.org) y la plantilla [Eisvogel](https://github.com/Wandmalfarbe/pandoc-latex-template)
para generar archivos PDF a partir de los fuentes en Markdown.

Para poder hacer esto localmente, solo basta clonar este repositorio, tener Docker
funcionando y ejecutar el script `bin/build`. Esto generará un directorio `pdfs` en el
raiz del repositorio, dentro del cual se encontrarán - dentro de sus correspondientes
subdirectorios - los PDF generados para los enunciados de `entregas`, las `explicaciones`
y las `practicas` de la materia.

## Licencia

Todos los contenidos aquí publicados se encuentran licenciados bajo [CC-BY-NC-SA-4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/deed).
