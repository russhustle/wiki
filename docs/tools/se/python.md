Python
===

- [Awesome Python](https://github.com/vinta/awesome-python)

Built-in Functions
---

|            |                                                              |                                         |
| ---------- | ------------------------------------------------------------ | --------------------------------------- |
|            |                                                              |                                         |
| `divmod()` | Quotient and remainder<br/>`q, r = divmod(x, y)`<br/>$q\times y+r=x$ | `q, r = divmod(8, 3)`<br/>q=2, r=2<br/> |
|            |                                                              |                                         |

| Function                                    | Description                                                  | Example                                        | Result                         |
| ------------------------------------------- | ------------------------------------------------------------ | ---------------------------------------------- | ------------------------------ |
| `abs(x)`                                    | Returns the absolute value of x                              | `abs(-5)`                                      | 5                              |
| `all(iterable)`                             | Returns True if all elements of iterable are true            | `all([1, 3, True, 'a'])`                       | True                           |
| `any(iterable)`                             | Returns True if any element of iterable is true              | `any([0, False, None, 5])`                     | True                           |
| `ascii(obj)`                                | Returns a string containing a printable representation of an object | `ascii("äöü")`                                 | '\xe4\xf6\xfc'                 |
| `bin(x)`                                    | Converts an integer to a binary string                       | `bin(10)`                                      | '0b1010'                       |
| `bool(x)`                                   | Converts a value to a Boolean                                | `bool(0)`                                      | False                          |
| `chr(i)`                                    | Returns a string representing a character with the specified Unicode code | `chr(65)`                                      | 'A'                            |
| `divmod(x, y)`                              | Returns a pair of numbers (a tuple) consisting of their quotient and remainder | `divmod(7, 3)`                                 | (2, 1)                         |
| `enumerate(iterable, start=0)`              | Returns an enumerate object, containing pairs of index and value | `list(enumerate(['a', 'b', 'c']))`             | [(0, 'a'), (1, 'b'), (2, 'c')] |
| `filter(function, iterable)`                | Filters the iterable elements based on the function, returns an iterator | `list(filter(lambda x: x%2==0, [1, 2, 3, 4]))` | [2, 4]                         |
| `float(x)`                                  | Converts a number or string to a floating-point number       | `float(5)`                                     | 5.0                            |
| `hex(x)`                                    | Converts an integer to a hexadecimal string                  | `hex(255)`                                     | '0xff'                         |
| `int(x, base=10)`                           | Converts a number or string to an integer                    | `int('1010', base=2)`                          | 10                             |
| `isinstance(obj, classinfo)`                | Checks if the object is an instance of classinfo             | `isinstance(5, int)`                           | True                           |
| `len(s)`                                    | Returns the number of items in a container                   | `len([1, 2, 3, 4])`                            | 4                              |
| `map(function, iterable)`                   | Applies a function to all items in an input list             | `list(map(lambda x: x*2, [1, 2, 3]))`          | [2, 4, 6]                      |
| `max(iterable, *[, key, default])`          | Returns the largest item in an iterable or the largest of two or more arguments | `max([3, 5, 2, 8])`                            | 8                              |
| `min(iterable, *[, key, default])`          | Returns the smallest item in an iterable or the smallest of two or more arguments | `min([3, 5, 2, 8])`                            | 2                              |
| `pow(x, y, z=None)`                         | Returns x to the power of y, if z is present, returns x to the power of y modulo z | `pow(2, 3)`                                    | 8                              |
| `range(stop) or range(start, stop[, step])` | Returns a sequence of numbers as an immutable sequence object | `list(range(0, 10, 2))`                        | [0, 2, 4, 6, 8]                |

Collections
---

`Counter()`

functools
---

`reduce()`