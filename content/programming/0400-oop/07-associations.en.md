---
draft: true
type: docs
authors: ["jnonino"]
series: ["Programming"]
nav_weight: 407
title: "Associations, aggregations, and compositions"
date: 2023-04-14
tags: ["oop", "object-oriented", "associations", "aggregation", "composition", "uml"]
images:
  - /images/banners/content/programming/0300-oop/object-oriented-programming.png
---

Understanding relationships between classes is vital for designing robust and maintainable systems. This article, will explore three types of relationships: Associations, Aggregations, and Compositions. We'll look into their definitions, differences, and applications, providing examples in Python and using UML diagrams.

## Definitions

### Association

An association represents a “using” relationship between two or more objects. It indicates that objects of one class are somehow connected or utilize objects of another class.

### Aggregation

Aggregation is a specialized form of association where one class is a part of another class but both exist independently. It represents a "whole-part" relationship, but the lifetime of the part does not depend on the whole.

### Composition

Composition is a more restrictive form of aggregation where the part's life cycle is closely tied to the whole's life cycle. If the whole is destroyed, the part will also be destroyed. It represents a stronger "whole-part" relationship.

## "has-a" relationship

Both aggregation and composition represent a ***"has-a"*** relationship. For example, a `Car` class has an `Engine` class, but the connection between them could be either aggregation or composition depending on how tightly they are linked.

## UML Diagrams

Unified Modelling Language (UML) diagrams can represent these relationships visually:

- **Association**: A simple line between classes.
- **Aggregation**: A line with a hollow diamond on the whole side.
- **Composition**: A line with a filled diamond on the whole side.

## Real-world Examples and Python Code

### Association

A `Driver` class that operates a `Car` class.

```python
class Car:
    pass

class Driver:
    def drive(self, car):
        print("Driving the car")

car = Car()
driver = Driver()
driver.drive(car)  # Output: Driving the car
```

### Aggregation

A `Library` class containing a collection of `Book` objects.

```python
class Book:
    pass

class Library:
    def __init__(self):
        self.books = []

    def add_book(self, book):
        self.books.append(book)

book = Book()
library = Library()
library.add_book(book)
```

### Composition

A `Computer` class containing a `CPU` class, where the CPU cannot exist without the Computer.

```python
class CPU:
    pass

class Computer:
    def __init__(self):
        self.cpu = CPU() # CPU is created when the Computer is created

computer = Computer()
```

## Conclusion

Associations, aggregations, and compositions are foundational concepts that describe different types of relationships between classes in OOP. Understanding these relationships helps in modelling and building real-world systems. While the examples in this article are implemented in Python, these concepts apply across various OOP languages.

By grasping these relationships and knowing when to use them, you'll be better equipped to design and implement effective and efficient systems. They allow you to create code that accurately represents the real world, fostering clearer thinking and stronger design skills.
