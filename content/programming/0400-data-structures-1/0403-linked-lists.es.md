---
type: docs
authors: ["jnonino"]
series: ["Programming"]
nav_weight: 403
title: "Listas enlazadas"
description: "Las listas enlazadas (linked lists en inglés) son una estructura de datos dinámica y flexible que permite almacenar eficientemente colecciones de elementos. A diferencia de los arrays, las listas enlazadas no requieren reservar un tamaño fijo de antemano."
date: 2023-10-31
tags: ["intro", "programming", "data-structures", "linked-lists"]
images:
  - /images/banners/programming-course.es.png
---

Una lista enlazada se compone de `nodos` donde cada nodo tiene dos partes:

- Dato o información
- Referencia al siguiente nodo

Los nodos se organizan de forma secuencial, cada uno apuntando al siguiente. El último nodo apunta a nulo para indicar el final.

Esta estructura dinámica permite inserción y eliminación eficiente de nodos.

---

## Tipos de listas enlazadas

Existen varios tipos:

- **Simplemente enlazada:** Cada nodo apunta al siguiente. Son útiles para colas (*queues*) y pilas (*stacks*).

![Diagrama de una lista enlazada simple](/images/content/programming/0400-data-structures-1/diagram-linked-list.jpg)

- **Doblemente enlazada:** Cada nodo tiene referencia al siguiente y al anterior. Permiten recorrer en ambos sentidos.

![Diagrama de una lista doblemente enlazada](/images/content/programming/0400-data-structures-1/diagram-double-linked-list.jpg)

- **Circular:** El último nodo apunta al primero formando un ciclo. Útiles para buffers circulares.

![Diagrama de una lista circular](/images/content/programming/0400-data-structures-1/diagram-circular-list.jpeg)

---

## Operaciones comunes

- **Insertar:** Agregar nodos al inicio, final o medio de la lista.

- **Eliminar:** Quitar nodos por valor o posición.

- **Buscar:** Encontrar nodos por valor recorriendo la lista.

- **Recorrer:** Iterar los nodos accediendo por las referencias.

---

## Implementación

Las listas enlazadas se pueden implementar de la siguiente manera:

Usa la clase `ListNode` para representar nodos:

```python
class ListNode:
    def __init__(self, value):
        self.value = value
        self.next = None
```

Luego para crear y usar una lista se define una clase LinkedList con métodos para las operaciones.

```python
class LinkedList:
    def __init__(self):
        self.head = None

    def add_to_start(self, new_value):
        new_node = ListNode(new_value)
        new_node.next = self.head
        self.head = new_node

    def print(self):
        current = self.head
        while current != None:
            print(current.value)
            current = current.next

    def search(self, searched_value):
        current = self.head
        while current != None:
            if current.value == searched_value:
                return True
            current = current.next
        return False

    #...other methods
```

Con esta clase `LinkedList` podemos crear una lista, agregar nodos, imprimirla, buscar elementos, etc.

Se podrían agregar otros métodos como insertar al final, eliminar por valor, obtener por índice, etc. Pero esto da una idea de cómo encapsular la funcionalidad de la lista enlazada en una clase. Como práctica, podés intentar agregar estos métodos por tu cuenta, ¡no dudes en dejar tus comentarios y contactarte si necesitas ayuda!

---

## Ventajas y desventajas

**Ventajas:**

- Insertar y eliminar nodos es eficiente.
- No requiere definir tamaño fijo como los arrays.
- Estructura dinámica y flexible.

**Desventajas:**

- Mayor uso de memoria por tener que almacenar referencias.
- El acceso a elementos por índice es más costoso al ser secuencial.

---

## Ejemplos de uso

- Implementar estructuras como pilas (*stacks*) y colas (*queues*).
- En listas doblemente enlazadas, recorrer la lista en el sentido ambos sentidos.
- Blockchains como la de Bitcoin.
- Reproducir elementos en orden como playlists de música.

---

## Conclusión

Las listas enlazadas son una estructura de datos versátil para almacenar secuencias dinámicas de elementos. Tener un buen manejo de estas listas, sus operaciones y usos es indispensable para cualquier programador.
