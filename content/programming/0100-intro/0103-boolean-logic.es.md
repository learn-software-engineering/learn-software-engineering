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
