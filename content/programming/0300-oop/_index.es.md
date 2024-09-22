---
title: "Programación Orientada a Objetos"
simple_list: true
weight: 300
# images:
#   - /images/banners/content/programming/0300-oop/_index.es.png
---

La Programación Orientada a Objetos (POO) es un paradigma de programación que se ha vuelto indispensable en la actualidad. Este enfoque modela elementos del mundo real como "objetos" que tienen propiedades y comportamientos, lo cual permite crear programas más intuitivos y fáciles de mantener. En este artículo veremos los conceptos básicos de POO y sus ventajas frente a otros paradigmas como la programación procedural. ¡Empecemos!

Este paradigma se basa en dos conceptos fundamentales:
- **Objetos**: entidades que combinan estado (datos) y comportamiento (operaciones) en una misma unidad. Por ejemplo, un objeto "coche" tendría propiedades como color, número de puertas, velocidad máxima, etc. Y comportamientos como acelerar, frenar, girar, etc.
- **Clases**: especificaciones que definen la estructura y comportamiento común de un grupo de objetos. La clase "coche" serviría como molde para crear objetos coche con las mismas características.

Como explica el programador Alan Kay, uno de los creadores de la POO:

> "La idea central de POO es que los usuarios deben manipular objetos conceptuales más que máquinas de Turing. Las interfaces con el mundo real deben, por lo tanto, ser construidas en términos de objetos conceptuales."[^1]

Es decir, la POO modela conceptualmente elementos del mundo real para hacer la programación más intuitiva.

---

## Paradigmas de programación

Antes de profundizar en la POO, conviene entender que existen diferentes paradigmas o enfoques para abordar la programación. Los principales son:

### Programación procedural

Secuencia ordenada de instrucciones que el programa debe seguir paso a paso. El foco está en procedimientos y funciones. Por ejemplo, C es un lenguaje orientado a la programación procedural.

La programación procedural es mejor para:
- Problemas sencillos o algoritmos secuenciales.
- Código que no necesitará reusarse ni expandirse mucho.
- Casos donde el rendimiento y eficiencia son críticos.

### Programación orientada a objetos

Modelo basado en objetos que contienen datos y código en unidades cohesivas. El foco está en las clases y en la interacción entre objetos. Por ejemplo, Java y Python son lenguajes orientados a objetos.

La POO permite modelar de forma más directa elementos del mundo real, encapsular mejor los datos y reutilizar código a través de la herencia entre clases.

Las principales ventajas de POO frente a la programación procedural son:

- **Modularidad**: los objetos agrupan datos y operaciones relacionadas, encapsulando la complejidad interna. Esto permite trabajar con módulos independientes.
- **Ocultación de información**: Los objetos pueden exponer una interfaz simple y ocultar detalles de implementación internos. Esto reduce acoplamientos.
- **Reusabilidad**: Las clases permiten reuse de código. Una clase abstracta puede heredar a múltiples subclases.
- **Extensibilidad**: Podemos extender el comportamiento de clases padres creando nuevas subclases.
- **Mapeo conceptual**: Los objetos representan entidades del mundo real, lo cual facilita la traducción de requerimientos a código.

Sin embargo, la POO también tiene desventajas. Según el programador Paul Graham:

>"La programación orientada a objetos suele ser una molestia. Hace que las cosas sean más difíciles de lo que deberían ser."[^2]

Por ejemplo, para problemas simples la POO puede resultar excesiva. Y en proyectos grandes existe el riesgo de abusar de la herencia y el polimorfismo, volviendo el código difícil de seguir.

En definitiva, la POO es más adecuada cuando:
- El problema a modelar tiene entidades claras y estructuradas.
- Queremos reutilizar código encapsulado en clases modulares.
- Trabajamos en sistemas que deben extenderse y mantenerse con facilidad.

---

## Conceptos básicos de POO

Ahora que conocemos las ideas generales detrás de la POO, veamos algunos de los conceptos clave:

### Objetos

Un objeto es una combinación de **datos** (propiedades) y **comportamientos** (métodos). Por ejemplo, un objeto Coche tendría propiedades como marca, modelo, color y métodos como acelerar, frenar, etc.

```python
# Clase Coche
class Coche:

  def __init__(self, marca, color):
    self.marca = marca
    self.color = color

  def acelerar(self):
    print("Acelerando", self.marca)

# Crear Objeto
mi_coche = Coche("Toyota", "Rojo")
```

- `mi_coche` es ahora un objeto Coche con propiedades y métodos definidos en su clase.

### Clases

Una clase define los **atributos** (propiedades) y **métodos** (funciones) comunes a un grupo de objetos. Funciona como un **molde** para crear objetos similares.

Por convención las clases se definen con la primera letra en mayúscula. Las propiedades y métodos de una clase reciben el prefijo `self` para indicar que pertenecen a esa instancia de objeto.

```python
class Circulo:

  def __init__(self, radio):
    self.radio = radio

  def area(self):
    return 3.1416 * (self.radio ** 2)
```

- `Circulo` define la clase con propiedad `radio` y método `area()`.

### Métodos

Los métodos son funciones que definen el comportamiento de un objeto. Se declaran dentro de la clase y pueden acceder a las propiedades del objeto mediante `self`.

Un **constructor** es un método especial (`__init__`) que se ejecuta al crear objetos para inicializar sus propiedades.

```python
class Persona:

  def __init__(self, nombre, edad):
    self.nombre = nombre
    self.edad = edad

  def saludar(self):
    print(f"Hola! Soy {self.nombre}")

juan = Persona("Juan", 30) # Ejecuta __init__
juan.saludar() # "Hola! Soy Juan"
```

- El constructor asigna `nombre` y `edad`. El método `saludar()` accede al atributo `nombre`.

### Propiedades

Las propiedades son variables asociadas a un objeto que definen sus características o estado. Se declaran en la clase y se accede a ellas mediante la referencia del objeto.

```python
class Rectangulo:

  def __init__(self, alto, ancho):
    self.alto = alto
    self.ancho = ancho

r = Rectangulo(3,4)
print(r.alto) # 3
r.ancho = 8
print(r.ancho) # 8
```

Se recomienda declarar las propiedades como **privadas** y acceder mediante métodos getters/setters para respetar el encapsulamiento.

### Encapsulamiento

Consiste en ocultar los detalles de implementación internos de un objeto exponiendo solo una interfaz pública. Esto se logra declarando métodos y propiedades con los modificadores `public` o `private`.

En Python se denota con guion bajo prefijo para métodos/propiedades privadas:

```python
class CuentaBancaria:

  def __init__(self, saldo=0):
    self.saldo = saldo

  def depositar(self, monto):
    self._saldo += monto

  def consultar_saldo(self):
    return self._saldo
```

- `_saldo` es privado, solo se accede internamente o por `consultar_saldo()`.

El encapsulamiento facilita cambiar partes internas de una clase sin afectar su interfaz pública.

---

## Conclusión

La Programación Orientada a Objetos modela elementos del mundo real como clases y objetos, priorizando la modularidad, ocultación de información y reuso de código para crear programas más robustos y fáciles de mantener.

Aunque puede resultar excesiva para problemas simples, la POO es ideal para sistemas de mediana/gran escala que necesitan expandirse y evolucionar en complejidad con el tiempo.

Conceptos como herencia, polimorfismo, abstracción e interfaces permiten aprovechar al máximo las ventajas de este paradigma. Con una comprensión sólida de sus fundamentos estamos listos para aplicar la POO en cualquier lenguaje y proyecto de programación.

## Referencias

[^1]: Kay, Alan. The early history of Smalltalk. http://gagne.homedns.org/~tgagne/contrib/EarlyHistoryST.html
[^2]: Graham, Paul. Why Arc Isn't Especially Object-Oriented. http://www.paulgraham.com/noop.html
