---
type: docs
authors: ["jnonino"]
series: ["Programming"]
nav_weight: 202
title: "Input and output operations"
description: "Input/output operations (I/O) allow a program to communicate and exchange data with the outside world. In this article we will see in detail input operations from the keyboard or a file, and output to the screen or a file."
date: 2023-09-19
tags: ["intro", "programming", "input/output", "I/O"]
images:
  - /images/banners/programming-course.en.png
---

## Keyboard input

Python provides built-in functions to read data entered by the user at runtime. This is known as "standard input" (Downey, 2015).

The `input()` function allows reading a value entered by the user and assigning it to a variable. For example:

```python
name = input("Enter your name: ")
```

This displays the message "Enter your name: " and waits for the user to enter text and press Enter. That value is assigned to the `name` variable (Lutz, 2013).

The `input()` function always returns a string. If we want to ask for a number or other data type, we must convert it using `int()`, `float()`, etc (McKinney, 2018):

```python
age = int(input("Enter your age: "))
pi = float(input("Enter the value of pi: "))
```

### Reading Multiple Values

We can ask for and read multiple values on the same line separating them with commas (Matthes, 2015):

```python
name, age = input("Enter name and age: ").split()
```

The `split()` method divides the input into parts and returns a list of strings. We then assign the list elements to separate variables.

We can also read multiple lines of input with a loop (Downey, 2015):

```python
names = [] # empty list

for x in range(3):
   name = input("Enter a name: ")
   names.append(name)
```

This code reads 3 names entered by the user and adds them to a list.

## Screen Output

Python also provides functions to send program output to "standard output", usually the screen or terminal (McKinney, 2018).

The `print()` function displays the value passed as a parameter:

```python
name = "Eric"
print(name) # displays "Eric"
```

We can print multiple values separated by commas (Lutz, 2013):

```python
print("Hello", name, "!") # displays "Hello Eric!"
```

We can also use literal values without assigning to variables (Matthes, 2015):

```python
print("2 + 3 =", 2 + 3) # displays "2 + 3 = 5"
```

### Output Formatting

Python provides various ways to format output (Downey, 2015):

**f-Strings**: Allow inserting variables into a string:

```python
name = "Eric"
print(f"Hello {name}") # displays "Hello Eric"
```

**%s**: Inserts string text into a format string:

```python
name = "Eric"
print("Hello %s" % name) # displays "Hello Eric"
```

**%d**: Inserts integer numbers:

```python
value = 15
print("The value is %d" % value) # displays "The value is 15"
```

**.format()**: Inserts values into a format string:

```python
name = "Eric"
print("Hello {}. Welcome".format(name))
# displays "Hello Eric. Welcome"
```

These formatting options allow us to interpolate variables and values into text strings to generate custom outputs. We can combine multiple values and formats in a single output string (Lutz, 2013).

## Output to a File

In addition to printing to the screen, we can write output to a file using the `open()` function (McKinney, 2018):

```python
file = open("data.txt", "w")
```

This opens `data.txt` for writing ("w") and returns a file object.

Then we use `file.write()` to write to that file (Matthes, 2015):

```python
file.write("Hello World!")
file.write("This text goes to the file")
```

We must close the file with `file.close()` when finished (Downey, 2015):

```python
file.close()
```

We can also use `with` to open and automatically close:

```python
with open("data.txt", "w") as file:
   file.write("Hello World!")
   # no need to close, it's automatic
```

## Reading Files

To read a file we use `open()` in "r" mode and iterate over the file object (McKinney, 2018):

```python
with open("data.txt", "r") as file:
   for line in file:
      print(line) # prints each line of the file
```

This prints each line, including newlines.

We can read all lines to a list with `readlines()` (Matthes, 2015):

```python
lines = file.readlines()
print(lines)
```

To read the full content to a string we use `read()` (Downey, 2015):

```python
text = file.read()
print(text)
```

We can also read a specific number of bytes or characters with `read(n)` (Lutz, 2013).

## File Handling

There are several built-in functions to handle files in Python (McKinney, 2018):

- `open()` - Opens a file and returns a file object
- `close()` - Closes the file
- `write()` - Writes data to the file
- `read()` - Reads data from the file
- `readline()` - Reads a line from the file
- `truncate()` - Empties the file
- `seek()` - Changes the reading/writing position
- `rename()` - Renames the file
- `remove()` - Deletes the file

These allow us to perform advanced operations to read, write and maintain files.

## Conclusion

In this article we explained Python input and output operations in detail, including reading from standard input and writing to standard output or files. Properly handling input and output is essential for many Python applications. I recommend practicing with your own examples to master these functions (Matthes, 2015).

## References

- Downey, A. B. (2015). *Think Python: How to think like a computer scientist*. Needham, Massachusetts: Green Tea Press.

- McKinney, W. (2018). *Python for data analysis: Data wrangling with Pandas, NumPy, and IPython*. O'Reilly Media.

- Matthes, E. (2015). *Python crash course: A hands-on, project-based introduction to programming*. No Starch Press.

- Lutz, M. (2013). *Learning Python: Powerful Object-Oriented Programming*. O'Reilly Media, Incorporated.
