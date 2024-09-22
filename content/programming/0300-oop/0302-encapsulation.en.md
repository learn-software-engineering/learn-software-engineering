---
weight: 302
type: docs
title: "Encapsulation"
description: >
  One of the fundamental pillars of object-oriented programming is encapsulation. This powerful characteristic allows us to control access to class members, hiding implementation details and protecting the state of our objects. In this article we will delve into the concept of encapsulation, the usefulness of getters, setters, public/private properties and methods, and the important benefits this provides us as developers.
date: 2023-10-04
tags: ["oop", "object-oriented", "encapsulation"]
# images:
#   - /images/banners/content/programming/0300-oop/0302-encapsulation.en.png
---

The Oxford Dictionary defines encapsulation as *"enclosed or contained as if in a capsule"*. This is precisely what we seek to achieve - *"packaging"* data and code within a single capsule (the class) to hide its internal complexity.

The formal definition would be:

> "Encapsulation refers to bundling data and functions that manipulate these data into a single entity or software module."[^1]

That is, keeping related data and behaviours together in order to restrict direct access to that data from other parts of the programme, interacting only through a controlled interface (public API).

This provides advantages like:

- Control over data modification.
- Flexibility to change internal parts without affecting others.
- Protection of the consistent state of objects.
- Hiding complexity from the user.

Let's see with concrete examples how to encapsulate in OOP.

---

## Getters and Setters

Say we have a `BankAccount` class, with properties like `name`, `account number` and `balance`:

```python
class BankAccount:

    name = ""
    account_number = 0
    balance = 0.0
```

We can directly access attributes like:

```python
account1 = BankAccount()
account1.name = "John"
account1.account_number = 1234
account1.balance = 2500
```

The problem is any other code can modify the balance to invalid values:

```python
account1.balance = -9900 # Balance can't be negative in this bank!
```

This allows inconsistent state. To encapsulate we use **getters and setters**:

```python
class BankAccount:

    def __init__(self):
        self.__balance = 0

    def get_balance(self):
        return self.__balance

    def set_balance(self, value):
        if value < 0:
            raise Exception("Balance can't be negative in this bank")
        self.__balance = value
```

- `__balance` is now **private**. It is only manipulated via the public getters and setters.

- The setter controls invalid values not being input.

In Python, prepending double underscore `__` denotes a **private** method or attribute of the class. With a single underscore `_` it's by convention a **protected** element, accessible from class and subclasses but not externally. And with `no underscores`, methods and attributes are **public**.

In Java this is explicit using the keywords `public`, `protected` and `private`:
```java
public class Person {

    private String name; // Private

    public String getName() { // Public
        return this.name;
    }

}
```

This notation helps declare the desired visibility to properly apply encapsulation.

---

## Benefits of encapsulation

This powerful technique provides great advantages:

- **Information hiding:** Implementation details are invisible to other objects, reducing coupling. Internal code can change minimizing impact.
- **Control over data:** Integrity and validity of state is guaranteed via setters/validators.
- **Flexible code:** Isolation between interfaces and specifics enables building more extensible and maintainable systems over time.

> "Every module hides the complexity of its contents behind a simple fa??ade (interface)", Gang of Four[^2].

Ultimately, when we need to control how internal state is manipulated in a class from other parts of the application, encapsulation is the best solution.

---

## Conclusion

Applying encapsulation by restricting direct access to data and carefully coding a public access interface allows us to build more robust, secure and sustainable OOP systems over time.

Mastering these techniques requires experience and good judgement to find the right balance between information hiding and flexibility. But undoubtedly it???s worth the effort to leverage the benefits we???ve seen from this wonderful OOP principle.

---

## References

[^1]: Byron, Jeff. Encapsulation in Java. https://stackify.com/encapsulation-in-java/
[^2]: Gamma, Erich et al. Design Patterns: Elements of Reusable Object-Oriented Software. Addison-Wesley. 1994.
