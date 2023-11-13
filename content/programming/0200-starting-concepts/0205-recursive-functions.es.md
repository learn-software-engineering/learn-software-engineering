---
type: docs
authors: ["jnonino"]
series: ["Programming"]
nav_weight: 205
title: "Funciones Recursivas"
description: "La recursión es un concepto fundamental en programación que permite que una función se llame a sí misma. A primera vista puede parecer contraintuitivo, pero dominar este enfoque abre la puerta a soluciones elegantes para ciertos problemas."
date: 2023-09-30
tags: ["programming", "functions", "recursion", "factorial", fibonacci"]
images:
  - /images/banners/content/programming/0200-starting-concepts/0205-recursive-functions.es.png
---

## Recursión: el arte de llamarse a sí mismo

Imagina una caja de espejos donde cada espejo refleja lo que ve en el siguiente, creando una serie infinita de reflejos. La recursión en programación es algo similar. Es una técnica donde una función se llama a sí misma directa o indirectamente[^1^]. Esto crea un ciclo en el cual la función resuelve un problema dividiéndolo en instancias más pequeñas del mismo problema, hasta llegar a un caso base sencillo de resolver.

Por ejemplo, imaginemos una función que imprime un contador regresivo:

```python
def cuenta_regresiva(numero):

    if numero > 0:
        print(numero)
        cuenta_regresiva(numero - 1)
    else:
        print("¡Despegue!")

cuenta_regresiva(5)
```

Esta función se llama recursivamente reduciendo el número cada vez hasta llegar a 0, y luego imprime el mensaje de despegue.

La recursión es un enfoque declarativo donde se enfoca en dividir un problema en casos recursivos sin necesidad de controlar explícitamente el bucle usando iteradores o contadores como en la programación imperativa.

---

## La estructura de una función recursiva

El poder de la recursión radica en su simplicidad. Sin embargo, es esencial entender su estructura para evitar caer en trampas comunes. Una función recursiva típica tiene dos partes principales[^2]:

1. **Caso base**: El caso más simple con una solución conocida que no requiere recursión. Es la condición de parada, que detiene la recursión. Sin el caso base, caeríamos en una recursión infinita que eventualmente desborda la pila de llamadas.
2. **Caso recursivo**: Es donde ocurre la mágica llamada recursiva. En este punto, la función se llama a sí misma con un argumento modificado, generalmente una versión reducida del problema original.

---

## Ejemplos clásicos de recursión

### Factorial

El factorial de un entero positivo {{< katex formula="n" inline=true />}} es el producto de todos los enteros positivos menores o iguales a {{< katex formula="n" inline=true />}}. Por ejemplo:

- {{< katex formula="5! = 5 * 4 * 3 * 2 * 1 = 120" inline=true />}}
- {{< katex formula="4! = 4 * 3 * 2 * 1 = 24" inline=true />}}
- {{< katex formula="3! = 3 * 2 * 1 = 6" inline=true />}}

Aquí está el código en Python para calcular el factorial usando recursión:

```python
def factorial(n):
    if n == 1:
        return 1              # Caso base
    return n * factorial(n-1) # Caso recursivo
```

- **Caso base**: El caso base es la instancia más simple y pequeña del problema que puede responderse directamente. Para el factorial, cuando {{< katex formula="n = 1" inline=true />}}, el resultado es {{< katex formula="1" inline=true />}}.
- **Caso recursivo**: Si {{< katex formula="n" inline=true />}} es mayor que {{< katex formula="1" inline=true />}}, la función se llama a sí misma con {{< katex formula="n-1" inline=true />}}, y multiplica el resultado por {{< katex formula="n" inline=true />}}.

Digamos que quieres calcular el factorial de {{< katex formula="5" inline=true />}}, así que llamas a `factorial(5)`.

Esto es lo que sucede:

1. **Paso 1**: Como {{< katex formula="n = 5" inline=true />}} no es {{< katex formula="1" inline=true />}}, la función llama a `factorial(4)`, luego multiplica el resultado por {{< katex formula="5" inline=true />}}.
2. **Paso 2**: Ahora, dentro de `factorial(4)`, {{< katex formula="n = 4" inline=true />}}, entonces la función llama a `factorial(3)`, luego multiplica el resultado por {{< katex formula="4" inline=true />}}.
3. **Paso 3**: Dentro de `factorial(3)`, {{< katex formula="n = 3" inline=true />}}, así que llama a `factorial(2)`, luego multiplica el resultado por {{< katex formula="3" inline=true />}}.
4. **Paso 4**: Dentro de `factorial(2)`, {{< katex formula="n = 2" inline=true />}}, así que llama a `factorial(1)`, luego multiplica el resultado por {{< katex formula="2" inline=true />}}.
5. **Paso 5**: Finalmente, `factorial(1)` alcanza el caso base, donde {{< katex formula="n = 1" inline=true />}}, así que retorna {{< katex formula="1" inline=true />}}.

Ahora los resultados se desenrollan:

- `factorial(2)` retorna {{< katex formula="2 * 1 = 2" inline=true />}}
- `factorial(3)` retorna {{< katex formula="3 * 2 = 6" inline=true />}}
- `factorial(4)` retorna {{< katex formula="4 * 6 = 24" inline=true />}}
- `factorial(5)` retorna {{< katex formula="5 * 24 = 120" inline=true />}}

El resultado final es {{< katex formula="120" inline=true />}}, que es el valor de {{< katex formula="5!" inline=true />}}.

Aquí hay una representación visual de la pila de llamadas:

```python
factorial(5)
  -> factorial(4)
    -> factorial(3)
      -> factorial(2)
        -> factorial(1)
          return 1
        return 2
      return 6
    return 24
  return 120
```

### Serie de Fibonacci

La serie de Fibonacci es una secuencia de números donde cada número es la suma de los dos anteriores. Comienza con {{< katex formula="0" inline=true />}} y {{< katex formula="1" inline=true />}}, y cada número posterior es la suma de los dos números anteriores. Los primeros números de la secuencia son: {{< katex formula="0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ..." inline=true />}}

Aquí está el código en Python para calcular el {{< katex formula="n^th" inline=true />}} número de Fibonacci usando recursión de cola:

```python
def fibonacci(n, a=0, b=1):
    if n == 0:
        return a
    return fibonacci(n-1, b, a+b)
```

La función toma tres parámetros:

- {{< katex formula="n" inline=true />}}: La posición del número deseado en la secuencia.
- {{< katex formula="a" inline=true />}} y {{< katex formula="b" inline=true />}}: Dos números que ayudan en el cálculo de la secuencia.

Aquí hay un desglose de cómo funciona la función:

1. **Caso Base**: Si {{< katex formula="n" inline=true />}} es {{< katex formula="0" inline=true />}}, la función devuelve {{< katex formula="a" inline=true />}}. Este es el valor del {{< katex formula="n^th" inline=true />}} número en la secuencia.

2. **Caso Recursivo**: Si {{< katex formula="n" inline=true />}} no es {{< katex formula="0" inline=true />}}, la función se llama a sí misma con {{< katex formula="n-1" inline=true />}}, {{< katex formula="b" inline=true />}}, y {{< katex formula="a+b" inline=true />}}. Estos parámetros cambian la posición en la secuencia y preparan los siguientes números para la suma.

Supongamos que queremos encontrar el {{< katex formula="5^th" inline=true />}} número en la secuencia de Fibonacci llamando a `fibonacci(5)`.

Esto es lo que sucede:

1. **Paso 1**: Dado que {{< katex formula="n = 5" inline=true />}}, llama a `fibonacci(4, 1, 1)` (porque {{< katex formula="a = 0" inline=true />}}, {{< katex formula="b = 1" inline=true />}}, {{< katex formula="a + b = 1" inline=true />}}).
2. **Paso 2**: Dado que {{< katex formula="n = 4" inline=true />}}, llama a `fibonacci(3, 1, 2)` (porque {{< katex formula="a = 1" inline=true />}}, {{< katex formula="b = 1" inline=true />}}, {{< katex formula="a + b = 2" inline=true />}}).
3. **Paso 3**: Dado que {{< katex formula="n = 3" inline=true />}}, llama a `fibonacci(2, 2, 3)` (porque {{< katex formula="a = 1" inline=true />}}, {{< katex formula="b = 2" inline=true />}}, {{< katex formula="a + b = 3" inline=true />}}).
4. **Paso 4**: Dado que {{< katex formula="n = 2" inline=true />}}, llama a `fibonacci(1, 3, 5)` (porque {{< katex formula="a = 2" inline=true />}}, {{< katex formula="b = 3" inline=true />}}, {{< katex formula="a + b = 5" inline=true />}}).
5. **Paso 5**: Dado que {{< katex formula="n = 1" inline=true />}}, llama a `fibonacci(0, 5, 8)` (porque {{< katex formula="a = 3" inline=true />}}, {{< katex formula="b = 5" inline=true />}}, {{< katex formula="a + b = 8" inline=true />}}).
6. **Paso 6**: Dado que {{< katex formula="n = 0" inline=true />}}, devuelve {{< katex formula="a" inline=true />}}, que es {{< katex formula="5" inline=true />}}.

El resultado es {{< katex formula="5" inline=true />}}, que es el {{< katex formula="5^th" inline=true />}} número en la secuencia de Fibonacci.

Aquí hay una representación visual de la pila de llamadas:

```python
fibonacci(5, 0, 1)
  -> fibonacci(4, 1, 1)
    -> fibonacci(3, 1, 2)
      -> fibonacci(2, 2, 3)
        -> fibonacci(1, 3, 5)
          -> fibonacci(0, 5, 8)
            return 5
```

---

## Ventajas y desventajas

La recursión tiene ciertas ventajas[^3]:

- Puede resultar en soluciones simples y elegantes para problemas que se dividen fácilmente en subproblemas.
- Elimina la necesidad de control de bucles explícito.
- Sigue la estructura matemática de una definición recursiva.

Las desventajas incluyen:

- Puede ser menos eficiente (alto consumo de memoria) que la iteración debido a las llamadas repetidas y creación de marcos de pila.
- Demasiada recursión puede desbordar la pila de llamadas y causar errores.
- Puede ser más difícil de depurar y analizar que la iteración.

Por lo tanto, la recursión es una herramienta poderosa que debe usarse con discreción en los casos apropiados.

---

## Recursión vs Iteración

La recursión y la iteración (usando ciclos) son paralelos y podemos usar cualquiera para resolver muchos problemas. Ambas técnicas tienen el potencial de resolver los mismos problemas, pero su implementación y eficiencia pueden variar. Tomemos el ejemplo del factorial:

**Iterativo**

```python
def factorial_iterativo(n):
    resultado = 1
    for i in range(1, n+1):
        resultado *= i
    return resultado
```

**Recursivo**

```python
def factorial_recursivo(n):
    if n == 1:
       return 1
    return n * factorial(n-1)
```

La versión iterativa es más eficiente en términos de espacio, pero la recursiva es más limpia y fácil de entender. La elección entre recursión e iteración a menudo depende del problema específico, las restricciones de memoria y las preferencias del programador.

---

## Conclusión

La recursión es una técnica clave que permite escribir algoritmos elegante, naturales y eficientes si se utiliza adecuadamente. Entender cómo dividir un problema en casos recursivos es esencial para dominar esta habilidad. La recursión ofrece una alternativa declarativa única para resolver problemas complejos sin necesidad de administrar bucles explícitos. Sin embargo, es crucial recordar siempre definir un caso base adecuado y ser consciente de las limitaciones de la recursión en términos de eficiencia y uso de memoria. Saber combinar recursión e iteración nos da flexibilidad al crear soluciones óptimas.

Como siempre, la clave está en encontrar el equilibrio adecuado y utilizar la herramienta correcta para el trabajo adecuado.

---

{{< bs/alert primary >}}
{{% markdownify %}}
¡Felicitaciones por llegar hasta acá! Espero que este recorrido por el universo de la programación te haya resultado tan interesante como lo fue para mí al escribirlo.

Queremos conocer tu opinión, así que no dudes en compartir tus comentarios, sugerencias y esas ideas brillantes que seguro tenés.

Además, para explorar más allá de estas líneas, date una vuelta por los ejemplos prácticos que armamos para vos. Todo el código y los proyectos los encontrás en nuestro repositorio de GitHub {{< bs/alert-link "learn-software-engineering/examples-programming" "https://github.com/learn-software-engineering/examples-programming" >}}.

Gracias por ser parte de esta comunidad de aprendizaje. ¡Seguí programando y explorando nuevas areas en este fascinante mundo del software!
{{% /markdownify %}}
{{< /bs/alert >}}

---

## Referencias

[^1]: Cormen, T.H., Leiserson, C.E., Rivest, R.L., & Stein, C. (2009). Introducción a los algoritmos. MIT Press.
[^2]: Kindler, E., & Krivy, I. (2011). *Object-Oriented Simulation of systems with Java: A working introduction*. BoD–Books on Demand.
[^3]: Lutz, M. (2013). *Learning Python: Powerful Object-Oriented Programming*. O'Reilly Media, Incorporated.
