---
type: docs
authors: ["jnonino"]
series: ["Programming"]
nav_weight: 201
title: "Variables y tipos de datos"
description: "Entender cómo funcionan las variables y los tipos de datos es fundamental para dominar cualquier lenguaje de programación. En este artículo repasaremos los conceptos básicos sobre variables, operadores, tipos de datos y conversiones de tipo utilizando el lenguaje Python. Cubriremos tanto la teoría como ejemplos prácticos para que puedas aplicar estos conceptos en tus propios programas."
date: 2023-03-13
tags: ["intro", "programming", "variables", "data-types"]
images:
  - /images/banners/programming-course.es.png
---

## Variables

Una variable es un contenedor para almacenar datos en la memoria de la computadora. Podemos pensar en ella como una caja con una etiqueta. La etiqueta es el nombre de la variable y dentro de la caja se almacena su valor.

Para declarar una variable en Python solo escribimos el nombre y le asignamos un valor:

```python
edad = 28
precio = 19.95
soltero = True
```

Los nombres de variables deben comenzar con letras o guión bajo, y sólo pueden contener letras, números y guiones bajos. Se recomienda usar nombres significativos que representen el propósito de la variable.

En Python las variables no necesitan ser declaradas con un tipo particular. El tipo se infiere automáticamente al asignar el valor:

```python
edad = 28 # edad es de tipo entero (int)
precio = 19.95 # precio es de tipo float
estudiante = True # soltero es de tipo booleano
```

Una vez asignada, una variable puede cambiar su valor en cualquier momento:

```python
edad = 30 # Cambiamos edad a 30
```

### Alcance y tiempo de vida

El **alcance** de una variable se refiere a las partes del código donde está disponible. Las variables declaradas fuera de funciones son globales y están disponibles en todo el archivo. Las variables dentro de una función son locales y solo visibles dentro de ella.

El **tiempo de vida** es el período durante el cual existe la variable en memoria. Las variables locales existen mientras se ejecuta la función, luego son destruidas. Las globales existen mientras el programa está en ejecución.

### Asignación

La asignación con el operador `=` permite cambiar o inicializar el valor de una variable:

```python
numero = 10
numero = 20 # Ahora numero vale 20
```

También existen los operadores de asignación compuesta como `+=` y `-=` que combinan una operación y asignación:

```python
numero += 5 # Suma 5 a numero (numero = numero + 5)
numero -= 2 # Resta 2 a numero
```

## Tipos de datos

Los tipos de datos definen el tipo de valor que puede almacenar una variable. Python tiene varios tipos incorporados, incluyendo:

**Numéricos**: Para almacenar valores numéricos como enteros, flotantes, complejos:

```python
entero = 10
flotante = 10.5
complejo = 3 + 4j
```

**Cadenas**: Para almacenar texto:

```python
texto = "Hola Mundo"
```

**Booleano**: Para valores lógicos Verdadero o Falso:

```python
variable_verdadera = True
variable_falsa = False
```

**Colecciones**: Para almacenar múltiples valores como listas, tuplas y diccionarios:

- **Listas**: Secuencias mutables de valores:

  ```python
  lista = [1, 2, 3]
  ```

- **Tuplas**: Secuencias inmutables de valores:

  ```python
  tupla = (1, 2, 3)
  ```

- **Diccionarios**: Estructuras de pares llave-valor:

  ```python
  diccionario = {"nombre":"Juan", "edad": 20}
  ```

Es importante elegir el tipo de dato que mejor represente la información que queremos almacenar.

## Operadores

Los operadores nos permiten realizar operaciones con valores y variables en Python. Algunos operadores comunes son:

- Aritméticos: `+, -, *, /, %, //, **`

- Comparación: `==, !=, >, <, >=, <=`

- Lógicos: `and, or, not`

- Asignación: `=, +=, -=, *=, /=`

Veamos ejemplos concretos de expresiones usando estos operadores en Python:

```python
# Aritméticos
5 + 4 # Suma, resultado 9
10 - 3 # Resta, resultado 7
4 * 5 # Multiplicación, resultado 20

# Comparación
5 > 4 # Mayor que, resultado Verdadero
7 < 10 # Menor que, resultado Verdadero

# Lógicos
True and False # Resultado False
True or False # Resultado True
not True # Resultado False

# Asignación
numero = 10
numero += 5 # Suma 5 a numero, equivalente a numero = numero + 5
```

Cada tipo de operador trabaja con tipos de datos específicos. Debemos usarlos de forma consistente según el tipo de datos de nuestras variables.

## Conversiones de tipo

A veces necesitamos convertir un tipo de dato a otro para realizar ciertas operaciones. En Python podemos convertir de forma explícita o implícita:

**Explícita**: Usando funciones como `int()`, `float()`, `str()`:

```python
flotante = 13.5
entero = int(flotante) # convierte 13.5 a 13

texto = "100"
numero = int(texto) # convierte "100" a 100
```

**Implícita**: Python convierte automáticamente en algunos casos:

```python
entero = 100
flotante = 3.5
resultado = entero + flotante # resultado es 103.5, entero se convirtió a float
```

Algunas conversiones pueden generar pérdida de datos o errores:

```python
flotante = 13.5
entero = int(flotante)

print(entero) # 13, se pierden los decimales
```

Para prevenir esto debemos elegir explícitamente conversiones que tengan sentido para nuestros datos.

## Conclusión

En este artículo revisamos conceptos clave como variables, operadores, tipos de datos y conversiones en Python. Aplicar bien estos conceptos te permitirá manipular datos de forma eficiente en tus programas. Recomiendo practicar con ejemplos propios para ganar experiencia en usar estas características. ¡Éxitos en tu aprendizaje de Python!

## Referencias

- Downey, A. B. (2015). *Think Python: How to think like a computer scientist*. Needham, Massachusetts: Green Tea Press.

- McKinney, W. (2018). *Python for data analysis: Data wrangling with Pandas, NumPy, and IPython*. O'Reilly Media.

- Matthes, E. (2015). *Python crash course: A hands-on, project-based introduction to programming*. No Starch Press.

- Lutz, M. (2013). *Learning Python: Powerful Object-Oriented Programming*. O'Reilly Media, Incorporated.
