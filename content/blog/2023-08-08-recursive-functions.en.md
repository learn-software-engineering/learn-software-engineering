---
authors: ["jnonino"]
title: "Recursive functions"
description: "A recursive function is a function that calls itself in order to solve a problem. This self-referential nature can lead to elegant and concise solutions, but it also requires careful design to prevent infinite loops and stack overflows. In this article, we'll explore the concept of recursion, learn how to write recursive functions in Python, and discuss their pros and cons."
date: 2023-08-08
draft: false
tags: ["recursion", "factorial", fibonacci", "python"]
---

A recursive function breaks down a problem into smaller, more manageable subproblems. These subproblems are solved by the same function, which continues to call itself until it reaches a base case.

The factorial function is a great example to demonstrate recursion. Let's break it down step by step.

The factorial of a positive integer {{< katex formula="n" inline=true />}} is the product of all positive integers less than or equal to {{< katex formula="n" inline=true />}}. For example:

- {{< katex formula="5! = 5 * 4 * 3 * 2 * 1 = 120" inline=true />}}
- {{< katex formula="4! = 4 * 3 * 2 * 1 = 24" inline=true />}}
- {{< katex formula="3! = 3 * 2 * 1 = 6" inline=true />}}

Here's the Python code for calculating factorial using recursion:

```python
def factorial(n):
    if n == 1:
        return 1
    return n * factorial(n-1)
```

1. **Base Case**: The base case is the simplest, smallest instance of the problem that can be answered directly. For the factorial, when {{< katex formula="n = 1" inline=true />}}, the result is {{< katex formula="1" inline=true />}}.

2. **Recursive Case**: If {{< katex formula="n" inline=true />}} is greater than {{< katex formula="1" inline=true />}}, the function calls itself with {{< katex formula="n-1" inline=true />}}, and multiplies the result by {{< katex formula="n" inline=true />}}.

Let's say you want to calculate the factorial of {{< katex formula="5" inline=true />}}, so you call `factorial(5)`.

Here's what happens:

1. **Step 1**: Since {{< katex formula="n = 5" inline=true />}} is not {{< katex formula="1" inline=true />}}, the function calls `factorial(4)`, then multiplies the result by {{< katex formula="5" inline=true />}}.
2. **Step 2**: Now, within `factorial(4)`, {{< katex formula="n = 4" inline=true />}}, so the function calls `factorial(3)`, then multiplies the result by {{< katex formula="4" inline=true />}}.
3. **Step 3**: Inside `factorial(3)`, {{< katex formula="n = 3" inline=true />}}, so it calls `factorial(2)`, then multiplies the result by {{< katex formula="3" inline=true />}}.
4. **Step 4**: Within `factorial(2)`, {{< katex formula="n = 2" inline=true />}}, so it calls `factorial(1)`, then multiplies the result by {{< katex formula="2" inline=true />}}.
5. **Step 5**: Finally, `factorial(1)` reaches the base case, where {{< katex formula="n = 1" inline=true />}}, so it returns {{< katex formula="1" inline=true />}}.

Now the results unwind:

- `factorial(2)` returns {{< katex formula="2 * 1 = 2" inline=true />}}
- `factorial(3)` returns {{< katex formula="3 * 2 = 6" inline=true />}}
- `factorial(4)` returns {{< katex formula="4 * 6 = 24" inline=true />}}
- `factorial(5)` returns {{< katex formula="5 * 24 = 120" inline=true />}}

The final result is {{< katex formula="120" inline=true />}}, which is the value of {{< katex formula="5!" inline=true />}}.

Here's a visual representation of the call stack:

```python
factorial(5)
  -> factorial(4)
    -> factorial(3)
      -> factorial(2)
        -> factorial(1)
          return 1
        return 2
      return 6
    return 24
  return 120
```

## Tail Recursion

Tail recursion is a special form of recursion where the recursive call is the last operation in the function. This can be more efficient, as some compilers and interpreters can optimize it into a loop.

The Fibonacci sequence is a series of numbers where each number is the sum of the two preceding ones. The sequence begins with {{< katex formula="0" inline=true />}} and {{< katex formula="1" inline=true />}}, and every number thereafter is the sum of the two preceding numbers. The first few numbers in the sequence are: {{< katex formula="0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ..." inline=true />}}

Here's the Python code for calculating the {{< katex formula="n^th" inline=true />}} Fibonacci number using tail recursion:

```python
def fibonacci(n, a=0, b=1):
    if n == 0:
        return a
    return fibonacci(n-1, b, a+b)
```

The function takes three parameters:

- {{< katex formula="n" inline=true />}}: The position of the desired number in the sequence.
- {{< katex formula="a" inline=true />}} and {{< katex formula="b" inline=true />}}: Two numbers that help in computing the sequence.

Here's a breakdown of how the function works:

1. **Base Case**: If {{< katex formula="n" inline=true />}} is {{< katex formula="0" inline=true />}}, the function returns {{< katex formula="a" inline=true />}}. This is the value of the {{< katex formula="n^th" inline=true />}} number in the sequence.

2. **Recursive Case**: If {{< katex formula="n" inline=true />}} is not {{< katex formula="0" inline=true />}}, the function calls itself with {{< katex formula="n-1" inline=true />}}, {{< katex formula="b" inline=true />}}, and {{< katex formula="a+b" inline=true />}}. These parameters shift the position in the sequence and set up the next numbers for addition.

Suppose we want to find the {{< katex formula="5^th" inline=true />}} number in the Fibonacci sequence by calling `fibonacci(5)`.

Here's what happens:

1. **Step 1**: Since {{< katex formula="n = 5" inline=true />}}, call `fibonacci(4, 1, 1)` (because {{< katex formula="a = 0" inline=true />}}, {{< katex formula="b = 1" inline=true />}}, {{< katex formula="a + b = 1" inline=true />}}).
2. **Step 2**: Since {{< katex formula="n = 4" inline=true />}}, call `fibonacci(3, 1, 2)` (because {{< katex formula="a = 1" inline=true />}}, {{< katex formula="b = 1" inline=true />}}, {{< katex formula="a + b = 2" inline=true />}}).
3. **Step 3**: Since {{< katex formula="n = 3" inline=true />}}, call `fibonacci(2, 2, 3)` (because {{< katex formula="a = 1" inline=true />}}, {{< katex formula="b = 2" inline=true />}}, {{< katex formula="a + b = 3" inline=true />}}).
4. **Step 4**: Since {{< katex formula="n = 2" inline=true />}}, call `fibonacci(1, 3, 5)` (because {{< katex formula="a = 2" inline=true />}}, {{< katex formula="b = 3" inline=true />}}, {{< katex formula="a + b = 5" inline=true />}}).
5. **Step 5**: Since {{< katex formula="n = 1" inline=true />}}, call `fibonacci(0, 5, 8)` (because {{< katex formula="a = 3" inline=true />}}, {{< katex formula="b = 5" inline=true />}}, {{< katex formula="a + b = 8" inline=true />}}).
6. **Step 6**: Since {{< katex formula="n = 0" inline=true />}}, return {{< katex formula="a" inline=true />}}, which is {{< katex formula="5" inline=true />}}.

The result is {{< katex formula="5" inline=true />}}, which is the {{< katex formula="5^th" inline=true />}} number in the Fibonacci sequence.

Here's a visual representation of the call stack:

```python
fibonacci(5, 0, 1)
  -> fibonacci(4, 1, 1)
    -> fibonacci(3, 1, 2)
      -> fibonacci(2, 2, 3)
        -> fibonacci(1, 3, 5)
          -> fibonacci(0, 5, 8)
            return 5
```

## Advantages and disadvantages

**Advantages**

1. **Conciseness**: Recursive functions can be more concise and elegant.
2. **Problem Decomposition**: Recursive functions break down a problem into smaller subproblems, often making them easier to understand.

**Disadvantages**

1. **Efficiency**: Recursive functions can be less efficient due to function call overhead.
2. **Debugging**: Debugging recursive functions can be challenging, especially if they lead to stack overflows.

## Conclusion

Recursive functions are a powerful tool in programming, providing elegant solutions to complex problems. However, they should be used with care, as they can lead to performance issues or make debugging more challenging.

Understanding the base cases, implementing tail recursion when possible, and carefully designing the recursive structure can lead to effective and efficient recursive solutions.
