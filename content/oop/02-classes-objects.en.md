---
type: docs
authors: ["jnonino"]
series: ["Object-Oriented Programming"]
nav_weight: 1
title: "Classes and objects"
date: 2023-04-04
tags: ["oop", "object-oriented", "classes", "objects"]
---

Building on our previous introduction to Object-Oriented Programming (OOP), this post will dive deeper into the core concepts of classes and objects. We'll explore their definitions, how to create and use them, and discuss constructors and destructors, with examples in Python.

## Definitions

### Classes

A class is a blueprint that defines the structure and behavior of an object. It encapsulates data (attributes) and functions (methods) that operate on the data.

{{< highlight python >}}
class Dog:
    def bark(self):
        print("Woof!")
{{</highlight >}}

Here, `Dog` is a class with a method `bark`.

### Objects

Objects are individual instances created from a class. They contain the data defined in the class and can execute the class's methods.

{{< highlight python >}}
my_dog = Dog()
my_dog.bark()  # Output: Woof!
{{</highlight >}}

`my_dog` is an object of the class `Dog`, and it can use the `bark` method.

## Creating and instantiating classes

In Python, you can define a class using the `class` keyword followed by the class name and a colon.

{{< highlight python >}}
class Person:
    pass
{{</highlight >}}

This creates an empty class named `Person`.

### Instantiating a class

Instantiating a class means creating an object from that class. You can do this by calling the class as if it were a function.

{{< highlight python >}}
person = Person()
{{</highlight >}}

Now, `person` is an instance of the `Person` class.

## Constructor

A constructor is a special method that gets called when you create an object. In Python, it's defined using the `__init__` method.

{{< highlight python >}}
class Cat:
    def __init__(self, name, color):
        self.name = name
        self.color = color
{{</highlight >}}

This constructor initializes a `Cat` object with a name and color.

## Destructor

A destructor is a method that gets called when an object is destroyed. In Python, it's defined using the `__del__` method.

{{< highlight python >}}
class Cat:
    def __del__(self):
        print(f"{self.name} has been deleted.")
{{</highlight >}}

This destructor prints a message when a `Cat` object is deleted.

## Examples

### Creating and using a class

{{< highlight python >}}
class Bike:
    def __init__(self, brand, model):
        self.brand = brand
        self.model = model

    def display_info(self):
        print(f"This bike is a {self.brand} {self.model}.")

my_bike = Bike("Yamaha", "MT-07")
my_bike.display_info()  # Output: This bike is a Yamaha MT-07.
{{</highlight >}}

### Deleting an object

{{< highlight python >}}
del my_bike  # This will call the destructor if defined.
{{</highlight >}}

## Conclusion

Classes and objects are foundational concepts in OOP, allowing you to structure code in a way that mirrors real-world entities. Constructors and destructors further add to the lifecycle management of objects. With this understanding, you're now prepared to delve into more advanced OOP concepts.

In our next article, we will explore encapsulation, one of the key principles of OOP, and see how it contributes to code organization and security.
