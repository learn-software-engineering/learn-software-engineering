---
authors: ["jnonino"]
title: "Recursive functions"
description: "A recursive function is a function that calls itself in order to solve a problem. This self-referential nature can lead to elegant and concise solutions, but it also requires careful design to prevent infinite loops and stack overflows. In this article, we'll explore the concept of recursion, learn how to write recursive functions in Python, and discuss their pros and cons."
date: 2023-08-08
draft: true
tags: ["recursion", "factorial", fibonacci", "python"]
---

A recursive function breaks down a problem into smaller, more manageable subproblems. These subproblems are solved by the same function, which continues to call itself until it reaches a base case.

The factorial function is a great example to demonstrate recursion. Let's break it down step by step.

The factorial of a positive integer $n$ is the product of all positive integers less than or equal to $n$. For example:

- $5! = 5 * 4 * 3 * 2 * 1 = 120$
- $4! = 4 * 3 * 2 * 1 = 24$
- $3! = 3 * 2 * 1 = 6$

Here's the Python code for calculating factorial using recursion:

{{< highlight python >}}
def factorial(n):
    if n == 1:
        return 1
    return n * factorial(n-1)
{{</highlight >}}

1. **Base Case**: The base case is the simplest, smallest instance of the problem that can be answered directly. For the factorial, when $n = 1$, the result is $1$.

2. **Recursive Case**: If $n$ is greater than $1$, the function calls itself with $n-1$, and multiplies the result by $n$.

Let's say you want to calculate the factorial of $5$, so you call `factorial(5)`.

Here's what happens:

1. **Step 1**: Since $n = 5$ is not $1$, the function calls `factorial(4)`, then multiplies the result by $5$.
2. **Step 2**: Now, within `factorial(4)`, $n = 4$, so the function calls `factorial(3)`, then multiplies the result by $4$.
3. **Step 3**: Inside `factorial(3)`, $n = 3$, so it calls `factorial(2)`, then multiplies the result by $3$.
4. **Step 4**: Within `factorial(2)`, $n = 2$, so it calls `factorial(1)`, then multiplies the result by $2$.
5. **Step 5**: Finally, `factorial(1)` reaches the base case, where $n = 1$, so it returns $1$.

Now the results unwind:

- `factorial(2)` returns $2 * 1 = 2$
- `factorial(3)` returns $3 * 2 = 6$
- `factorial(4)` returns $4 * 6 = 24$
- `factorial(5)` returns $5 * 24 = 120$

The final result is $120$, which is the value of $5!$.

Here's a visual representation of the call stack:

{{< highlight python >}}
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
{{</highlight >}}

## Tail Recursion

Tail recursion is a special form of recursion where the recursive call is the last operation in the function. This can be more efficient, as some compilers and interpreters can optimize it into a loop.

The Fibonacci sequence is a series of numbers where each number is the sum of the two preceding ones. The sequence begins with $0$ and $1$, and every number thereafter is the sum of the two preceding numbers. The first few numbers in the sequence are: $$ 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ... $$

Here's the Python code for calculating the $n^th$ Fibonacci number using tail recursion:

{{< highlight python >}}
def fibonacci(n, a=0, b=1):
    if n == 0:
        return a
    return fibonacci(n-1, b, a+b)
{{</highlight >}}

The function takes three parameters:

- $n$: The position of the desired number in the sequence.
- $a$ and $b$: Two numbers that help in computing the sequence.

Here's a breakdown of how the function works:

1. **Base Case**: If $n$ is $0$, the function returns $a$. This is the value of the $n^th$ number in the sequence.

2. **Recursive Case**: If $n$ is not $0$, the function calls itself with $n-1$, $b$, and $a+b$. These parameters shift the position in the sequence and set up the next numbers for addition.

Suppose we want to find the $5^th$ number in the Fibonacci sequence by calling `fibonacci(5)`.

Here's what happens:

1. **Step 1**: Since $n = 5$, call `fibonacci(4, 1, 1)` (because $a = 0$, $b = 1$, $a + b = 1$).
2. **Step 2**: Since $n = 4$, call `fibonacci(3, 1, 2)` (because $a = 1$, $b = 1$, $a + b = 2$).
3. **Step 3**: Since $n = 3$, call `fibonacci(2, 2, 3)` (because $a = 1$, $b = 2$, $a + b = 3$).
4. **Step 4**: Since $n = 2$, call `fibonacci(1, 3, 5)` (because $a = 2$, $b = 3$, $a + b = 5$).
5. **Step 5**: Since $n = 1$, call `fibonacci(0, 5, 8)` (because $a = 3$, $b = 5$, $a + b = 8$).
6. **Step 6**: Since $n = 0$, return $a$, which is $5$.

The result is $5$, which is the $5^th$ number in the Fibonacci sequence.

Here's a visual representation of the call stack:

{{< highlight python >}}
fibonacci(5, 0, 1)
  -> fibonacci(4, 1, 1)
    -> fibonacci(3, 1, 2)
      -> fibonacci(2, 2, 3)
        -> fibonacci(1, 3, 5)
          -> fibonacci(0, 5, 8)
            return 5
{{</highlight >}}

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
