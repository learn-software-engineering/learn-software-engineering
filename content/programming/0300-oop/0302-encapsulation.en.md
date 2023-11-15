---
draft: true
type: docs
authors: ["jnonino"]
series: ["Programming"]
nav_weight: 302
title: "Encapsulation"
date: 2023-10-04
tags: ["oop", "object-oriented", "encapsulation"]
images:
  - /images/banners/content/programming/0300-oop/0302-encapsulation.en.png
---

Encapsulation is one of the four foundational principles of Object-Oriented Programming (OOP). It plays a crucial role in protecting the integrity of an object by controlling how its data can be accessed and modified. This article, will explore the concept of encapsulation, explain modifiers, and demonstrate how to use getters and setters in Python.

Encapsulation refers to the bundling of data (attributes) and the methods (functions) that operate on the data into a single unit, restricting direct access to some of an object's components. It acts like a protective barrier that prevents the code outside the class from accidentally modifying the internal state of an object.

The primary purposes of encapsulation are:

- **Maintaining Integrity**: By controlling access, encapsulation ensures that the object's state cannot be changed arbitrarily.
- **Enhancing Security**: It hides the implementation details, exposing only what is necessary.
- **Improving Maintainability**: Encapsulation makes code more modular and easier to modify without affecting other parts of the program.

## Public, Private, and Protected modifiers

In Python, you can define attributes and methods as public, private, or protected using the following conventions:

- **Public**: Accessible from anywhere. No specific notation is required.
- **Private**: Denoted by a double underscore prefix (e.g., `__attribute`). Only accessible within the class.
- **Protected**: Denoted by a single underscore prefix (e.g., `_attribute`). It's a convention that these attributes shouldn't be accessed outside the class, but they are still technically accessible.

```python
class Account:
    public_data = "Public"
    _protected_data = "Protected"
    __private_data = "Private"
```

## Getters and setters

In encapsulation, getters and setters are used to access and modify private attributes.

- Getters are methods used to retrieve the value of private attributes.
- Setters are methods used to set or modify the value of private attributes.

Here's how you can define getters and setters in Python:

```python
class Person:
    def __init__(self, name, age):
        self.__name = name
        self.__age = age

    # Getter for name
    def get_name(self):
        return self.__name

    # Setter for name
    def set_name(self, name):
        self.__name = name
```

## Example

Let's take a look at a complete example that demonstrates encapsulation:

```python
class Student:
    def __init__(self, name, grade):
        self.__name = name
        self.__grade = grade

    # Getter for name
    def get_name(self):
        return self.__name

    # Setter for grade
    def set_grade(self, grade):
        if 0 <= grade <= 100:
            self.__grade = grade
        else:
            print("Grade must be between 0 and 100.")

    # Method to display student information
    def display_info(self):
        print(f"{self.__name} has a grade of {self.__grade}.")

student = Student("Alice", 90)
student.display_info()  # Output: Alice has a grade of 90.
student.set_grade(95)
student.display_info()  # Output: Alice has a grade of 95.
```

## Conclusion

Encapsulation is a powerful concept in OOP that promotes code integrity, security, and maintainability. By understanding and implementing public, private, and protected modifiers along with getters and setters, you can write more robust and well-organized code.

As you continue your journey into OOP, the knowledge of encapsulation will serve as a strong foundation for exploring more advanced topics and best practices.
