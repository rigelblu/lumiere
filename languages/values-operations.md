### Values & Operations

#### Define and/or initiialize as variable value

##### Python

```json
metadata {
  "language": "python",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

```py
# Implicit type
name1 = "John"              # Python uses duck typing
# Explicit type (Python 3.6+)
name2: str                  # Define
name3: str = "John"         # Define and initialize
```

##### Mojo

```json
metadata {
  "language": "mojo",
  "language_version":">=0.6.x",
  "code_role": "anchor",
  "code_author": "human"
}
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
metadata {
  "language": "typescript",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

```ts
// Implicit type
let name1 = "John";         // Type inferred as string
// Explicit type
let name2: string;          // Define
let name3: string = "John"; // Define and initialize
```

##### Go

```json
metadata {
  "language": "go",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
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
metadata {
  "language": "python",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

```py
# Python doesn't have true constants
# Use naming convention for constants
NAME = "John"
PI = 3.14159
```

##### Mojo

```json
metadata {
  "language": "mojo",
  "language_version":">=0.6.x",
  "code_role": "anchor",
  "code_author": "human"
}
```

```mojo
# TODO:
```

##### TypeScript

```json
metadata {
  "language": "typescript",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
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

##### Go

```json
metadata {
  "language": "go",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
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

#### Assign Values

##### Python

```json
metadata {
  "language": "python",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

```py
# Single assignment
x = 10
# Multiple assignment
month, year = 6, 2023
# Augmented assignment
x += 5
```

##### Mojo

```json
metadata {
  "language": "mojo",
  "language_version":">=0.6.x",
  "code_role": "anchor",
  "code_author": "human"
}
```

```mojo
month, year = m, year + 1
```

##### TypeScript

```json
metadata {
  "language": "typescript",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

```ts
// Single assignment
let x = 10;
// Multiple assignment (using destructuring)
let [month, year] = [6, 2023];
// Augmented assignment
x += 5;
```

##### Go

```json
metadata {
  "language": "go",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```


```go
// Single assignment
x = 10
// Multiple assignment
month, year = 6, 2023
// Short declaration (for new variables)
x, y := 10, 20
// Augmented assignment
x += 5
```

#### Operations

TODO: consider breaking into sections

##### Python

```json
metadata {
  "language": "python",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

```py
n = 1
# Parenthesis expression
n = (n + 1) * 2
# Basic arithmetic
n = n + 1
n = n - 1
n = n * 3
n = n / 2
n = 3 ** 2  # Exponent
# Augmented assignment
n += 1
n -= 1
n *= 2
n /= 2
n **= 2
# Floor division
n = n // 3
# Indexing and slicing
x[0]                            # 1st value
x[1]                            # 2nd value
x[-1]                           # Last value
x[0][0]                         # 1st value in a 2-dimensional list
x[0:5]                          # First 5 values
x[1:6:2]                        # 2nd, 4th, 6th value - stepping increment
x[::-1]                         # All values in reverse order
# Comparison
flag = n == 1
flag = n != 1
flag = n < 1
flag = n <= 1
flag = n > 1
flag = n >= 1
# Membership
flag = "hello" in "hello world"
flag = "hello" not in "hello world"
# Modulo (remainder)
n = 10 % 3
# Logical operators
n = n and 1
n = n or 1
n = not(n)
# Walrus operator (Python 3.8+)
if (input_str := input("Enter number")):
    # code...
# Matrix multiplication
z = m @ n
# String concatenation
c1 = "Color: " + "blue"
c2 = "".join(["Color: ", "blue", "."])  # More efficient for multiple strings
# String replication
divider = "#" * 20
```

##### Mojo

```json
metadata {
  "language": "mojo",
  "language_version":">=0.6.x",
  "code_role": "anchor",
  "code_author": "human"
}
```

```mojo
n = 1

# parentehsis expression
n = (n + 1) * 2

# addition, subtraction, multiplication, division, exponent
n = n + 1
n = n - 1
n = n * 3
n = n / 2
n = 3 ** 2

# increment / decrement
n += 1
n -= 1
n *= 2
n /= 2
n **= 2

# floor division, round down
n = n // 3

# get value at index and slice
x[0]                              # 1st value
x[1]                              # 2nd value
x[-1]                             # Last value
x[0, 0]                           # 1st value in a 2-dimensional list
x[0:5]                            # First 5 values
x[1:6:2]                          # 2nd, 4th, 6th value - stepping increment
x[::-1]                           # All values in reverse order

# compare
flag = n == 1
flag = n != 1
flag = n <  1
flag = n <= 1
flag = n > 1
flag = n >= 1

# memerbship
flag = "hello" in "hello world"
flag = "hello" not in "helo world"

for x is Int:
    # code...
for x is not Int:
    # code...

# get remainder
n = 10 % 3

# logical operators
n = n and 1
n = n or 1
n = not(n)

# assign value within an expression
if str := input("Enter number"):
  # code...

# matrix multiplication
# TODO: check usage
z = m @ n

# String concatenation
var c1: String = "Color: " + "blue"
var c2: String = String("Color: ", "blue", ".") # More performant when concatenating more than two strings

# String replication
alias divider = "#" * 20
```

##### TypeScript

```json
metadata {
  "language": "typescript",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

```ts
let n = 1;
// Parenthesis expression
n = (n + 1) * 2;
// Basic arithmetic
n = n + 1;
n = n - 1;
n = n * 3;
n = n / 2;
n = Math.pow(3, 2);  // Exponent
// Augmented assignment
n += 1;
n -= 1;
n *= 2;
n /= 2;
// Indexing
x[0];                           // 1st value
x[1];                           // 2nd value
x[x.length-1];                  // Last value
x[0][0];                        // 1st value in a 2-dimensional array
// Slice
x.slice(0, 5);                  // First 5 values
// Comparison
const flag = n === 1;
const flag2 = n !== 1;
const flag3 = n < 1;
const flag4 = n <= 1;
const flag5 = n > 1;
const flag6 = n >= 1;
// Membership
const flag7 = "hello world".includes("hello");
const flag8 = !("hello world".includes("hello"));
// Type checking
const isNumber = typeof n === "number";
// Modulo (remainder)
n = 10 % 3;
// Logical operators
n = n && 1;
n = n || 1;
n = !n;
// Nullish coalescing
const value = someValue ?? defaultValue;
// Optional chaining
const prop = obj?.prop;
// String concatenation
const c1 = "Color: " + "blue";
const c2 = `Color: ${blue}.`;  // Template literals
// String replication
const divider = "#".repeat(20);
```

##### Go

```json
metadata {
  "language": "go",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

```go
n := 1
// Parenthesis expression
n = (n + 1) * 2
// Basic arithmetic
n = n + 1
n = n - 1
n = n * 3
n = n / 2
// No direct exponent operator, use math.Pow
import "math"
n = int(math.Pow(3, 2))
// Augmented assignment
n += 1
n -= 1
n *= 2
n /= 2
// Indexing
x[0]                            // 1st value
x[1]                            // 2nd value
x[len(x)-1]                     // Last value
x[0][0]                         // 1st value in a 2-dimensional slice
// Slice
x[0:5]                          // First 5 values
// Comparison
flag := n == 1
flag = n != 1
flag = n < 1
flag = n <= 1
flag = n > 1
flag = n >= 1
// Membership (using strings package for strings)
import "strings"
flag = strings.Contains("hello world", "hello")
flag = !strings.Contains("hello world", "hello")
// Type assertions
_, isInt := x.(int)             // Check if x is an integer
// Modulo (remainder)
n = 10 % 3
// Logical operators
// Go uses && and || for boolean types only
if n != 0 && m > 5 {
    // code...
}
// Assignment within if statement
if inputStr := getUserInput(); inputStr != "" {
  // code...
}
// String concatenation
import "fmt"
c1 := "Color: " + "blue"
c2 := fmt.Sprintf("Color: %s.", "blue")
// String replication
divider := strings.Repeat("#", 20)
```

#### Bitwise operations

##### Python

```json
metadata {
  "language": "python",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

```py
b = 1
# Bitwise - positive, negative, not
b = +b
b = -b
b = ~b
# Bitwise shift
b = b << 1
b = b >> 1
# Bitwise logic
b = b & 1         # AND
b = b ^ 1         # XOR
b = b | 1         # OR
# Augmented bitwise assignment
b &= 1
b |= 1
b ^= 1
b <<= 1
b >>= 1
```

##### Mojo

```json
metadata {
  "language": "mojo",
  "language_version":">=0.6.x",
  "code_role": "anchor",
  "code_author": "human"
}
```

```mojo
b = 1

# bitwise - positive, negative, not
b = +b
b = -b
b = ~b

# bitwise shift
b = b << 1
b = b >> 1

# bitwise logic
b = b & 1         # AND
b = b ^ 1         # XOR
b = b | 1         # OR
```

##### TypeScript

```json
metadata {
  "language": "typescript",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

```ts
let b = 1;
// Bitwise - positive, negative, not
b = +b;
b = -b;
b = ~b;
// Bitwise shift
b = b << 1;
b = b >> 1;
b = b >>> 1;      // Unsigned right shift
// Bitwise logic
b = b & 1;        // AND
b = b ^ 1;        // XOR
b = b | 1;        // OR
// Augmented bitwise assignment
b &= 1;
b |= 1;
b ^= 1;
b <<= 1;
b >>= 1;
b >>>= 1;         // Unsigned right shift assignment
```

##### Go

```json
metadata {
  "language": "go",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

```go
b := 1
// Bitwise - positive, negative, not
b = +b
b = -b
b = ^b           // NOT (bitwise complement)
// Bitwise shift
b = b << 1
b = b >> 1
// Bitwise logic
b = b & 1        // AND
b = b ^ 1        // XOR
b = b | 1        // OR
// Augmented bitwise assignment
b &= 1
b |= 1
b ^= 1
b <<= 1
b >>= 1
```

### TODO

- [Int and UInt values](https://docs.modular.com/mojo/manual/operators#int-and-uint-values)
- [SIMD values](https://docs.modular.com/mojo/manual/operators#simd-values)
- [IntLiteral and FloatLiteral values](https://docs.modular.com/mojo/manual/operators#intliteral-and-floatliteral-values)
- [Comparison operators](https://docs.modular.com/mojo/manual/operators#comparison-operators)
