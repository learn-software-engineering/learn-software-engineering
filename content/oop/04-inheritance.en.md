---
type: docs
authors: ["jnonino"]
courses: ["Object-Oriented Programming"]
nav_weight: 4
title: "Inheritance"
date: 2023-04-08
tags: ["oop", "object-oriented", "inheritance"]
---

Inheritance is another fundamental concept in Object-Oriented Programming (OOP), allowing for the creation of a new class based on an existing class. This concept helps in reusing code, creating relationships between classes, and building hierarchical structures. This article will explore inheritance in detail, focusing on examples in Python.

Inheritance is a mechanism that allows a class (derived or subclass) to inherit attributes and methods from another class (base or superclass). The derived class can extend or modify the features of the base class.

There are several types of inheritance:

1. **Single inheritance**: One subclass inherits from one superclass.
2. **Multiple inheritance**: A subclass inherits from multiple superclasses.
3. **Multilevel inheritance**: A subclass inherits from a superclass, and then another class inherits from that subclass, creating multiple levels.
4. **Hierarchical inheritance**: Multiple subclasses inherit from a single superclass.
5. **Hybrid inheritance**: A combination of two or more types of inheritance.

## Base and derived classes

A base class, also known as the parent class, is the class whose properties are inherited by another class.

A derived class, or child class, inherits properties from the base class. It may also have additional properties or modify the inherited ones.

Here's a simple example in Python:

{{< highlight python >}}
class Animal:           # Base class
    def eat(self):
        print("Eating...")

class Dog(Animal):      # Derived class
    def bark(self):
        print("Barking...")
{{</highlight >}}

`Dog` is a derived class that inherits the `eat` method from the base class `Animal`.

## Overriding methods

In OOP, a subclass can provide a specific implementation of a method that is already defined in its superclass. This is known as overriding.

Example in Python:

{{< highlight python >}}
class Bird(Animal):
    def eat(self):
        print("Pecking seeds...")  # This overrides the eat method in Animal
{{</highlight >}}

## "is-a" relationship

Inheritance establishes an "is-a" relationship between the base and derived classes. For example, if there is a base class `Vehicle` and a derived class `Car`, then a `Car` is a type of `Vehicle`.

## Example

Here's a more comprehensive example in Python demonstrating multiple aspects of inheritance:

{{< highlight python >}}
class Person:                   # Base class
    def __init__(self, name):
        self.name = name

    def display(self):
        print(f"I am {self.name}.")

class Student(Person):          # Derived class
    def __init__(self, name, roll_number):
        super().__init__(name)  # Calling constructor of base class
        self.roll_number = roll_number

    def display(self):          # Overriding method
        print(f"I am {self.name}, and my roll number is {self.roll_number}.")

student = Student("Alice", 42)
student.display()  # Output: I am Alice, and my roll number is 42.
{{</highlight >}}

In this example, `Student` is a derived class that inherits from the `Person` base class. It overrides the `display` method and calls the constructor of the base class using `super()`.

## Conclusion

Inheritance is a powerful feature in OOP, enabling reusability, organization, and establishing natural relationships between classes. Understanding and implementing inheritance can lead to more efficient and readable code.

With the insights gained from this article, you're well-equipped to explore more complex aspects of OOP, such as polymorphism and abstract classes, which build upon the principles of inheritance.
