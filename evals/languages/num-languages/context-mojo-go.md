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

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**Examples:**
```mojo
def main():
    # code...
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
```

### User Defined Types

#### Define a user-defined type from a simple built-in type

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**Examples:**
```mojo
alias ColorType = String
var c1: ColorType = "blue"
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

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**Examples:**
```mojo
print("Hellow world")
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

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**Examples:**
```mojo
var year: Int = input("What year is it")
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

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
if condition {
    // code...
}
```
