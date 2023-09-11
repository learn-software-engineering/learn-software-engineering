---
type: docs
authors: ["jnonino"]
series: ["Programming"]
nav_weight: 301
title: "Introduction"
date: 2023-04-02
tags: ["intro", "oop", "object-oriented", "oop-principles"]
images:
  - /images/banners/content/programming/0300-oop/object-oriented-programming.png
---

Object-Oriented Programming (OOP) is a paradigm that helps organize code using real-world concepts, making it more readable, reusable, and maintainable. It's built around the idea that everything can be represented as objects.

OOP emerged in the 1960s with the programming language Simula, but it gained prominence in the 1980s with languages like C++ and Smalltalk. At its core, OOP models the code as "objects" that bundle both state (attributes) and behaviors (methods).

### Principles

There are four key principles of OOP:

1. **Encapsulation**: Packaging attributes and methods within a class, controlling access to the information.
2. **Inheritance**: Allowing a class to inherit attributes and methods from another class.
3. **Polymorphism**: Enabling a class to be treated like another class, using different methods interchangeably.
4. **Abstraction**: Hiding complex realities while exposing only essential parts.

### Advantages

- **Modularity**: Breaking down complex problems into smaller, manageable parts.
- **Reusability**: Using the same code across different parts of an application or different projects.
- **Maintainability**: Making it easier to update, modify, and debug code.
- **Scalability**: Building larger and more complex applications with ease.

### OOP vs. Procedural Programming

In contrast to procedural programming, where the focus is on writing functions or procedures, OOP emphasizes creating objects containing both data and functions.

- **Procedural**: Functions operate on data, often leading to code repetition.
- **OOP**: Encapsulates data and functions into objects, promoting reusability and organization.

### Real-World analogy

Think of a class as a blueprint for a house, defining the structure and features. Objects are individual houses built from that blueprint. Each house (object) can have different colors, sizes, or number of rooms (attributes), but they all follow the same basic design (class).

## Example

Now, let's dive into a simple Python example to understand classes and objects.

This is an example of a class definition.

{{< highlight python >}}
class Car:
    def __init__(self, brand, model):
        self.brand = brand
        self.model = model

    def display_info(self):
        print(f"This car is a {self.brand} {self.model}.")
{{</highlight >}}

Here, `Car` is a class with attributes `brand` and `model`, and a method `display_info`.

from that class, we can create objects as follows.

{{< highlight python >}}
my_car = Car("Toyota", "Camry")
my_car.display_info()  # Output: This car is a Toyota Camry.
{{</highlight >}}

In this example, `my_car` is an object created from the `Car` class, with attributes set to "Toyota" and "Camry".

## Conclusion

Object-Oriented Programming offers a powerful and intuitive way to structure code. By understanding the core principles and applying them, even beginners can start building robust and flexible software. This post has provided an overview, and future articles will delve into specific concepts like encapsulation, inheritance, and more.
