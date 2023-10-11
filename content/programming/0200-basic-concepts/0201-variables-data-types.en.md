---
type: docs
authors: ["jnonino"]
series: ["Programming"]
nav_weight: 201
title: "Variables and Data Types"
description: "Understanding how variables and data types work is essential to master any programming language. In this article we will review the basic concepts of variables, operators, data types and type conversions using the Python language. We will cover both theory and practical examples so you can apply these concepts in your own programs."
date: 2023-03-13
tags: ["intro", "programming", "variables", "data-types"]
images:
  - /images/banners/programming-course.en.png
---

## Variables

A variable is a container to store data in the computer's memory. We can think of it as a box with a label. The label is the variable name and inside the box its value is stored.

To declare a variable in Python we just write the name and assign a value:

```python
age = 28
price = 19.95
student = True
```

Variable names must start with letters or underscore, and can only contain letters, numbers and underscores. It is recommended to use meaningful names that represent the purpose of the variable.

In Python variables do not need to be declared with a particular type. The type is inferred automatically when assigning the value:

```python
age = 28 # age is integer type
price = 19.95 # price is float type
single = True # single is boolean type
```

Once assigned, a variable can change its value at any time:

```python
age = 30 # We change age to 30
```

### Scope and Lifetime

The **scope** of a variable refers to the parts of the code where it is available. Variables declared outside functions are global and available throughout the file. Variables inside a function are local and only visible within it.

The **lifetime** is the period during which the variable exists in memory. Local variables exist while the function executes, then they are destroyed. Global variables exist while the program is running.

### Assignment

Assignment with the `=` operator allows changing or initializing a variable's value:

```python
number = 10
number = 20 # Now number is 20
```

There are also compound assignment operators like `+=` and `-=` that combine an operation with assignment:

```python
number += 5 # Adds 5 to number (number = number + 5)
number -= 2 # Subtracts 2 from number
```

## Data Types

Data types define what kind of value a variable can store. Python has several built-in types, including:

**Numerical**: To store integer, float, and complex numeric values:

```python
integer = 10
float = 10.5
complex = 3 + 4j
```

**Strings**: To store text:

```python
text = "Hello World"
```

**Boolean**: For True or False logical values:

```python
true_variable = True
false_variable = False
```

**Collections**: To store multiple values like lists, tuples and dictionaries:

- **Lists**: Mutable sequences of values:

  ```python
  list = [1, 2, 3]
  ```

- **Tuples**: Immutable sequences of values:

  ```python
  tuple = (1, 2, 3)
  ```

- **Dictionaries**: Key-value pair structures:

  ```python
  dictionary = {"name":"John", "age": 20}
  ```

It is important to choose the data type that best represents the information we want to store.

## Operators

Operators allow us to perform operations with values and variables in Python. Some common operators are:

- Arithmetic: `+, -, *, /, %, //, **`

- Comparison: `==, !=, >, <, >=, <=`

- Logical: `and, or, not`

- Assignment: `=, +=, -=, *=, /=`

Let's see concrete examples of expressions using these operators in Python:

```python
# Arithmetic
5 + 4 # Addition, result 9
10 - 3 # Subtraction, result 7
4 * 5 # Multiplication, result 20

# Comparison
5 > 4 # Greater than, result True
7 < 10 # Less than, result True

# Logical
True and False # Result False
True or False # Result True
not True # Result False

# Assignment
number = 10
number += 5 # Adds 5 to number, equivalent to number = number + 5
```

Each type of operator works with specific data types. We must use them consistently according to our variable data types.

## Type Conversions

Sometimes we need to convert one data type to another to perform certain operations. In Python we can convert explicitly or implicitly:

**Explicit**: Using functions like `int()`, `float()`, `str()`:

```python
float = 13.5
integer = int(float) # converts 13.5 to 13

text = "100"
number = int(text) # converts "100" to 100
```

**Implicit**: Python automatically converts in some cases:

```python
integer = 100
float = 3.5
result = integer + float # result is 103.5, integer converted to float
```

Some conversions can generate data loss or errors:

```python
float = 13.5
integer = int(float)

print(integer) # 13, decimals are lost
```

To prevent this we must explicitly choose conversions that make sense for our data.

## Conclusion

In this article we reviewed key concepts like variables, operators, data types and conversions in Python. Applying these concepts well will allow you to efficiently manipulate data in your programs. I recommend practicing with your own examples to gain experience using these features. Good luck in your Python learning!

## References

- Downey, A. B. (2015). *Think Python: How to think like a computer scientist*. Needham, Massachusetts: Green Tea Press.

- McKinney, W. (2018). *Python for data analysis: Data wrangling with Pandas, NumPy, and IPython*. O'Reilly Media.

- Matthes, E. (2015). *Python crash course: A hands-on, project-based introduction to programming*. No Starch Press.

- Lutz, M. (2013). *Learning Python: Powerful Object-Oriented Programming*. O'Reilly Media, Incorporated.
