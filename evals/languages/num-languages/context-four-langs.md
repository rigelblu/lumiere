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

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```ts
let flag1 = true;                                          // Implicit boolean
let flag2: boolean = false;                                // Explicit boolean

if (flag1 && !flag2) {                                     // Usage
    // code...
}
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
flag1 := true													                     // Implicit boolean
var flag2 bool = false                                     // Explicit boolean

if flag1 && !flag2 {                                       // Usage
    // code...
}
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

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```ts
// Implicit integer
let year1 = 2025;

// Explicit integer
let year2: number = 2025;
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// Implicit integer
year1 := 2025

// Explicit signed integer
var year2 int = 2025
var year3 int8 = 127
var year4 int16 = 2025
var year5 int32 = 2025
var year6 int64 = 2025

// Explicit unsigned integer
var year7 uint8 = 255
var year8 uint16 = 2025
var year9 uint32 = 2025
var year10 uint64 = 2025
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

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```ts
// Implicit real-number
let pi1 = 3.14;

// Explicit real-number
let pi2: number = 3.141;
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// Implicit real-number
pi1 := 3.14

// Explicit real-number
var pi2 float32 = 3.141
var pi3 float64 = 3.141
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

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```ts
// Implicit string
let c1 = "blue";

// Implicit string literals
let c2 = "Sentence" +
         "Continued.";
let c3 = `
     Sentence
     Continued.`;

// Explicit string
let c4: string = "yellow";
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// Implicit string
c1 := "blue"

// Implicit string literals
c2 := "Sentence" +
       "Continued."
c3 := `
     Sentence
     Continued.`

// Explicit string
var c4 string = "yellow"
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

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```ts
// Implicit
let l1 = [1, 2, 3, 4];

// Explicit
let l2: number[] = [1, 2, 3, 4];
let l3: string[] = [];         // Empty list
let g1 = [
    [11, 22],
    [33, 44]
];

// Iteration by value
let list = [2, 3, 4];
for (const item of list) {
    console.log(item + ", ");
}

// Iteration by index
let list2 = [2, 3, 4];
for (let i = 0; i < list2.length; i++) {
    console.log(list2[i] + ", ");
}
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// Implicit
l1 := []int{1, 2, 3, 4}

// Explicit
var l2 = []int{1, 2, 3, 4}
var l3 []string = []string{}         // Empty list
g1 := [][]int{
    {11, 22},
    {33, 44},
}

// Iteration by value
list := []int{2, 3, 4}
for _, item := range list {
    fmt.Print(item, ", ")
}

// Iteration by index
list2 := []int{2, 3, 4}
for i := 0; i < len(list2); i++ {
    fmt.Print(list2[i], ", ")
}
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

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```ts
let l2: number[] = [1, 2, 3, 4];
let g1 = [
    [11, 22],
    [33, 44]
];

// Valid operations on list
console.log(l2[0]);    // Get first item in the list
console.log(g1[0][0]); // Get first item, in the first list (ie. row 0, column 0)
console.log(l2[l2.length - 1]);   // Get last item in the list
console.log(l2.length);  // Get the length of the list
l2.pop();        // Remove the last element from the list
l2.push(5);    // Append an element to the list

// Invalid operations on list
// l2.push("string"); // Error: Argument of type 'string' is not assignable to parameter of type 'number'
console.log(l2);
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
l2 := []int{1, 2, 3, 4}
g1 := [][]int{
    {11, 22},
    {33, 44},
}

// Valid operations on list
fmt.Println(l2[0])    // Get first item in the list
fmt.Println(g1[0][0]) // Get first item, in the first list (ie. row 0, column 0)
fmt.Println(l2[len(l2)-1])   // Get last item in the list (no negative indexing)
fmt.Println(len(l2))  // Get the length of the list
l2 = l2[:len(l2)-1]   // Remove the last element from the list
l2 = append(l2, 5)    // Append an element to the list

// Invalid operations on list
// l2 = append(l2, 3.14) // Error: constant 3.14 truncated to integer
fmt.Println(l2)
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

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```ts
const year = 2025;

if (year > 2025) {
    // code...
}

if (year <= 2025) {
    // code...
} else if (year === 2025) {
    // code...
} else {
    // code...
}
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
year := 2025

if year > 2025 {
    // code...
}

if year <= 2025 {
    // code...
} else if year == 2025 {
    // code...
} else {
    // code...
}
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

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```ts
// For Node.js application
function main(): void {
    // code...
}

// Auto-execute if this is the main module
if (require.main === module) {
    main();
}

// For browser or bundled application
function main(): void {
    // code...
}

// Either call directly or via window.onload
main();
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
package main

// The main function in the main package is the entry point
func main() {
    // code...
}
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

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```ts
// No parameters, no return value
function hello1(): void {
    // code...
}

// Pass argument by value
function hello2(name: string): void {
    // code...
}

// Pass argument by value, return string
function hello3(name: string): string {
    // code...
    return "Hello " + name;
}

// Invoke function
hello3("world");
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// No parameters, no return value
func hello1() {
    // code...
}

// Pass argument by value
func hello2(name string) {
    // code...
}

// Pass argument by value, return string
func hello3(name string) string {
    // code...
    return "Hello " + name
}

// Invoke function
hello3("world")
```i

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

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```ts
type ColorType = string;
let c1: ColorType = "blue";
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
type ColorType string
var c1 ColorType = "blue"
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

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```ts
type PointType = {
  x: number;
  y: number;
};
interface PointInterface {
  x: number;
  y: number;
}

const p1: PointInterface = { x: 1, y: 2 };
const p2: PointType = { x: 1, y: 2 };
let x = p1.x;
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
type PointType struct {
    x int
    y int
}

var p1 PointType = PointType{1, 2}
p2 := PointType{x: 1, y: 2}
x := p1.x
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

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```ts
// Implicit type
let name1 = "John";         // Type inferred as string
// Explicit type
let name2: string;          // Define
let name3: string = "John"; // Define and initialize
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// Explicit type
var name1 string            // Define
var name2 string = "John"   // Define and initialize
// Short variable declaration (implicit type)
name3 := "John"             // Inferred type
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

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```ts
// Using const for immutable references
const NAME: string = "John";
const PI: number = 3.14159;
// Or readonly for properties
interface Config {
  readonly API_KEY: string;
}
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// Single constant
const NAME string = "John"
// Multiple constants
const (
    PI = 3.14159
    VERSION = "1.0.0"
)
// Untyped constants
const LIMIT = 100
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

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```ts
// Basic console output
console.log("Hello world");
// Print with multiple arguments
console.log("Value:", 42, "Type:", typeof 42);
// Print with formatting
console.log(`The answer is ${42}`);
// Other console methods
console.error("Error message");
console.warn("Warning message");
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// Basic print
fmt.Println("Hello world")
// Print with multiple arguments
fmt.Println("Value:", 42, "Type:", reflect.TypeOf(42))
// Print with formatting
fmt.Printf("The answer is %d\n", 42)
// Print without newline
fmt.Print("Hello ")
fmt.Print("world\n")
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

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```ts
// Browser environment
const name = prompt("Enter your name:");
// Node.js environment
import * as readline from 'readline';

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question('Enter your age: ', (answer) => {
  const age = parseInt(answer);
  console.log(`You are ${age} years old`);
  rl.close();
});
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// Using bufio scanner
import (
    "bufio"
    "fmt"
    "os"
    "strconv"
)

// Basic input
reader := bufio.NewReader(os.Stdin)
fmt.Print("Enter your name: ")
name, _ := reader.ReadString('\n')

// Input with type conversion
fmt.Print("Enter your age: ")
ageStr, _ := reader.ReadString('\n')
age, _ := strconv.Atoi(strings.TrimSpace(ageStr))

// Using Scanf
var year int
fmt.Print("What year is it? ")
fmt.Scanf("%d", &year)
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
    # code block...

# code block ...
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**How to use:**
- Ident using any number of spaces or tabs
- Use same indentation for the entire code block

**Examples:**
```mojo
if condition:
    # code block...

# code block ...
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```ts
if (condition) {
  // code block...
}
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
if condition {
    // code block...
}
```
