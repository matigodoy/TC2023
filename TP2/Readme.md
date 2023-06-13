# Trabajo Práctico 2

## Contexto

En el marco de la asignatura "Técnicas de Compilación" de la carrera de Ingeniería Informática, se ha desarrollado un analizador sintáctico y semántico para el lenguaje de programación C. El objetivo del trabajo fue construir un sistema que, dada una entrada de código en lenguaje C, genere como salida el Árbol Sintáctico y la Tabla de Símbolos de cada contexto, y que sea capaz de detectar y reportar varios errores comunes de programación.

## Requisito

Se nos solicitó crear un analizador sintáctico de tal forma que pueda reconocer errores de sintaxis tan simples como el de la carencia de un punto y coma, como de errores más groseros como la falta de declaración de una variable. Todo esto siguiendo el repositorio provisto por el profesor Eschoyez Maximiliano y en Java.

## Solución Propuesta

Para abordar esta problemática, se ha utilizado ANTLR, una poderosa herramienta para la generación de parsers, junto con el lenguaje de programación Java. El primer paso en el desarrollo de la solución fue la creación de una gramática ANTLR para el lenguaje C. En esta gramática se definieron varias reglas de producción para describir la sintaxis del lenguaje C y para detectar errores sintácticos específicos.

## Conclusión

A través de la implementación de este analizador sintáctico y semántico, se ha desarrollado una herramienta valiosa para el análisis de código en lenguaje C. Este trabajo ha demostrado la utilidad de ANTLR y Java en la creación de este tipo de herramientas y ha proporcionado una sólida base sobre la cual se pueden añadir funcionalidades adicionales en el futuro. Así mismo, ha permitido una comprensión más profunda de los principios y técnicas subyacentes en la compilación de lenguajes de programación.

## Integrantes

- Darré, Juan Cruz
- Godoy Cabrera, Lucas Matias