---
draft: true
type: docs
authors: ["jnonino"]
series: ["Programming"]
nav_weight: 405
title: "Polymorphism"
date: 2023-04-10
tags: ["oop", "object-oriented", "polymorphism"]
images:
  - /images/banners/content/programming/0300-oop/object-oriented-programming.png
---

Polymorphism is a Greek word that means "many-shaped." In Object-Oriented Programming (OOP), it's a principle that allows objects of different classes to be treated as objects of a common base class. This principle enables greater flexibility and more dynamic behaviour in code. This article, will delve into the concept of polymorphism, discussing its types, overloading, overriding, virtual functions, and providing examples in Python.

Polymorphism allows different objects to respond to the same method call in a way that's specific to their individual types. It promotes code reusability and can be used to implement elegant software design.

There are two main types of polymorphism:

1. **Compile-Time Polymorphism (Static Polymorphism)**: This occurs at compile-time, where the method that needs to be executed is determined during the compilation of the code. Method overloading is an example of compile-time polymorphism.

2. **Run-Time Polymorphism (Dynamic Polymorphism)**: This occurs at run-time, where the method to be executed is determined during the execution of the program. Method overriding and virtual functions are examples of run-time polymorphism.

## Method overloading

Method overloading occurs when multiple methods in the same class have the same name but different parameters. This is a form of compile-time polymorphism.

In Python, method overloading is handled differently, as you can define a method with optional parameters.

```python
class Math:
    def add(self, a, b, c=0):
        return a + b + c

math = Math()
print(math.add(2, 3))    # Output: 5
print(math.add(2, 3, 4)) # Output: 9
```

## Method overriding

Method overriding occurs when a subclass provides a specific implementation of a method that is already defined in its superclass. This is a form of run-time polymorphism.

```python
class Animal:
    def sound(self):
        print("Some generic animal sound")

class Dog(Animal):
    def sound(self): # Overrides the sound method of Animal
        print("Woof!")

dog = Dog()
dog.sound() # Output: Woof!
```

## Virtual functions

In some languages like C++, a virtual function is used to override a function in the base class. In Python, all methods are virtual by default, meaning that they can be overridden in a subclass. Therefore, the concept of virtual functions doesn't explicitly apply in Python as it does in some other languages.

## Example

Here's a comprehensive example demonstrating polymorphism in Python:

```python
class Bird:
    def sound(self):
        print("Tweet")

class Cat:
    def sound(self):
        print("Meow")

def animal_sound(animal):
    animal.sound()

bird = Bird()
cat = Cat()

animal_sound(bird) # Output: Tweet
animal_sound(cat)  # Output: Meow
```

In this example, the `animal_sound` function is capable of taking any object that has a `sound` method, demonstrating the polymorphic nature of the code.

## Conclusion

Polymorphism is a vital concept in OOP, enhancing flexibility and enabling objects of different classes to be handled uniformly. Understanding overloading, overriding, and the differences between compile-time and run-time polymorphism will strengthen your ability to write more efficient, maintainable, and scalable code.

As you continue to explore OOP, these principles will serve as the building blocks for creating more complex and well-designed software applications.
