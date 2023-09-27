---
type: docs
authors: ["jnonino"]
series: ["Programming"]
nav_weight: 203
title: "Functions"
description: "Functions are a fundamental concept in programming, allowing for code reusability and modular design. In this article, we'll explore what functions are, their various components, and how to use them, with examples in Python. These principles, however, are widely applicable across many programming languages."
date: 2023-03-17
tags: ["intro", "programming", "functions", "methods"]
images:
  - /images/banners/programming-course.en.png
---

## What are functions?

A function is a block of organized, reusable code that performs a single, related action. Functions provide better modularity for your application and enable a high degree of code reusability.

### Function declaration

In Python, you declare a function using the `def` keyword followed by the function name and parentheses `()`. Inside the parentheses, you can include parameters.

```python
def greet(name):
    print(f"Hello, {name}!")
```

### Calling a function

You can "call" or "invoke" a function by using its name followed by parentheses, passing any required arguments.

```python
greet("John")
```

## Parameters and arguments

### Parameters

Parameters are variables listed inside the parentheses in the function definition.

```python
def add_numbers(x, y):
    return x + y
```

Here, `x` and `y` are parameters.

You can set default values for parameters. If an argument for that parameter is not provided, the default value will be used.

```python
def power(base, exponent=2):
    return base ** exponent

result = power(3)  # result will be 9
```

### Arguments

Arguments are the values sent to the function when it is called. They are assigned to the corresponding parameters.

```python
result = add_numbers(5, 3)  # 5 and 3 are arguments
```

#### Variable-length arguments

Sometimes, you may want to define a function that can accept any number of arguments. In Python, you can use `*args` and `**kwargs`.

##### `*args`

`*args` allows you to pass a variable number of non-keyword arguments to a function. Inside the function, `args` is a tuple containing all the arguments.

Example:

```python
def add_all(*args):
    sum = 0
    for num in args:
        sum += num
    return sum

result = add_all(3, 5, 2, 1)  # result will be 11
```

##### `**kwargs`

`**kwargs` allows you to pass a variable number of keyword arguments to a function. Inside the function, `kwargs` is a dictionary containing the key-value pairs.

Example:

```python
def print_info(**kwargs):
    for key, value in kwargs.items():
        print(f"{key}: {value}")

print_info(name="John", age=30, city="New York")
```

Output:

```bash
name: John
age: 30
city: New York
```

##### Combining `*args` and `**kwargs`

You can use both `*args` and `**kwargs` in the same function to accept any combination of positional and keyword arguments.

```python
def mixed_function(a, b, *args, **kwargs):
    print(f"a: {a}, b: {b}")
    print("Additional arguments:")
    for arg in args:
        print(arg)
    print("Keyword arguments:")
    for key, value in kwargs.items():
        print(f"{key}: {value}")

mixed_function(1, 2, 3, 4, name="John", age=30)
```

Output:

```bash
a: 1, b: 2
Additional arguments:
3
4
Keyword arguments:
name: John
age: 30
```

## Return values

A function can return a value using the `return` keyword. This value can be stored in a variable or used as part of an expression.

```python
def multiply(x, y):
    return x * y

result = multiply(3, 4)  # result will be 12
```

## Scope

Scope refers to the part of the code where a variable is accessible. Variables defined inside a function are local to that function, while those defined outside are global.

```python
def local_example():
    local_var = 5  # Accessible only within this function

global_var = 10  # Accessible throughout the program
```

## Recursive functions

A recursive function is one that calls itself to solve a problem. This can be a powerful approach but must be handled with care to avoid infinite loops.

```python
def factorial(n):
    if n == 1:
        return 1
    else:
        return n * factorial(n-1)
```

## Conclusion

Functions are a core concept in programming, enabling cleaner, more organized, and reusable code. They encapsulate specific functionality, making code more readable and maintainable. While this article used Python examples, the principles of defining and using functions are consistent across many programming languages. Mastering functions is a vital step in becoming a skilled programmer.
