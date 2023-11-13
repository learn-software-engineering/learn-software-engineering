---
type: docs
authors: ["jnonino"]
series: ["Programming"]
nav_weight: 205
title: "Recursive Functions"
description: "Recursion is a fundamental concept in programming that allows a function to call itself. At first it may seem counterintuitive, but mastering this approach opens the door to elegant solutions for certain problems."
date: 2023-09-30
tags: ["programming", "functions", "recursion", "factorial", fibonacci"]
images:
  - /images/banners/content/programming/0200-starting-concepts/0205-recursive-functions.en.png
---

## Recursion: the art of calling yourself

Imagine a box of mirrors where each mirror reflects what it sees in the next, creating an infinite series of reflections. Recursion in programming is something similar. It is a technique where a function calls itself directly or indirectly[^1]. This creates a cycle where the function solves a problem by dividing it into smaller instances of the same problem, until reaching a simple base case that can be solved directly.

For example, let's imagine a function that prints a countdown:

```python
def countdown(number):

    if number > 0:
        print(number)
        countdown(number - 1)
    else:
        print("Blastoff!")

countdown(5)
```

This function calls itself recursively decrementing the number each time until reaching 0, and then prints the blastoff message.

Recursion is a declarative approach that focuses on dividing a problem into recursive cases without needing to explicitly control the loop using iterators or counters like in imperative programming.

---

## The structure of a recursive function

The power of recursion lies in its simplicity. However, it is essential to understand its structure to avoid common pitfalls. A typical recursive function has two main parts[^2]:

1. **Base case**: The simplest case with a known solution that doesn't require recursion. It is the stopping condition that halts the recursion. Without a base case, we would fall into infinite recursion which eventually overflows the call stack.
2. **Recursive case**: This is where the magical recursive call occurs. At this point, the function calls itself with a modified argument, usually a reduced version of the original problem.

---

## Classic recursion examples

### Factorial

The factorial of a positive integer {{< katex formula="n" inline=true />}} is the product of all positive integers less than or equal to {{< katex formula="n" inline=true />}}. For example:

- {{< katex formula="5! = 5 * 4 * 3 * 2 * 1 = 120" inline=true />}}
- {{< katex formula="4! = 4 * 3 * 2 * 1 = 24" inline=true />}}
- {{< katex formula="3! = 3 * 2 * 1 = 6" inline=true />}}

Here is the Python code for calculating factorial using recursion:

```python
def factorial(n):
    if n == 1:
        return 1       # Base case
    return n * factorial(n-1) # Recursive case
```

- **Base case**: The base case is the simplest, smallest instance of the problem that can be answered directly. For factorial, when {{< katex formula="n = 1" inline=true />}}, the result is {{< katex formula="1" inline=true />}}.
- **Recursive case**: If {{< katex formula="n" inline=true />}} is greater than {{< katex formula="1" inline=true />}}, the function calls itself with {{< katex formula="n-1" inline=true />}}, and multiplies the result by {{< katex formula="n" inline=true />}}.

Let's say you want to calculate the factorial of {{< katex formula="5" inline=true />}}, so you call `factorial(5)`.

Here is what happens:

1. **Step 1**: Since {{< katex formula="n = 5" inline=true />}} is not {{< katex formula="1" inline=true />}}, the function calls `factorial(4)`, then multiplies the result by {{< katex formula="5" inline=true />}}.
2. **Step 2**: Now, inside `factorial(4)`, {{< katex formula="n = 4" inline=true />}}, so the function calls `factorial(3)`, then multiplies the result by {{< katex formula="4" inline=true />}}.
3. **Step 3**: Inside `factorial(3)`, {{< katex formula="n = 3" inline=true />}}, so it calls `factorial(2)`, then multiplies the result by {{< katex formula="3" inline=true />}}.
4. **Step 4**: Inside `factorial(2)`, {{< katex formula="n = 2" inline=true />}}, so it calls `factorial(1)`, then multiplies the result by {{< katex formula="2" inline=true />}}.
5. **Step 5**: Finally, `factorial(1)` reaches the base case, where {{< katex formula="n = 1" inline=true />}}, so it returns {{< katex formula="1" inline=true />}}.

Now the results unwind:

- `factorial(2)` returns {{< katex formula="2 * 1 = 2" inline=true />}}
- `factorial(3)` returns {{< katex formula="3 * 2 = 6" inline=true />}}
- `factorial(4)` returns {{< katex formula="4 * 6 = 24" inline=true />}}
- `factorial(5)` returns {{< katex formula="5 * 24 = 120" inline=true />}}

The final result is {{< katex formula="120" inline=true />}}, which is the value of {{< katex formula="5!" inline=true />}}.

Here is a visual representation of the call stack:

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

### Fibonacci sequence

The Fibonacci sequence is a series of numbers where each number is the sum of the previous two. It starts with {{< katex formula="0" inline=true />}} and {{< katex formula="1" inline=true />}}, and each subsequent number is the sum of the two numbers before it. The beginning of the sequence is: {{< katex formula="0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ..." inline=true />}}

Here is the Python code for calculating the {{< katex formula="n^th" inline=true />}} Fibonacci number using tail recursion:

```python
def fibonacci(n, a=0, b=1):
    if n == 0:
        return a
    return fibonacci(n-1, b, a+b)
```

The function takes three parameters:

- {{< katex formula="n" inline=true />}}: The position of the desired number in the sequence.
- {{< katex formula="a" inline=true />}} and {{< katex formula="b" inline=true />}}: Two numbers that aid in the sequence calculation.

Here is a breakdown of how the function works:

1. **Base case**: If {{< katex formula="n" inline=true />}} is {{< katex formula="0" inline=true />}}, the function returns {{< katex formula="a" inline=true />}}. This is the value of the {{< katex formula="n^th" inline=true />}} number in the sequence.
2. **Recursive case**: If {{< katex formula="n" inline=true />}} is not {{< katex formula="0" inline=true />}}, the function calls itself with {{< katex formula="n-1" inline=true />}}, {{< katex formula="b" inline=true />}}, and {{< katex formula="a+b" inline=true />}}. These parameters change the position in the sequence and prepare the next numbers for summation.

Suppose we want to find the {{< katex formula="5^th" inline=true />}} number in the Fibonacci sequence by calling `fibonacci(5)`.

Here is what happens:

1. **Step 1**: Since {{< katex formula="n = 5" inline=true />}}, it calls `fibonacci(4, 1, 1)` (because {{< katex formula="a = 0" inline=true />}}, {{< katex formula="b = 1" inline=true />}}, {{< katex formula="a + b = 1" inline=true />}}).
2. **Step 2**: Since {{< katex formula="n = 4" inline=true />}}, it calls `fibonacci(3, 1, 2)` (because {{< katex formula="a = 1" inline=true />}}, {{< katex formula="b = 1" inline=true />}}, {{< katex formula="a + b = 2" inline=true />}}).
3. **Step 3**: Since {{< katex formula="n = 3" inline=true />}}, it calls `fibonacci(2, 2, 3)` (because {{< katex formula="a = 1" inline=true />}}, {{< katex formula="b = 2" inline=true />}}, {{< katex formula="a + b = 3" inline=true />}}).
4. **Step 4**: Since {{< katex formula="n = 2" inline=true />}}, it calls `fibonacci(1, 3, 5)` (because {{< katex formula="a = 2" inline=true />}}, {{< katex formula="b = 3" inline=true />}}, {{< katex formula="a + b = 5" inline=true />}}).
5. **Step 5**: Since {{< katex formula="n = 1" inline=true />}}, it calls `fibonacci(0, 5, 8)` (because {{< katex formula="a = 3" inline=true />}}, {{< katex formula="b = 5" inline=true />}}, {{< katex formula="a + b = 8" inline=true />}}).
6. **Step 6**: Since {{< katex formula="n = 0" inline=true />}}, it returns {{< katex formula="a" inline=true />}}, which is {{< katex formula="5" inline=true />}}.

The result is {{< katex formula="5" inline=true />}}, which is the {{< katex formula="5^th" inline=true />}} number in the Fibonacci sequence.

Here is a visual representation of the call stack:

```python
fibonacci(5, 0, 1)
  -> fibonacci(4, 1, 1)
    -> fibonacci(3, 1, 2)
      -> fibonacci(2, 2, 3)
        -> fibonacci(1, 3, 5)
          -> fibonacci(0, 5, 8)
            return 5
```

---

## Advantages and Disadvantages

Recursion has certain advantages[^3]:

- It can result in simple, elegant solutions for problems that easily break down into subproblems.
- It eliminates the need for explicit loop control.
- It mirrors the mathematical structure of a recursive definition.

The disadvantages include:

- It can be less efficient (high memory consumption) than iteration due to repeated function calls and stack frame creation.
- Too much recursion can overflow the call stack and cause crashes.
- It can be harder to debug and analyze than iteration.

Therefore, recursion is a powerful tool that should be used judiciously in appropriate cases.

---

## Recursion vs Iteration

Recursion and iteration (using loops) are parallel tools and we can use either one to solve many problems. Both techniques have the potential to solve the same problems, but their implementation and efficiency may vary. Let's take the factorial example:

**Iterative**

```python
def factorial_iterative(n):
    result = 1
    for i in range(1, n+1):
        result *= i
    return result
```

**Recursive**

```python
def factorial_recursive(n):
    if n == 1:
        return 1
    return n * factorial(n-1)
```

The iterative version is more efficient in terms of space, but the recursive is cleaner and easier to understand. The choice between recursion and iteration often depends on the specific problem, memory constraints, and programmer preferences.

---

## Conclusion

Recursion is a key technique that allows writing elegant, natural, and efficient algorithms when properly leveraged. Understanding how to break down a problem into recursive cases is essential to master this skill. Recursion provides a unique declarative alternative to solve complex problems without managing explicit loops. However, it is crucial to always remember to define an adequate base case and be aware of recursion limitations in terms of efficiency and memory usage. Knowing how to combine recursion and iteration gives flexibility when creating optimal solutions.

As always, the key lies in finding the right balance and using the right tool for the right job.

---

{{< bs/alert primary >}}
{{% markdownify %}}
Cheers for making it this far! I hope this journey through the programming universe has been as fascinating for you as it was for me to write down.

We're keen to hear your thoughts, so don't be shy – drop your comments, suggestions, and those bright ideas you're bound to have.

Also, to delve deeper than these lines, take a stroll through the practical examples we've cooked up for you. You'll find all the code and projects in our GitHub repository {{< bs/alert-link "learn-software-engineering/examples-programming" "https://github.com/learn-software-engineering/examples-programming" >}}.

Thanks for being part of this learning community. Keep coding and exploring new territories in this captivating world of software!
{{% /markdownify %}}
{{< /bs/alert >}}

---

## References

[^1]: Cormen, T.H., Leiserson, C.E., Rivest, R.L., & Stein, C. (2009). Introduction to Algorithms. MIT Press.
[^2]: Kindler, E., & Krivy, I. (2011). *Object-Oriented Simulation of systems with Java: A working introduction*. BoD–Books on Demand.
[^3]: Lutz, M. (2013). *Learning Python: Powerful Object-Oriented Programming*. O'Reilly Media, Incorporated.
