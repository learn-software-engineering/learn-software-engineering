---
draft: true
weight: 401
title: "Arreglos"
description: >
  Los arreglos (arrays en inglés) son estructuras de datos fundamentales en programación que permiten almacenar y organizar colecciones de datos del mismo tipo. Dominar el uso de arrays es esencial para cualquier programador.
date: 2023-10-30
tags: ["intro", "programming", "data-structures", "arrays"]
# images:
#   - /images/banners/content/programming/0400-data-structures/0401-arrays.es.png
---

Un array es una estructura de datos que representa un conjunto de elementos, los cuales se acceden a través de índices numéricos contiguos que van desde 0 hasta el tamaño del array menos 1. Los arrays proveen acceso rápido y directo a los elementos en base a su posición.

En lenguajes como Python y Ruby, los arrays se conocen como 'listas' (lists). En Javascript se les conoce como 'arreglos' (arrays).

Los arrays son típicamente homogéneos, almacenando elementos del mismo tipo como enteros, cadenas, etc. Algunos lenguajes permiten arrays heterogéneos con valores de distintos tipos.

![Diagrama de un array](/images/content/programming/0400-data-structures-1/diagram-arrays.jpeg)

### Creación de arrays

La manera de crear arrays varía según el lenguaje de programación:

```python
MI_ARRAY = ["A", "B", "C"] # array literal
mi_array = list(range(5))  # array a partir de rango
```

Al crear un array literal se inicializan sus elementos directamente. Al construir un array vacío se especifica su tamaño pero sus elementos son inicializados con un valor default (0 para números, null para objetos, etc).

### Acceder y modificar elementos

Los elementos individuales se acceden rápidamente por su índice utilizando corchetes `[]`:

```python
my_array = ['a', 'b', 'c']
print(my_array[0]) # 'a'
print(my_array[2]) # 'c'
my_array[2] = 'z'
print(my_array[2]) # 'z'
```

Los índices comienzan en 0, por lo que en un array de tamaño N, los índices válidos están entre 0 y N-1.

Acceder a un índice inválido causa un error, por ejemplo, acceder al índice 3 en un array de tamaño 3. Esto se conoce como "index out of bounds".

### Recorrer un array

Podemos recorrer todos los elementos usando un ciclo `for`:

```python
letras = ['a', 'b', 'c']

for i in range(len(letras)):
    print(letras[i])
```

Esto imprime cada elemento en orden. `len()` devuelve la longitud total del array.

Otra forma es iterando directamente sobre los elementos:

```python
letras = ['a', 'b', 'c']

for letra in letras:
    print(letra)
```

---

## Buscar en un array

Podemos buscar un elemento en un array mediante un ciclo y comparando elemento por elemento:

```python
letras = ['a', 'b', 'c']

def buscar_en_array(array, elemento):
    for i in range(len(array)):
        if array[i] == elemento:
            return i
    return False

print(buscar_en_array(letras, 'b')) # 1
print(buscar_en_array(letras, 'z')) # False
```

Devuelve el índice si se encuentra o `False` si no se encuentra.

## Array multidimensional

Los arrays pueden tener más de una dimensión, por ejemplo matrices 2D, cubos 3D, etc.

Un array 2D se puede ver como una tabla con filas y columnas. Para acceder a un elemento se especifican dos índices, uno para la fila y otro para la columna:

```python
matrix = [
  [1, 2, 3],
  [4, 5, 6]
]

print(matrix[0][2]) # 3
print(matrix[1][0]) # 4
```

Pueden tener más dimensiones, por ejemplo un array 3D para representar pixeles en una imagen.

---

## Conclusión

Los arrays son estructuras de datos fundamentales en programación que proveen un acceso eficiente a elementos en memoria mediante índices numéricos. Tener un buen dominio de arrays, matrices y sus usos es indispensable para cualquier programador.

---

{{% alert color="info" %}}
¡Felicitaciones por llegar hasta acá! Espero que este recorrido por el universo de la programación te haya resultado tan interesante como lo fue para mí al escribirlo.

Queremos conocer tu opinión, así que no dudes en compartir tus comentarios, sugerencias y esas ideas brillantes que seguro tenés.

Además, para explorar más allá de estas líneas, date una vuelta por los ejemplos prácticos que armamos para vos. Todo el código y los proyectos los encontrás en nuestro repositorio de GitHub [learn-software-engineering/examples-programming](https://github.com/learn-software-engineering/examples-programming).

Gracias por ser parte de esta comunidad de aprendizaje. ¡Seguí programando y explorando nuevas areas en este fascinante mundo del software!
{{% /alert %}}
