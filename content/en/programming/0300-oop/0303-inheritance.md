---
weight: 303
title: "Inheritance"
description: >
  Inheritance is one of the fundamental pillars of Object-Oriented Programming (OOP), alongside encapsulation, polymorphism, and abstraction. It provides a mechanism for creating new classes that are built upon existing classes, promoting code reuse and establishing relationships between different classes in a program's architecture.
date: 2023-10-07
tags: ["OOP", "Inheritance"]
# images:
#   - /images/banners/content/programming/0300-oop/0303-inheritancepng
---

As Robert C. Martin states in his book "Clean Code":

>Inheritance is one of the most powerful features of object-oriented programming, but it's also one of the most dangerous if misused.

This guide aims to explore inheritance in depth, from its basic concepts to advanced implementations and best practices.

---

## Basic Concepts

Inheritance is a mechanism that allows a class (called the child or derived class) to inherit properties and methods from another class (called the parent or base class). This relationship creates a hierarchy of classes, where the derived class extends or specializes the functionality of the base class.

### Key Terminology

- **Base Class (Parent Class/Superclass)**: The class whose properties and methods are inherited
- **Derived Class (Child Class/Subclass)**: The class that inherits from another class
- **Inheritance Chain**: A succession of classes that inherit from one another
- **Override**: The ability of a derived class to provide a specific implementation of a method that already exists in its base class
- **Extension**: Adding new properties or methods in the derived class

### The "is-a" Relationship

Inheritance establishes an "is-a" relationship between classes. For example:
- A Cat "is-a" Animal.
- A SavingsAccount "is-a" BankAccount.
- A Rectangle "is-a" Shape.

This relationship should make logical sense in your domain model. As mentioned in "Head First Design Patterns" by Freeman et al., if you can't complete the sentence *"[Derived Class] is a [Base Class]"* naturally, you might be misusing inheritance.

---

## Types of Inheritance

### Single Inheritance

The most basic form where a class inherits from a single base class.

```python
class Animal:
    def __init__(self, name):
        self.name = name

    def speak(self):
        pass

class Dog(Animal):
    def speak(self):
        return "Woof!"
```

### Multiple Inheritance

When a class inherits from multiple base classes. This is supported in languages like Python and C++, but not in Java or C#.

```python
class Flying:
    def fly(self):
        return "I can fly!"

class Swimming:
    def swim(self):
        return "I can swim!"

class Duck(Flying, Swimming):
    pass
```

### Multilevel Inheritance

Creates a chain of inheritance where each class builds upon the previous one.

```python
class Animal:
    pass

class Mammal(Animal):
    pass

class Dog(Mammal):
    pass
```

### Hierarchical Inheritance

Multiple classes inherit from a single base class.

```python
class Vehicle:
    pass

class Car(Vehicle):
    pass

class Motorcycle(Vehicle):
    pass
```

### Interface Inheritance

While not technically inheritance in the classical sense, interfaces provide a form of inheritance for method signatures and contracts.

```java
interface Drawable {
    void draw();
}

class Circle implements Drawable {
    @Override
    public void draw() {
        // Implementation
    }
}
```

---

## Favor Composition Over Inheritance

As emphasized in the "Gang of Four" Design Patterns book, composition often provides more flexibility than inheritance. Consider using composition when:

1. You need to combine behaviors from multiple sources.
2. The relationship between classes is "has-a" rather than "is-a".
3. You want to avoid tight coupling between classes.

Example of composition:
```python
class Engine:
    def start(self):
        return "Engine starting..."

class Car:
    def __init__(self):
        self.engine = Engine()  # Composition

    def start_car(self):
        return self.engine.start()
```

## Common Pitfalls

### Deep Inheritance Hierarchies

Avoid creating deep inheritance hierarchies as they:
- Are difficult to understand and maintain.
- Create tight coupling between classes.
- Make changes harder to implement.
- Can lead to the "fragile base class" problem.

### The Diamond Problem

The diamond problem occurs in multiple inheritance when a class inherits from two classes that have a common ancestor:

```python
class A:
    def method(self):
        print("A method")

class B(A):
    def method(self):
        print("B method")

class C(A):
    def method(self):
        print("C method")

class D(B, C):  # Which method() implementation should D inherit?
    pass
```

### Tight Coupling

Inheritance creates tight coupling between parent and child classes. Changes in the parent class can break the child classes, making the system fragile.

---

## Advanced Concepts

### Abstract Classes and Methods

Abstract classes provide a way to define common interfaces while allowing specific implementations in derived classes.

```python
from abc import ABC, abstractmethod

class Shape(ABC):
    @abstractmethod
    def area(self):
        pass

    @abstractmethod
    def perimeter(self):
        pass

class Rectangle(Shape):
    def __init__(self, width, height):
        self.width = width
        self.height = height

    def area(self):
        return self.width * self.height

    def perimeter(self):
        return 2 * (self.width + self.height)
```

### Mixins

Mixins are classes that provide methods to other classes without being considered a base class. They're especially useful for sharing behavior without creating deep inheritance hierarchies.

```python
class LoggerMixin:
    def log(self, message):
        print(f"[LOG] {message}")

class DatabaseHandler(LoggerMixin):
    def save(self, data):
        self.log("Saving data to database...")
        # Save data logic here
```

### Template Method Pattern

This pattern defines the skeleton of an algorithm in a base class but lets subclasses override specific steps.

```python
class DataMiner:
    def mine(self):
        self.open_file()
        self.extract_data()
        self.parse_data()
        self.analyze_data()
        self.send_report()

    def open_file(self):
        raise NotImplementedError

    def extract_data(self):
        raise NotImplementedError

    # ... other methods

class PDFDataMiner(DataMiner):
    def open_file(self):
        print("Opening PDF file")

    def extract_data(self):
        print("Extracting data from PDF")

    # ... other implementations
```

---

## Real-World Examples

### UI Components

```python
class UIComponent:
    def __init__(self, position, size):
        self.position = position
        self.size = size

    def render(self):
        pass

    def resize(self, new_size):
        self.size = new_size

class Button(UIComponent):
    def __init__(self, position, size, label):
        super().__init__(position, size)
        self.label = label

    def render(self):
        print(f"Rendering button '{self.label}' at {self.position}")

    def on_click(self):
        print(f"Button '{self.label}' clicked!")
```

### File System

```python
class FileSystemItem:
    def __init__(self, name):
        self.name = name

    def get_size(self):
        pass

class File(FileSystemItem):
    def __init__(self, name, size):
        super().__init__(name)
        self._size = size

    def get_size(self):
        return self._size

class Directory(FileSystemItem):
    def __init__(self, name):
        super().__init__(name)
        self.items = []

    def add_item(self, item):
        self.items.append(item)

    def get_size(self):
        return sum(item.get_size() for item in self.items)
```

---

## References

1. Martin, Robert C. (2008). "Clean Code: A Handbook of Agile Software Craftsmanship"
2. Gamma, Erich, et al. (1994). "Design Patterns: Elements of Reusable Object-Oriented Software"
3. Freeman, Eric, et al. (2004). "Head First Design Patterns"
4. Meyer, Bertrand. (1988). "Object-Oriented Software Construction"
5. Bloch, Joshua. (2018). "Effective Java, 3rd Edition"

---

{{% alert color="info" %}}
Cheers for making it this far! I hope this journey through the programming universe has been as fascinating for you as it was for me to write down.

We're keen to hear your thoughts, so don't be shy – drop your comments, suggestions, and those bright ideas you're bound to have.

Also, to delve deeper than these lines, take a stroll through the practical examples we've cooked up for you. You'll find all the code and projects in our GitHub repository [learn-software-engineering/examples-programming](https://github.com/learn-software-engineering/examples-programming).

Thanks for being part of this learning community. Keep coding and exploring new territories in this captivating world of software!
{{% /alert %}}

---
