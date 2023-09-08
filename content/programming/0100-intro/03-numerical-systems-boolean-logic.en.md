---
type: docs
authors: ["jnonino"]
series: ["Programming"]
nav_weight: 103
title: "Numerical systems and Boolean logic"
description: "Programming, at its core, involves manipulating numbers and logic. In this article, we will explore two essential numerical systems (Binary and Hexadecimal) and delve into the fundamental principles of Boolean logic. These concepts are vital for anyone beginning their journey in programming."
date: 2023-03-11
tags: ["intro", "programming", "decimal", "binary", "hexadecimal", "numerical-systems", "boolean-logic"]
---

## Binary numerical system

The Binary system is a `base-2` numerical system that uses only two symbols: {{< katex formula="0" inline=true />}} and {{< katex formula="1" inline=true />}}. It's the fundamental language of computers and is used to represent all types of data.

In the Binary system, each digit represents a power of {{< katex formula="2" inline=true />}}, with the rightmost digit representing {{< katex formula="2^0" inline=true />}}, the next representing {{< katex formula="2^1" inline=true />}}, and so on.

Binary number {{< katex formula="1011" inline=true />}} can be represented in Decimal as:

```katex
1 \times 2^3 + 0 \times 2^2 + 1 \times 2^1 + 1 \times 2^0 = 8 + 0 + 2 + 1 = 11
```


Binary is used in programming to understand how data is stored and manipulated at the hardware level. It’s essential for low-level programming like creating device drivers or embedded systems.

## Hexadecimal numerical system

The Hexadecimal system is a `base-16` numerical system, using sixteen distinct symbols. The first ten are the same as the decimal system, and the next six are represented as {{< katex formula="A" inline=true />}} for ten, {{< katex formula="B" inline=true />}} for eleven, {{< katex formula="C" inline=true />}} for twelve, {{< katex formula="D" inline=true />}} for thirteen, {{< katex formula="E" inline=true />}} for fourteen, and {{< katex formula="F" inline=true />}} for fifteen.

Like Binary, each digit in Hexadecimal represents a power, but this time of {{< katex formula="16" inline=true />}}.

Hexadecimal number {{< katex formula="2A3" inline=true />}} can be represented in Decimal as:

```katex
2 \times 16^2 + 10 \times 16^1 + 3 \times 16^0 = 512 + 160 + 3 = 675
```

Hexadecimal is often used in programming for defining colors in web development, memory addresses, or displaying binary-coded values in a more human-readable form.

## Boolean logic

Boolean logic is a branch of algebra that deals with true or false values. It's named after George Boole and is foundational in computer science and electrical engineering.

Boolean logic typically consists of five fundamental operators:

- **AND** (Conjunction): Returns true if both operands are true.
- **OR** (Disjunction): Returns true if at least one operand is true.
- **NOT** (Negation): Returns true if the operand is false.
- **XOR** (Exclusive OR): Returns true if exactly one of the operands is true.
- **NOR** (Logical NOR): Returns true if neither of the operands is true.
- **NAND** (Logical NAND): Returns true if at least one of the operands is false.

Different programming languages and systems might utilize these operators in various ways or under different names, but these are the core logical operators found in Boolean algebra.

Boolean logic is fundamental in programming for control structures, decision-making processes, and complex algorithms.

### Truth tables

A truth table is a mathematical table used in logic to compute and visualize the output values of logical functions, given all possible combinations of input values (true and false). Truth tables are used to describe how the output of a logic gate or expression changes based on the values of the inputs. Here there is a truth table for all the operators mentioned above.

| A | B | A AND B | A OR B | A XOR B | A NOR B | A NAND B | NOT A |
|:-:|:-:|:-------:|:------:|:-------:|:-------:|:--------:|:-----:|
| T | T | T       | T      | F       | F       | F        | F     |
| T | F | F       | T      | T       | F       | T        | F     |
| F | T | F       | T      | T       | F       | T        | T     |
| F | F | F       | F      | F       | T       | T        | T     |

## Conclusion

The Binary and Hexadecimal numerical systems, along with Boolean logic, are key concepts for anyone starting in programming. Understanding these foundational elements can provide deeper insights into how computers operate and how software interacts with hardware.

By grasping these concepts, you are not only laying down a solid foundation for further studies in programming but also developing a rigorous and analytical mindset that will serve you well in all aspects of computer science and software development.
