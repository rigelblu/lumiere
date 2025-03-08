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

```mojo
flag1 = True                                               # Implicit boolean
var flag2: Bool = False                                    # Explicit boolean

if flag1 and not flag2:                                    # Usage
    # code...
```

```json
metadata { "language": "mojo", "language_version":">=0.4.x <0.6.x", "code_role": "deprecated", "code_author": "human" }
```

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

```ts
let flag1 = true;                                          // Implicit boolean
let flag2: boolean = false;                                // Explicit boolean

if (flag1 && !flag2) {                                     // Usage
    // code...
}
```

#### Define a integer

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

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

```ts
// Implicit integer
let year1 = 2025;

// Explicit integer
let year2: number = 2025;
```

#### Define a real-number

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

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

```ts
// Implicit real-number
let pi1 = 3.14;

// Explicit real-number
let pi2: number = 3.141;
```

### Built-in Collection Types

#### Define a string

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

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

#### Define a list (array) of values

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

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

#### Operations on a list (array) of values

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

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

### Control Flow / Conditionals

#### Execute block if condition is true

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

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

### Functions

#### Main entry point

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```mojo
def main():
    # code...
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

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

#### Define a function with explicit types

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

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

### User Defined Types

#### Define a user-defined type from a simple built-in type

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```mojo
alias ColorType = String
var c1: ColorType = "blue"
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```ts
type ColorType = string;
let c1: ColorType = "blue";
```

#### Define a user-defined type from composing built-in/user-defined types

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

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

### Values & Operations

#### Define and/or initiialize as variable value

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

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

```ts
// Implicit type
let name1 = "John";         // Type inferred as string
// Explicit type
let name2: string;          // Define
let name3: string = "John"; // Define and initialize
```

#### Define as constant value

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```mojo
# TODO:
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```ts
// Using const for immutable references
const NAME: string = "John";
const PI: number = 3.14159;
// Or readonly for properties
interface Config {
  readonly API_KEY: string;
}
```

### Input / Output

#### Print to console

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```mojo
print("Hellow world")
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

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

#### Read from console

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```mojo
var year: Int = input("What year is it")
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

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
