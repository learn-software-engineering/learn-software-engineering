---
type: docs
authors: ["jnonino"]
series: ["Programming"]
nav_weight: 5
title: "Control Flow"
description: "Control flow refers to the order in which the statements, instructions, or function calls of an application are executed. Understanding control flow is crucial in programming, as it enables the creation of dynamic, responsive code. This article will cover the essential aspects of control flow, using Python for examples, but the principles apply to many programming languages."
date: 2023-03-15
tags: ["intro", "programming", "control-flow", "conditionals", "if", "loops", "for", "while"]
---

## Conditional statements

Conditional statements are used to execute different code based on certain conditions.

### If

The `if` statement evaluates a condition and executes a block of code if that condition is `True`.

{{< highlight python >}}
x = 10
if x > 5:
    print("x is greater than 5")
{{</highlight >}}

### Else

The `else` statement is used with an `if` statement to define code that will be executed if the condition is `False`.

{{< highlight python >}}
x = 3
if x > 5:
    print("x is greater than 5")
else:
    print("x is not greater than 5")
{{</highlight >}}

### Elif

The `elif` (else if) statement allows you to check multiple conditions.

{{< highlight python >}}
x = 5
if x > 10:
    print("x is greater than 10")
elif x == 5:
    print("x is equal to 5")
else:
    print("x is less than 5")
{{</highlight >}}

## Loops

Loops allow you to execute a block of code repeatedly.

### For

The `for` loop is used to iterate over a sequence (e.g., a list, tuple, or string).

{{< highlight python >}}
for i in range(5):
    print(i)
{{</highlight >}}

### While

The `while` loop continues to execute a block of code as long as a condition is `True`.

{{< highlight python >}}
x = 0
while x < 5:
    print(x)
    x += 1
{{</highlight >}}

## Break and continue

### Break

The `break` statement terminates the loop and transfers execution to the code that follows the loop.

{{< highlight python >}}
for i in range(5):
    if i == 3:
        break
    print(i)
{{</highlight >}}

### Continue

The `continue` statement skips the current iteration and continues with the next one.

{{< highlight python >}}
for i in range(5):
    if i == 3:
        continue
    print(i)
{{</highlight >}}

## Functions

Functions are reusable blocks of code that you can call by name. They allow for more organized, modular, and efficient code.

{{< highlight python >}}
def greet(name):
    print(f"Hello, {name}!")

greet("John")
{{</highlight >}}

In the next article, we will delve deeper into functions.

## Conclusion

Control flow constructs such as conditional statements, loops, and functions form the backbone of programming, enabling the creation of flexible and responsive applications. By mastering these concepts, programmers can write code that responds dynamically to user input and system conditions. While the examples provided are in Python, the fundamental ideas of control flow are consistent across many programming languages, and learning them is a critical step in becoming a proficient programmer.
