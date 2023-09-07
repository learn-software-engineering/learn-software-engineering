---
type: docs
authors: ["jnonino"]
series: ["Programming"]
nav_weight: 4
title: "Variables and Data Types"
description: "Variables and data types are fundamental concepts in programming. They play an essential role in storing and managing data within a program. In this article, we'll explore what variables and data types are, using Python as an example, but the concepts are applicable across most programming languages."
date: 2023-03-13
tags: ["intro", "programming", "variables", "data-types"]
---

## Variables

A variable is like a container that stores a value. You can think of it as a label attached to a value, which allows you to reference that value later in your code. In Python, you can create a variable by simply assigning a value to a name using the equals sign `=`.

{{< highlight python >}}
x = 10
{{</highlight >}}

Here, `x` is the variable name, and `10` is the value assigned to it. You can then use `x` anywhere in your code to refer to the value `10`.

In Python, and many other programming languages, variables must adhere to certain naming rules:

1. Must start with a letter or an underscore (`_`).
2. Can contain letters, numbers, and underscores.
3. Cannot be a reserved word (such as `if`, `else`, etc.).
4. Names are case-sensitive (`variable` is different from `Variable`).

Example:

{{< highlight python >}}
my_variable = 100
Variable1 = "Hello"
{{</highlight >}}

## Data types

Data types define the type of value a variable can hold. They are important because they tell the compiler or interpreter how to handle the data stored in the variable. Python's primary data types include:

**Integer (`int`)**

Represents whole numbers, both positive and negative.

{{< highlight python >}}
age = 25
{{</highlight >}}

**Float (`float`)**

Represents decimal numbers.

{{< highlight python >}}
weight = 70.5
{{</highlight >}}

**String (`str`)**

A sequence of characters enclosed in single or double quotes.

{{< highlight python >}}
name = "John"
{{</highlight >}}

**Boolean (`bool`)**

Represents true or false values.

{{< highlight python >}}
is_happy = True
{{</highlight >}}

**List**

A collection of items in a specific order.

{{< highlight python >}}
fruits = ['apple', 'banana', 'cherry']
{{</highlight >}}

**Tuple**

Similar to a list, but immutable (cannot be changed).

{{< highlight python >}}
coordinates = (4, 5)
{{</highlight >}}

**Dictionary (`dict`)**

A collection of key-value pairs.

{{< highlight python >}}
person = {'name': 'John', 'age': 30}
{{</highlight >}}

## Type conversion

Sometimes, you may need to convert one data type to another. Python provides built-in functions for this, such as `int()`, `float()`, and `str()`.

{{< highlight python >}}
x = "10"
y = int(x)  # Converts the string "10" to an integer
{{</highlight >}}

## Conclusion

Understanding variables and data types is a foundational step in learning programming. While this article used Python for illustration, these concepts are universal across many programming languages. Experimenting with these concepts in your code will solidify your understanding and equip you with the tools to create versatile and efficient programs.
