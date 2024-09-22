---
draft: true
weight: 305
title: "Abstraction"
date: 2023-10-10
tags: ["oop", "object-oriented", "abstractions", "interfaces"]
# images:
#   - /images/banners/content/programming/0300-oop/0305-abstraction.en.png
---

Abstraction is one of the key principles in Object-Oriented Programming (OOP). It plays a vital role in managing complexity by hiding unnecessary details and exposing only what's essential. This article, will explore the concept of abstraction, its purpose, abstract classes, interfaces, and implementation in Python.

Abstraction refers to the practice of hiding the complex reality while exposing only the essential parts. It's like viewing something at a high level without delving into the details.

The main purposes of abstraction are:

- **Simplifying Complexity**: By hiding unnecessary details, abstraction makes the code more manageable.
- **Increasing Reusability**: Encapsulating complexity leads to more reusable code.
- **Enhancing Security**: By exposing only what's needed, abstraction protects the internal workings of a class or module.

## Abstract classes and interfaces

- **Abstract classes**: is a class that cannot be instantiated on its own and must be subclassed by another class. It may contain abstract methods, which have no implementation in the abstract class and must be implemented by any non-abstract subclass.
- **Interfaces**: defines a contract for what methods a class must implement but doesn't provide implementations for those methods. In some languages, interfaces are explicitly defined, but in Python, this concept is handled using abstract classes with only abstract methods.

## Implementing abstraction in Python

In Python, abstraction can be implemented using the `abc` module. Here's how you can create an abstract class:

```python
from abc import ABC, abstractmethod

class Shape(ABC):
    @abstractmethod
    def area(self):
        pass

class Circle(Shape):
    def __init__(self, radius):
        self.radius = radius

    def area(self): # Implementing the abstract method
        return 3.14 * self.radius ** 2

shape = Shape() # TypeError: Can't instantiate abstract class Shape with abstract methods area
circle = Circle(5)
print(circle.area()) # Output: 78.5
```

In this example, `Shape` is an abstract class with an abstract method `area`. Any subclass of `Shape` must provide an implementation of this method.

## Implementing abstraction in Java

### Using abstract classes

```java
abstract class Shape {
    abstract double area();
}

class Circle extends Shape {
    double radius;

    Circle(double radius) {
        this.radius = radius;
    }

    double area() {
        return 3.14 * radius * radius;
    }
}
```

In Java, you define an abstract class using the `abstract` keyword, and any method without a body must also be marked as `abstract`.

### Using interfaces

In Java, an interface can be used to define a contract that classes must adhere to. Here's an example:

```java
interface Shape {
    double area();
}

class Circle implements Shape {
    double radius;

    Circle(double radius) {
        this.radius = radius;
    }

    public double area() {
        return 3.14 * radius * radius;
    }
}
```

In this example, the `Shape` interface defines an `area` method that must be implemented by any class that implements the interface. The `Circle` class implements the `Shape` interface and provides an implementation for the `area` method.

### When to use abstract classes and interfaces in Java

When designing a system in Java, choosing between abstract classes and interfaces depends on various factors. Here's a guide to help you decide:

**Use Abstract Classes when**:
1. *You want to share code among several closely related classes*: Abstract classes allow you to define some default behaviour (concrete methods) and force subclasses to provide specific implementations for other parts (abstract methods).
2. *You want to control the inheritance hierarchy*: Abstract classes can have constructors and can also have access modifiers (public, protected, private) applied to their methods. This provides more control over how a class is inherited.
3. *You need to maintain state*: If you want to have common state and behaviour among several classes, then using an abstract class is appropriate.
4. *You want to allow only a single inheritance*: Java doesn’t support multiple inheritances for classes, so if a class is already extending another class, it can’t extend another abstract class.

**Use Interfaces when**:
1. *You want to define a contract for several unrelated classes**: Interfaces allow unrelated classes to implement the same set of methods, thus ensuring that the classes adhere to certain behaviour. This helps in achieving a clean architecture where you can easily swap one implementation with another.
2. **You need to support multiple inheritance**: A class can implement multiple interfaces in Java, so if you want a class to adhere to multiple contracts, you would use interfaces.
3. **You want to separate the method declaration from implementation completely**: Interfaces in Java (prior to Java 8) allow only abstract method declarations. Starting from Java 8, you can have default methods with implementation in interfaces, but the primary purpose remains defining a contract.
4. **You want strong encapsulation**: Interfaces enable you to hide the implementation details of the classes completely, exposing only the methods that should be accessible. This is aligned with the principle of strong encapsulation.
5. **You need to implement a standard API across different objects**: If you want various objects to expose the same method signatures, thus allowing them to be used interchangeably, interfaces provide a clear way to enforce this.

## Conclusion

Abstraction is a powerful concept that enables developers to hide complexity and provide a cleaner, higher-level interface to users of the code. By understanding and applying abstract classes and interfaces, you can write code that is easier to maintain, understand, and extend.

As you continue to explore OOP, leveraging abstraction will become an essential tool in your toolkit, allowing you to design more efficient and effective software systems. Whether you're working in Python or another OOP language, the principle of abstraction transcends specific technologies, making it a foundational concept in modern software development.
