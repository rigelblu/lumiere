# How to use programming concepts across languages

## System Prompt

- Each code block follows the pattern of define and then usage

```md
## Training data

### Contains concepts (i.e. feature) that users can implement through programming languages

#### What a user can do with the concept

Metadata codeblock indicating language, semantic version, etc.

Example codeblock for the indicated language, following the pattern of define and then usage
```

## Training Data

### Built-in Single Value (i.e. Primitive/Scalar) Types

#### Define a boolean

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```py
flag1 = True                                               # Implicit boolean
flag2: bool = False                                        # Explicit boolean

if flag1 and not flag2:                                    # Usage
    # code...
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**Examples:**
```mojo
flag1 = True                                               # Implicit boolean
var flag2: Bool = False                                    # Explicit boolean

if flag1 and not flag2:                                    # Usage
    # code...
```

```json
metadata { "language": "mojo", "language_version":">=0.4.x <0.6.x", "code_role": "deprecated", "code_author": "human" }
```

**Examples:**
```mojo
flag1 = True                                               # Implicit boolean
let flag2: Bool = False                                    # Explicit boolean

if flag1 and not flag2:                                    # Usage
    # code...
```

#### Define a integer

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```py
# Implicit integer
year1 = 2025

# Explicit integer
year2: int = 2025
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**Examples:**
```mojo
# Implicit signed integer
year1 = 2025
var year2: Int: 2025

# Explicit signed integer
var year3: Int8: 2025
var year4: Int16: 2025
var year5: Int32: 2025
var year6: Int64: 2025

# Explicit unsigned integer
var year7: UInt8: 2025
var year8: UInt16: 2025
var year9: UInt32: 2025
var year10: UInt64: 2025
```

#### Define a real-number

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```py
# Implicit real-number
pi1 = 3.14

# Explicit real-number
pi2: float = 3.141
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**Examples:**
```mojo
# Implicit real-number
pi1 = 3.14

# Explicit real-number
var pi2: Float16 = 3.141
var pi3: Float32 = 3.141
var pi4: Float64 = 3.141
```

### Built-in Collection Types

#### Define a string

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```py
# Implicit string
c1 = "blue"
# Implicit string literals
c2 = "Sentence" \
     "Continued."
c3 = """
     Sentence
     Continued."""
# Explicit string
c4: str = "yellow"
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**Examples:**
```mojo
# Implicit string
c1 = "blue"

# Implicit string literals
c2 = "Sentence"
     "Continued."
c3 = """
     Sentence
     Continued."""

# Explicit string
var c4: String = "yellow"
```

#### Define a list (array) of values

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```py
# Implicit
l1 = [1, 2, 3, 4]
# Explicit
l2: list[int] = [1, 2, 3, 4]
l3: list[str] = []         # Empty list
g1 = [
    [11, 22],
    [33, 44]
]

# Iteration by value
list = [2, 3, 4]
for item in list:
    print(item, end=", ")

# Iteration by index
list = [2, 3, 4]
for i in range(len(list)):
    print(list[i], end=", ")
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**Examples:**
```mojo
# Implicit
var l1 = List(1, 2, 3, 4)

# Explicit
var l2 = List[Int](1, 2, 3, 4)
var l3 = List[String]()         # Empty list
var g1 = List(
    List(11, 22),
    List(33, 44)
)

#: from collections import List
var list = List(2, 3, 4)
for item in list:
      print(item[], end=", ")

#: from collections import List
#: var list = List[Int](2, 3, 4)
for i in range(len(list)):
    print(list[i], end=", ")
```

#### Operations on a list (array) of values

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```py
l2 = [1, 2, 3, 4]
g1 = [
    [11, 22],
    [33, 44]
]

# Valid operations on list
print(l2[0])    # Get first item in the list
print(g1[0][0]) # Get first item, in the first list (ie. row 0, column 0)
print(l2[-1])   # Get last item in the list
print(len(l2))  # Get the length of the list
l2.pop()        # Remove the last element from the list
l2.append(5)    # Append an element to the list

# Invalid operations on list
# l2.append(3.14) # Error: Float can be added to int list in Python (dynamic typing)
print(l2)
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**Examples:**
```mojo
var l2 = List[Int](1, 2, 3, 4)
var g1 = List(
    List(11, 22),
    List(33, 44)
)

# Valid operations on list
print(l1[0])    # Get first item in the list
print(g1[0][0]) # Get first item, in the first list (ie. row 0, column 0)
print(l1[-1])   # Get last item in the list
print(len(l2))  # Get the length of the list
l2.pop()        # Remove the last element from the list
l2.append(5)    # Append an element to the list

# Invalid operations on list
l2.append(3.14) # Error: Float cannot be converted to Int
print(list)
```

### Control Flow / Conditionals

#### Execute block if condition is true

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```py
year = 2025

if year > 2025:
    # code...

if year <= 2025:
    # code...
elif year == 2025:
    # code...
else:
    # code...
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**Examples:**
```mojo
year = 2025

if year > 2025:
    # code...

if year <= 2025:
    # code...
elif year == 2025:
    # code...
else:
    # code...
```

### Functions

#### Main entry point

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```py
# Main function definition
def main():
    # code...

# Standard pattern to check if file is being run directly
if __name__ == "__main__":
    main()
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**Examples:**
```mojo
def main():
    # code...
```

#### Define a function with explicit types

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```py
# No parameters, no return value
def hello1() -> None:
    # code...

# Pass argument by value
def hello2(name: str) -> None:
    # code...

# Pass argument by value, return string
def hello3(name: str) -> str:
    # code...
    return "Hello " + name

# Invoke function
hello3("world")
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**Examples:**
```mojo
fn hello1():
  # code...

# Pass argument by value
fn hello2(name: String):
  # code...

# Pass argument by value, return string
fn hello3(name: String) -> String:
  # code...
  return "Hello " + name

# Invoke function
hello3("world")
```

### User Defined Types

#### Define a user-defined type from a simple built-in type

##### Python

```json
metadata { "language": "python",  "language_version":">=0.x.x", "code_role": "trail", "code_author": "human" }
```

**Examples:**
```py
ColorType = str
c1: ColorType = "blue"
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**Examples:**
```mojo
alias ColorType = String
var c1: ColorType = "blue"
```

#### Define a user-defined type from composing built-in/user-defined types

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "human" }
```

**Examples:**
```py
# Not built into language. Use nearest equivalent
class PointType:
    x: int
    y: int

p1 = PointType(1, 2)
x = p1.x
```

**Examples:**
```py
# Not built into language. Use nearest equivalent
from dataclasses import dataclass

@dataclass
class PointType:
    x: int
    y: int

p1 = PointType(1, 2)
x = p1.x
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**Examples:**
```mojo
struct PointType:
    var x: Int
    var y: Int

    # Method
    def str(self) -> String:
        str = "(" + x + ", " + y + ")"
        return str

    # Static method
    @staticmethod
    def zeoro() -> Self:
        return Self(0,0) # Alias for the type of struct

    @staticmethod
    def log() -> None:
        # code...

var p1 = PointType(1, 2)  # Call struct's constructor
var x = p1.x              # Call struct's getter
print(p1.str())           # Call struct's method
```

### Values & Operations

#### Define and/or initiialize as variable value

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```py
# Implicit type
name1 = "John"              # Python uses duck typing
# Explicit type (Python 3.6+)
name2: str                  # Define
name3: str = "John"         # Define and initialize
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**Examples:**
```mojo
# Implicit type
name1 = "John"              # Without a type
var name3 = "John"          # With implicit type

# Explicit type
var name1: String           # Define
var name2: String = "John"  # Define and initialize
```

#### Define as constant value

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```py
# Python doesn't have true constants
# Use naming convention for constants
NAME = "John"
PI = 3.14159
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**Examples:**
```mojo
# Nearest equivalent
alias Length  = 100
alias Length: Int  = 100
```

### Input / Output

#### Print to console

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```py
# Basic print
print("Hello world")
# Print with multiple arguments
print("Value:", 42, "Type:", type(42))
# Print with formatting
print(f"The answer is {42}")
# Print without newline
print("Hello", end=" ")
print("world")
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**Examples:**
```mojo
print("Hellow world")
```

#### Read from console

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```py
# Basic input (returns string)
name = input("Enter your name: ")
# Input with type conversion
age = int(input("Enter your age: "))
year = float(input("Enter the year: "))
# Multiple inputs on one line
x, y = map(int, input("Enter two numbers separated by space: ").split())
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**Examples:**
```mojo
var year: Int = input("What year is it")
```

### Blocks & Statements

#### Define a group of statements (i.e. code) to be executed together

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "human" }
```

**Examples:**
```py
if condition:
    # code...
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

You can use any number of spaces or tabs for indentation as long as the same indentation is used for the entire code block

**Examples:**
```mojo
if condition:
    # code...
```
