---
type: docs
authors: ["jnonino"]
courses: ["Programming"]
nav_weight: 8
title: "Object-Oriented Programming"
description: "Object-Oriented Programming (OOP) is a programming paradigm that uses objects and classes to structure code in a way that models real-world entities and their relationships. OOP enables programmers to write reusable, maintainable, and organized code. In this article, we'll explore the core concepts of OOP using Python, though these principles are applicable across various programming languages."
date: 2023-03-21
tags: ["intro", "programming", "oop", "object-oriented"]
---

## Classes and objects

A class is a blueprint for creating objects. It defines the attributes and behaviors common to all instances of a particular kind. A class encapsulates the data (attributes) and the operations (methods) that work on the data into a single entity. In essence, a class bundles the state and the procedures to manipulate that state.

Let's take a closer look at the definition of a class for a car:

{{< highlight python >}}
class Car:
    def __init__(self, make, model, year):
        self.make = make
        self.model = model
        self.year = year

    def display_info(self):
        print(f"{self.year} {self.make} {self.model}")
{{</highlight >}}

1. **Class Declaration**: The `class` keyword followed by the class name `Car` begins the definition of the class.

2. **Constructor (`__init__` method)**: This method initializes the object when it's created, setting the attributes `make`, `model`, and `year`. The `self` parameter refers to the instance of the class itself and is used to access or define attributes of that instance.

3. **Attributes**: These are variables that hold data specific to an instance of the class. In this example, `make`, `model`, and `year` are attributes that describe characteristics of the car.

4. **Methods**: Methods are functions defined inside the class, representing the behaviors associated with the class objects. In this example, the `display_info` method prints the information about the car.

In OOP, an object is an instance of a class. Objects encapsulate data (attributes) and behaviors (methods) that operate on the data. Think of an object as a blueprint for creating instances that represent real-world entities. Here's how you might create an object (instance) of the `Car` class and call its method:

{{< highlight python >}}
my_car = Car("Toyota", "Camry", 2021)
my_car.display_info()  # Output: 2021 Toyota Camry
{{</highlight >}}

The `Car` class serves as a blueprint for creating car objects, encapsulating the details of what a car is and what it can do. It enables you to create multiple instances of cars, each with its attributes and methods, without having to repeat the code for each car.

Classes are central to OOP, providing a way to structure code by grouping related data and behavior, making it easier to understand, maintain, and reuse.

## Core concepts of OOP

### Encapsulation

Encapsulation is one of the fundamental principles of OOP that restricts direct access to some of an object's components. This means that the internal representation of an object is hidden from the outside. Encapsulation helps in preventing accidental modification of the data and ensures that the object's state is controlled only through its methods.

Encapsulation can be achieved through access modifiers (such as private, protected, etc.), though Python relies more on convention over enforced encapsulation.

Consider a class representing a bank account:

{{< highlight python >}}
class Account:
    def __init__(self, balance):
        self._balance = balance

    def get_balance(self):
        return self._balance

    def set_balance(self, balance):
        if balance >= 0:
            self._balance = balance
{{</highlight >}}

1. **Attribute with Underscore Prefix**: In Python, prefixing an attribute with a single underscore (e.g., `_balance`) is a convention that indicates it should not be accessed directly from outside the class. Though not enforced by the language, it's a signal to the programmer that it's a "protected" attribute.

2. **Getter Method (`get_balance`)**: This method allows controlled access to the `_balance` attribute. Clients of the class can retrieve the balance without directly accessing the attribute itself.

3. **Setter Method (`set_balance`)**: This method controls how the `_balance` attribute can be modified. In this example, it ensures that the balance cannot be set to a negative value. By using this method to update the balance, the class can enforce rules and validations on the data.

Here's how you might use the `Account` class:

{{< highlight python >}}
my_account = Account(100)
print(my_account.get_balance())  # Output: 100
my_account.set_balance(50)
print(my_account.get_balance())  # Output: 50
{{</highlight >}}

Notice that the balance is accessed and modified through the `get_balance` and `set_balance` methods, not directly.

Encapsulation promotes a robust design by localizing the dependencies on the internal structure of the class and providing controlled access to its data. It helps in maintaining integrity and consistency of the object's state and makes the code more maintainable and flexible.

### Inheritance

Inheritance is a mechanism in OOP that allows a class (called the subclass) to inherit attributes and methods from another class (called the superclass). This creates a hierarchical relationship between the classes and promotes code reusability and organization. The subclass can also override or extend the functionalities of the superclass.

Inheritance represents an "is-a" relationship between the subclass and the superclass. For example, if we have a superclass `Person` and a subclass `Worker`, the relationship would be read as "Worker is a Person."

Let's define a general `Person` class and a more specific `Worker` class that inherits from `Person`:

{{< highlight python >}}
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def display_info(self):
        print(f"Name: {self.name}, Age: {self.age}")

class Worker(Person):
    def __init__(self, name, age, job_title):
        super().__init__(name, age)
        self.job_title = job_title

    def display_info(self):
        super().display_info()
        print(f"Job Title: {self.job_title}")

    def work(self):
        print(f"{self.name} is working as a {self.job_title}")
{{</highlight >}}

1. **Superclass (`Person`)**: This class defines common attributes and methods for a person, such as `name` and `age`.

2. **Subclass (`Worker`)**: The `Worker` class inherits from `Person`, meaning it has access to `Person`'s attributes and methods. It also adds a specific attribute, `job_title`, and a specific method, `work`.

3. **Calling the Superclass Constructor (`super().__init__`)**: The `super()` function allows the `Worker` class to call the constructor of the `Person` class, ensuring that the `name` and `age` attributes are initialized.

4. **Method Overriding (`display_info`)**: The `Worker` class overrides the `display_info` method of the `Person` class, extending its functionality to include the job title. It uses `super().display_info()` to call the original method in `Person`.

Here's how you might use the `Person` and `Worker` classes:

{{< highlight python >}}
person = Person("Alice", 30)
person.display_info()  # Output: Name: Alice, Age: 30

worker = Worker("Bob", 40, "Engineer")
worker.display_info()  # Output: Name: Bob, Age: 40, Job Title: Engineer
worker.work()          # Output: Bob is working as an Engineer
{{</highlight >}}

Inheritance enables the creation of a hierarchy of classes, where common functionalities are defined in the superclass, and specific functionalities are defined in the subclass. This leads to cleaner, more maintainable code by reducing redundancy and promoting logical organization.

### Polymorphism

Polymorphism is a concept in OOP that allows objects of different classes to be treated as objects of a common superclass. The word "polymorphism" comes from Greek and means "many shapes." In programming, it refers to the ability of different objects to respond to the same method call in a way that is specific to their individual types.

Polymorphism promotes flexibility and extensibility, making it easier to add new classes without modifying existing code.

To illustrate polymorphism, we'll use the `Person` and `Worker` classes from the previous section on inheritance:

{{< highlight python >}}
class Person:
    def display_info(self):
        print(f"Name: {self.name}, Age: {self.age}")

class Worker(Person):
    def display_info(self):
        print(f"Name: {self.name}, Age: {self.age}, Job Title: {self.job_title}")

# ...

def print_info(person):
    person.display_info()
{{</highlight >}}

The `print_info` function takes an argument of type `Person` but can also accept objects of the `Worker` class or any other class that has a `display_info` method.

{{< highlight python >}}
person = Person("Alice", 30)
worker = Worker("Bob", 40, "Engineer")

print_info(person)  # Output: Name: Alice, Age: 30
print_info(worker)  # Output: Name: Bob, Age: 40, Job Title: Engineer
{{</highlight >}}

1. **Common Method Signature**: Both `Person` and `Worker` classes define a method called `display_info`, but the implementation in `Worker` includes additional information about the job title.

2. **Polymorphic Function (`print_info`)**: The `print_info` function accepts any object that has a `display_info` method. It can work with both `Person` and `Worker` objects (or any other class with a compatible method), even though their implementations of `display_info` are different.

3. **Program Output**: When the `print_info` function is called with a `Person` object, it prints the name and age. When called with a `Worker` object, it also prints the job title.

Polymorphism fosters code reusability and can simplify code structure. It enables a level of abstraction where functions can operate on data of multiple types, as long as they adhere to a specific interface or method signature, making the code more flexible and extensible.

### Abstraction

Abstraction is the process of hiding the complex reality of an object while exposing only the essential parts. In programming, it means defining the essential characteristics of an object, such as its attributes and methods, without including the internal details of how those characteristics are implemented.

In OOP, you can achieve abstraction using abstract classes and methods. An abstract class serves as a blueprint for other classes and cannot be instantiated on its own. Abstract methods are declared in the abstract class but are not implemented, meaning that the derived classes must provide their own implementation of these methods.

Let's define an abstract class `Vehicle` with an abstract method `move`, and two concrete classes `Car` and `Boat` that inherit from `Vehicle` and provide their own implementation of the `move` method:

{{< highlight python >}}
from abc import ABC, abstractmethod

class Vehicle(ABC):
    @abstractmethod
    def move(self):
        pass

class Car(Vehicle):
    def move(self):
        return "The car is driving on the road."

class Boat(Vehicle):
    def move(self):
        return "The boat is sailing on the water."
{{</highlight >}}

{{< highlight python >}}
car = Car()
print(car.move())  # Output: The car is driving on the road.

boat = Boat()
print(boat.move())  # Output: The boat is sailing on the water.
{{</highlight >}}

1. **Abstract Class (`Vehicle`)**: This class serves as a blueprint for other classes and cannot be instantiated itself. It declares an abstract method `move`.

2. **Concrete Classes (`Car` and `Boat`)**: These classes provide their own implementation of the `move` method, fulfilling the contract established by the abstract class.

3. **Program Output**: The output reflects the specific implementation of the `move` method for each class.

### How abstraction differs from polymorphism

- **Abstraction** focuses on hiding the internal details of an object while exposing only the necessary parts. It defines what an object can do, without specifying how it does it. Abstract classes and methods enforce a contract that derived classes must fulfill.

- **Polymorphism** allows objects of different types to be treated as objects of a common type. It emphasizes the ability of different objects to respond to the same method call in a way that's specific to their individual types. While abstraction defines a contract, polymorphism allows for flexibility in fulfilling that contract through various implementations.

In a sense, abstraction sets the rules, and polymorphism allows different objects to follow those rules in their unique ways. Together, they contribute to a code structure that is more organized, flexible, and maintainable.

## Conclusion

Object-Oriented Programming is a powerful paradigm that enables developers to model real-world entities as objects and interact with them in a way that is intuitive and organized. The core concepts of OOP—encapsulation, inheritance, polymorphism, and abstraction—provide a robust framework for writing code that is reusable, maintainable, and extensible.

Understanding OOP is essential for any programmer, and while the examples in this article are in Python, the principles can be applied to many modern programming languages. Mastery of OOP will provide a strong foundation for building complex software systems and applications.

For more information please check the series about [Object-Oriented programming](/series/object-oriented-programming/) on this blog.
