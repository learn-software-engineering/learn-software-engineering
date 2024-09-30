---
title: "Object-Oriented Programming"
simple_list: true
weight: 300
# images:
#   - /images/banners/content/programming/0300-oop/_indexpng
---

Object-Oriented Programming (OOP) is a programming paradigm that has become indispensable nowadays. This approach models real-world elements as "objects" that have properties and behaviours, which allows for more intuitive and maintainable programmes to be created. In this article we will look at the basic concepts of OOP and its advantages over other paradigms like procedural programming. Let's get started!

This paradigm is based on two fundamental concepts:
- **Objects**: entities that combine state (data) and behaviour (operations) in a single unit. For example, a "car" object would have properties like colour, number of doors, maximum speed, etc. And behaviours like accelerate, brake, steer, etc.
- **Classes**: specifications that define the common structure and behaviour of a group of objects. The "car" class would serve as a template for creating car objects with the same characteristics.

As explained by programmer Alan Kay, one of the creators of OOP:

> "The big idea is to design programmes in terms of conceptual objects and concepts from the real world. The interfaces with the real world should, therefore, be constructed in terms of these conceptual objects."[^1]

That is, OOP conceptually models real-world elements to make programming more intuitive.

---

## Programming paradigms

Before delving into OOP, it is worth understanding that there are different paradigms or approaches to tackle programming. The main ones are:

### Procedural programming

Ordered sequence of instructions that the programme must follow step-by-step. The focus is on procedures and functions. For example, C is a language geared towards procedural programming.

Procedural programming is better for:

- Simple problems or sequential algorithms.
- Code that won't need heavy reusing or expanding.
- Cases where performance and efficiency are critical.

### Object-Oriented programming

Model based on objects that contain data and code in cohesive units. The focus is on classes and the interaction between objects. For example, Java and Python are object-oriented languages.

OOP allows modelling real-world elements more directly, better encapsulating data, and reusing code through inheritance between classes.

The main advantages of OOP over procedural programming are:

- **Modularity**: objects group related data and operations, encapsulating internal complexity. This allows working with independent modules.
- **Information hiding**: Objects can expose a simple interface and hide internal implementation details. This reduces coupling.
- **Reusability**: Classes enable code reuse. An abstract class can inherit to multiple subclasses.
- **Extensibility**: We can extend the behaviour of parent classes by creating new subclasses.
- **Conceptual mapping**: Objects represent real-world entities, which eases the translation of requirements into code.

However, OOP also has disadvantages. According to programmer Paul Graham:

>"Object-oriented programming often makes things harder than they need to be."[^2]

For example, for simple problems OOP can be excessive. And in large projects there is a risk of overusing inheritance and polymorphism, making the code difficult to follow.

Ultimately, OOP is more suitable when:

- The problem to be modelled has clear, structured entities.
- We want to reuse encapsulated code in modular classes.
- We work on systems that need to be easily extended and maintained.

---

## Basic OOP concepts

Now that we know the general ideas behind OOP, let's look at some key concepts:

### Objects

An object is a combination of **data** (properties) and **behaviours** (methods). For example, a Car object would have properties like make, model, colour and methods like accelerate, brake, etc.

```python
# Car Class
class Car:

  def __init__(self, make, colour):
    self.make = make
    self.colour = colour

  def accelerate(self):
    print("Accelerating", self.make)

# Create Object
my_car = Car("Toyota", "Red")
```

- `my_car` is now a Car object with properties and methods defined in its class.

### Classes

A class defines the common **attributes** (properties) and **methods** (functions) for a group of objects. It works like a **template** for creating similar objects.

By convention, classes are defined with the first letter capitalised. The properties and methods of a class get the `self` prefix to indicate they belong to that object instance.

```python
class Circle:

  def __init__(self, radius):
    self.radius = radius

  def area(self):
    return 3.1416 * (self.radius ** 2)
```

- `Circle` defines the class with `radius` property and `area()` method.

### Methods

Methods are functions that define the behaviour of an object. They are declared inside the class and can access the object's properties via `self`.

A **constructor** is a special method (`__init__`) that runs when creating objects to initialise their properties.

```python
class Person:

  def __init__(self, name, age):
    self.name = name
    self.age = age

  def greet(self):
    print(f"Hello! I'm {self.name}")

john = Person("John", 30) # Runs __init__
john.greet() # "Hello! I'm John"
```

- The constructor assigns `name` and `age`. The `greet()` method accesses the `name` attribute.

### Properties

Properties are variables associated with an object that define its characteristics or state. They are declared in the class and accessed through the object reference.

```python
class Rectangle:

  def __init__(self, height, width):
    self.height = height
    self.width = width

r = Rectangle(3, 4)
print(r.height) # 3
r.width = 8
print(r.width) # 8
```

It is recommended to declare properties as **private** and access via getter/setter methods to respect encapsulation.

### Encapsulation

It consists of hiding the internal implementation details of an object, exposing only a public interface. This is achieved by declaring methods and properties with `public` or `private` modifiers.

In Python this is denoted with a leading underscore for private methods/properties:

```python
class BankAccount:

  def __init__(self, balance=0):
    self.balance = balance

  def deposit(self, amount):
    self._balance += amount

  def check_balance(self):
    return self._balance
```

- `_balance` is private, only accessed internally or via `check_balance()`.

Encapsulation makes it easier to change internal parts of a class without affecting its public interface.

---

## Conclusion

Object-Oriented Programming models real-world elements as classes and objects, prioritising modularity, information hiding, and code reuse to create more robust and maintainable programmes.

Although it can be excessive for simple problems, OOP is ideal for medium/large systems that need to expand and evolve in complexity over time.

Concepts like inheritance, polymorphism, abstraction, and interfaces allow fully leveraging the advantages of this paradigm. With a solid understanding of its fundamentals we are ready to apply OOP in any programming language and project.

## References

[^1]: Kay, Alan. The early history of Smalltalk. http://gagne.homedns.org/~tgagne/contrib/EarlyHistoryST.html
[^2]: Graham, Paul. Why Arc Isn't Especially Object-Oriented. http://www.paulgraham.com/noop.html
