Configuration
===

|          | Documentation                                           | Repo                                                | PyPI                                         |
| -------- | ------------------------------------------------------- | --------------------------------------------------- | -------------------------------------------- |
| Hydra    | [Docs](https://hydra.cc/docs/intro/)                    | [GitHub](https://github.com/facebookresearch/hydra) | [PyPI](https://pypi.org/project/hydra-core/) |
| Argparse | [Docs](https://docs.python.org/3/library/argparse.html) |                                                     |                                              |

Hydra
---

#### Compose API in Jupyter Notebook

Reference: [Hydra Compose API](https://hydra.cc/docs/advanced/compose_api/)

```python
from hydra import compose, initialize
with initialize(version_base=None, config_path="./configs"):
    cfg = compose(config_name="default")
```

Argparse
---

1. Import the `argparse` module

    ```python
    import argparse
    ```

    Create an ArgumentParser object

    ```python
    parser = argparse.ArgumentParser(description="A simple argparse example")
    ```

3. Add arguments to the parser

    ```python
    parser.add_argument('-n', '--name', type=str, help='Your name')
    parser.add_argument('-a', '--age', type=int, help='Your age')
    parser.add_argument('-v', '--verbose', action='store_true', help='Display verbose output')
    ```

4. Parse the arguments

    ```python
    args = parser.parse_args()
    ```

5. Use the arguments in your program

    ```python
    if args.verbose:
        print(f"Verbose mode enabled")
    
    if args.name:
        print(f"Hello, {args.name}")
    
    if args.age:
        print(f"You are {args.age} years old")
    ```



Example

```python
# Import the argparse module
import argparse

# Define the main function
def main():
    # Create an ArgumentParser object with a description for the script
    parser = argparse.ArgumentParser(description="A simple argparse example")

    # Add the 'name' argument, with both short (-n) and long (--name) forms
    parser.add_argument('-n', '--name', type=str, help='Your name')

    # Add the 'age' argument, with both short (-a) and long (--age) forms
    parser.add_argument('-a', '--age', type=int, help='Your age')

    # Add the 'verbose' argument, with both short (-v) and long (--verbose) forms
    # The 'store_true' action means the argument will store True if present, otherwise False
    parser.add_argument('-v', '--verbose', action='store_true', help='Display verbose output')

    # Parse the command-line arguments and store them in the 'args' variable
    args = parser.parse_args()

    # Check if the 'verbose' argument was passed, and if so, print a message
    if args.verbose:
        print(f"Verbose mode enabled")

    # Check if the 'name' argument was passed, and if so, print a greeting
    if args.name:
        print(f"Hello, {args.name}")

    # Check if the 'age' argument was passed, and if so, print the age
    if args.age:
        print(f"You are {args.age} years old")

# If the script is being run as the main module, call the main function
if __name__ == '__main__':
    main()
```

