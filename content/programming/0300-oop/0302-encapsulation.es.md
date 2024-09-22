---
weight: 302
title: "Encapsulamiento"
description: >
  Uno de los pilares fundamentales de la programación orientada a objetos es la encapsulación. Esta poderosa característica nos permite controlar el acceso a los miembros de una clase, ocultando los detalles de implementación y protegiendo el estado de nuestros objetos. En este artículo profundizaremos en el concepto de encapsulación, la utilidad de los getters, setters, propiedades y métodos públicos/privados, así como en los importantes beneficios que esto nos proporciona como desarrolladores.
date: 2023-10-04
tags: ["oop", "object-oriented", "encapsulation"]
# images:
#   - /images/banners/content/programming/0300-oop/0302-encapsulation.es.png
---

Uno de los pilares fundamentales de la programación orientada a objetos es el encapsulamiento. Esta potente característica nos permite controlar el acceso a los miembros de una clase, ocultando los detalles de implementación y protegiendo el estado de nuestros objetos. En este artículo veremos en profundidad el concepto de encapsulamiento, la utilidad del uso de getters, setters, propiedades y métodos públicos/privados, y los importantes beneficios que esto nos brinda como desarrolladores.


El diccionario de la Real Academia Española define encapsulamiento como el *"envuelto o contenido como dentro de una cápsula"*. Esto es precisamente lo que buscamos, *"empaquetar"* datos y código dentro de una única cápsula (la clase) para ocultar su complejidad interna.

La definición formal sería:

> "El encapsulamiento es el empaquetamiento de los datos y funciones que manipulan estos datos en una única entidad o módulo de programa."[^1]

Es decir, mantener juntos datos y comportamientos relacionados para restringir el acceso directo a dichos datos desde otras partes del programa, interactuando solo a través de una interfaz controlada (API pública).

Esto provee ventajas como las siguientes:

- Control sobre modificación de datos.
- Flexibilidad al poder cambiar partes internas sin afectar otras partes.
- Protección del estado consistente de los objetos.
- Ocultación de complejidad al usuario.

Veamos con ejemplos concretos cómo encapsular en POO.

---

## Getters y Setters

Digamos que tenemos una clase `CuentaBancaria`, con propiedades como `nombre`, `número de cuenta` y `saldo`:

```python
class CuentaBancaria:

    nombre = ""
    nro_cuenta = 0
    saldo = 0.0
```

Podemos acceder directamente a los atributos así:

```python
cuenta1 = CuentaBancaria()
cuenta1.nombre = "Juan"
cuenta1.nro_cuenta = 1234
cuenta1.saldo = 2500
```

El problema es que cualquier otro código puede modificar el saldo a valores inválidos:

```python
cuenta1.saldo = -9900 # ¡Saldo no puede ser negativo es este banco!
```

Esto permite estado inconsistente. Para encapsular usamos **getters y setters**:

```python
class CuentaBancaria:

    def __init__(self):
        self.__saldo = 0

    def get_saldo(self):
        return self.__saldo

    def set_saldo(self, valor):
        if valor < 0:
            raise Exception("Saldo no puede ser negativo en este banco")
        self.__saldo = valor
```

- `__saldo` es ahora **privado**. Solo se manipula mediante los getters y setters públicos.

- El setter controla que no se ingresen valores no válidos.

En Python, anteponer doble guion bajo `__` denota un método o atributo **privado** de la clase. Con guion simple `_` es por convención un elemento **protegido**, o sea, accesible desde la clase y subclases pero no desde fuera. Y `sin guiones`, los métodos y atributos son **públicos**.

En Java es explícito utilizando las palabras claves `public`, `protected` y `private`:
```java
public class Persona {

    private String nombre; // Privado

    public String getNombre() { // Público
        return this.nombre;
    }

}
```

Esta notación nos ayuda a declarar adecuadamente la visibilidad deseada para aplicar encapsulamiento.

---

## Beneficios del encapsulamiento

Esta poderosa técnica nos proporciona grandes ventajas:

- **Ocultación de información:** Los detalles de implementación son invisibles para otros objetos, reduciendo acoplamientos. Podemos cambiar código interno minimizando impacto.
- **Control sobre datos:** Se garantiza la integridad y validez de estado mediante los setters/validadores.
- **Código flexible:** El aislamiento entre interfaces y detalles específicos permite construir sistemas más extensibles y fáciles de mantener en el tiempo.

> "Todo módulo oculta la complejidad de su contenido detrás de una fachada (interfaz) simple", Gang of Four[^2].

En definitiva, cuando necesitamos controlar cómo se manipula el estado interno de una clase desde otras partes de la aplicación, el encapsulamiento es la mejor solución.

---

## Conclusión

Aplicar encapsulamiento restringiendo el acceso directo a los datos y codificando cuidadosamente una interfaz de acceso pública, nos permite construir sistemas POO más robustos, seguros y sustentables en el tiempo.

Dominar estas técnicas requiere experiencia y buen criterio para encontrar el balance adecuado entre ocultación de información y provisión de flexibilidad. Pero sin dudas vale la pena el esfuerzo para exprimir los beneficios que hemos visto de este maravilloso principio de la POO.

---

## Referencias

[^1]: Byron, Jeff. Encapsulation in Java. https://stackify.com/encapsulation-in-java/
[^2]: Gamma, Erich et al. Design Patterns: Elements of Reusable Object-Oriented Software. Addison-Wesley. 1994.
