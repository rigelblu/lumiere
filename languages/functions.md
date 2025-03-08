### Functions

#### Main entry point

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

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

- **Convention:** put at end of file

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

- By default, the value is returned to the caller as an owned value

- **Constraints:**
  - You must explicitly indicate with a `raises` keyword if it can raise an error
  - Return values must specify a type, unless the function doesn't return a value
  - By default, arguments are received as an immutable reference (values are read-only, using the read

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

#### Define a function with optional types

Support methods, fields, operator overloading, decorators for metaprogramming

- **How it works:**
  - Compiler always assumes that the function can raise an error
  - If you don't specify a type for an argument or return value, it's assigned the object type, a special type that that can represent different types of values. This allows for some runtime dynamism, but also means that the function might fail at runtime if it receives the wrong type.
  - Arguments are
    - Passed by immutable reference by default
    - Copied into a mutalable one if the function mutates it
    - Received as a reference if it's type is declared as an object
    - Recived as a value if type is declared as any other type
  - Return types default to object

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```py
# No explicit types
def hello1():
    # code...

# Pass argument without type
def hello2a(name):
    # code...

# Pass argument with type
def hello2b(name: str):
    # code...

# Return value without type
def hello3(name):
    # code...
    return "Hello " + name

# Return value with type
def hello4(name: str) -> str:
    # code...
    return "Hello " + name

# Invoke function
hello3("world")
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```mojo
def hello1():
  # code...

# Pass argument by value
def hello2a(name):
  # code...
def hello2b(name: String):
  # code...

# Pass argument by value, return string
def hello3(name):
  # code...
  return "Hello " + name
def hello3(name: String) -> String:
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
// Using 'any' type for flexibility
function hello1(): void {
    // code...
}

// Pass argument without specific type
function hello2a(name: any): void {
    // code...
}

// Pass argument with type
function hello2b(name: string): void {
    // code...
}

// Return without explicit type (inferred)
function hello3(name: any) {
    // code...
    return "Hello " + name;
}

// Return with explicit type
function hello4(name: string): string {
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
// Go requires explicit types, but can use interface{} for generic values
func hello1() {
    // code...
}

// Pass argument as interface{} (any in Go 1.18+)
func hello2a(name interface{}) {
    // code...
}

// Pass argument with specific type
func hello2b(name string) {
    // code...
}

// Return interface{} (any in Go 1.18+)
func hello3(name interface{}) interface{} {
    // code...
    return "Hello " + name.(string)
}

// Return with explicit type
func hello4(name string) string {
    // code...
    return "Hello " + name
}

// Invoke function
hello3("world")
```

#### Chain functions

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```py
def hello():
    text = (str()
           .join("Hello", " ")
           .join("world"))
    # or more commonly:
    text = "Hello".lower().replace("h", "H").strip() + " world"
    print(text)

# With builder pattern
class StringBuilder:
    def __init__(self):
        self.text = ""

    def append(self, text):
        self.text += text
        return self

    def get(self):
        return self.text

result = StringBuilder().append("Hello").append(" ").append("world").get()
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```mojo
def hello():
    text = String()
          .join("Hello", " world")
    print(text)
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```ts
function hello(): void {
    // Using string methods
    const text = "Hello"
        .toLowerCase()
        .replace("h", "H")
        .concat(" world");
    console.log(text);

    // Using array methods
    const result = ["Hello", "world"]
        .map(word => word.toLowerCase())
        .join(" ");
    console.log(result);
}

// With builder pattern
class StringBuilder {
    private text: string = "";

    append(str: string): StringBuilder {
        this.text += str;
        return this;
    }

    get(): string {
        return this.text;
    }
}

const result = new StringBuilder()
    .append("Hello")
    .append(" ")
    .append("world")
    .get();
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm"
}
```

```go
import (
    "strings"
)

func hello() {
    // Using strings.Builder
    var sb strings.Builder
    sb.WriteString("Hello")
    sb.WriteString(" world")
    text := sb.String()
    fmt.Println(text)
}

// With builder pattern
type StringBuilder struct {
    text string
}

func (sb *StringBuilder) Append(s string) *StringBuilder {
    sb.text += s
    return sb
}

func (sb *StringBuilder) String() string {
    return sb.text
}

func main() {
    sb := &StringBuilder{}
    result := sb.Append("Hello").Append(" ").Append("world").String()
    fmt.Println(result)
}
```

#### Define optional arguments on function

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```py
def color1(name: str = "blue"):
    # code...

def color2(shape: str, color: str = "red", size: int = 10):
    # code...

# Calling with default value
color1()  # name will be "blue"

# Overriding default value
color1("green")
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**Constraints:**
  - Must appear after required arguments
  - Cannot be used with mutual values

```mojo
def color1(name: String = "blue"):
    # code...

fn color2(name: String = "blue"):
    # code...

# Error: not allowe
def color3(mut name: String = "blue"):
    # code...
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```ts
function color1(name: string = "blue"): void {
    // code...
}

function color2(shape: string, color: string = "red", size: number = 10): void {
    // code...
}

// Using optional parameter with ?
function color3(name?: string): void {
    const colorName = name || "blue";  // Default if undefined
    // code...
}

// Calling with default value
color1();  // name will be "blue"

// Overriding default value
color1("green");
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// Go doesn't have built-in default parameters
// Option 1: Use variadic function with options pattern
func color1(options ...string) string {
    // Default value
    name := "blue"

    // Override if provided
    if len(options) > 0 {
        name = options[0]
    }

    // code...
    return name
}

// Option 2: Use functional options pattern
type ColorOption func(*ColorConfig)
type ColorConfig struct {
    Name string
}

func WithName(name string) ColorOption {
    return func(c *ColorConfig) {
        c.Name = name
    }
}

func color2(options ...ColorOption) *ColorConfig {
    // Default values
    config := &ColorConfig{
        Name: "blue",
    }

    // Apply options
    for _, option := range options {
        option(config)
    }

    return config
}

// Calling with default
color1()  // Returns "blue"

// Overriding default
color1("green")

// Using functional options
color2()  // Uses default "blue"
color2(WithName("green"))
```

#### Invoke functions with keywords arguments

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```py
def point1(x: int, y: int, z: int):
    # code...

# Calling with positional arguments
point1(2, 3, 1)

# Calling with keyword arguments
point1(z=1, x=2, y=3)

# Mixed positional and keyword arguments
point1(2, z=1, y=3)
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```mojo
def point1(x: Int, y: Int, z: Int):
    # code...

fn point2(x: Int, y: Int, z: Int):
    # code...

point1(z = 1, x = 2, y = 3)
point2(z = 1, x = 2, y = 3)
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```ts
// Using object destructuring for named parameters
function point1({ x, y, z }: { x: number; y: number; z: number }): void {
    // code...
}

// Alternative with optional properties and defaults
interface PointParams {
    x: number;
    y: number;
    z: number;
}

function point2(params: PointParams): void {
    // code...
}

// Calling with named parameters
point1({ z: 1, x: 2, y: 3 });
point2({ x: 2, y: 3, z: 1 });
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// Go doesn't support keyword arguments directly
// Use a struct to simulate named parameters
type PointParams struct {
    X int
    Y int
    Z int
}

func point1(params PointParams) {
    // code...
}

// Using builder pattern for named parameters
type PointBuilder struct {
    x, y, z int
}

func (pb *PointBuilder) X(x int) *PointBuilder {
    pb.x = x
    return pb
}

func (pb *PointBuilder) Y(y int) *PointBuilder {
    pb.y = y
    return pb
}

func (pb *PointBuilder) Z(z int) *PointBuilder {
    pb.z = z
    return pb
}

func (pb *PointBuilder) Build() PointParams {
    return PointParams{X: pb.x, Y: pb.y, Z: pb.z}
}

// Calling with named struct
point1(PointParams{X: 2, Y: 3, Z: 1})

// Calling with builder pattern
params := new(PointBuilder).X(2).Y(3).Z(1).Build()
point1(params)
```

#### Define a function with a variable number of arguments

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```py
def point1(d1: int, *d2: int):
    print(d1)
    for value in d2:
        print(value)

def sum_all(first: int, *rest: int) -> int:
    total = first
    for value in rest:
        total += value
    return total

# Calling with single argument
point1(1)

# Calling with multiple arguments
point1(1, 2, 3)
sum_all(1, 2, 3, 4)  # Returns 10
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```mojo
def point1(d1: Int, *d2: Int):
    for value in d2:
        print(value)

fn point2(d1: Int, *d2: Int):
    for value in d2:
        print(value)

point1(1)
point1(1, 2, 3)
point2(1)
point2(1, 2, 3)
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```ts
function point1(d1: number, ...d2: number[]): void {
    console.log(d1);
    for (const value of d2) {
        console.log(value);
    }
}

function sumAll(first: number, ...rest: number[]): number {
    let total = first;
    for (const value of rest) {
        total += value;
    }
    return total;
}

// Calling with single argument
point1(1);

// Calling with multiple arguments
point1(1, 2, 3);
sumAll(1, 2, 3, 4);  // Returns 10
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// Variadic function
func point1(d1 int, d2 ...int) {
    fmt.Println(d1)
    for _, value := range d2 {
        fmt.Println(value)
    }
}

func sumAll(first int, rest ...int) int {
    total := first
    for _, value := range rest {
        total += value
    }
    return total
}

// Calling with single argument
point1(1)

// Calling with multiple arguments
point1(1, 2, 3)
sumAll(1, 2, 3, 4)  // Returns 10

// Passing a slice
numbers := []int{2, 3, 4}
sumAll(1, numbers...)  // Spread operator for slices
```

#### Define a function with a variable number of arguments of Strings

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```py
def point1(d1: int, *d2: str):
    print(d1)
    for value in d2:
        print(value)

def concat_strings(prefix: str, *strings: str) -> str:
    result = prefix
    for s in strings:
        result += s
    return result

# Calling with single argument
point1(1)

# Calling with multiple string arguments
point1(1, "hello", "world")
concat_strings("Pre-", "Hello", " ", "World")  # Returns "Pre-Hello World"
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```mojo
def point1(d1: Int, *d2: String):
    for value in d2:
        print(value[])

fn point2(d1: Int, *d2: String):
    for value in d2:
        print(value[])

point1(1)
point1(1, 2, 3)
point2(1)
point2(1, 2, 3)
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```ts
function point1(d1: number, ...d2: string[]): void {
    console.log(d1);
    for (const value of d2) {
        console.log(value);
    }
}

function concatStrings(prefix: string, ...strings: string[]): string {
    let result = prefix;
    for (const s of strings) {
        result += s;
    }
    return result;
}

// Calling with single argument
point1(1);

// Calling with multiple string arguments
point1(1, "hello", "world");
concatStrings("Pre-", "Hello", " ", "World");  // Returns "Pre-Hello World"
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// Variadic function with strings
func point1(d1 int, d2 ...string) {
    fmt.Println(d1)
    for _, value := range d2 {
        fmt.Println(value)
    }
}

func concatStrings(prefix string, strings ...string) string {
    result := prefix
    for _, s := range strings {
        result += s
    }
    return result
}

// Calling with single argument
point1(1)

// Calling with multiple string arguments
point1(1, "hello", "world")
concatStrings("Pre-", "Hello", " ", "World")  // Returns "Pre-Hello World"

// Passing a slice
words := []string{"Hello", " ", "World"}
concatStrings("Pre-", words...)
```

#### Define a function with a variable number of keywords arguments

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```py
def point1(**kwargs: int):
    for key, value in kwargs.items():
        print(key, "=", value)

def create_config(debug: bool = False, **settings: str) -> dict:
    config = {"debug": debug}
    for key, value in settings.items():
        config[key] = value
    return config

# Call with keyword arguments
point1(x=10, y=20, z=30)

# Mix positional and keyword arguments
config = create_config(True, host="localhost", port="8080")
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

- **Constraints**:
  - Always implicitly treated as if they were declared with the owned argument convention, and can't be declared otherwise
  - Must have the same type, and this determines the type of the argument dictionary
  - Argument type must conform to the CollectionElement trait. That is, the type must be both Movable and Copyable
  - Dictionary unpacking is not supported yet
  - Variadic keyword parameters are not supported yet

```mojo
def point1(**kwargs: Int) raises:
  for key in kwargs.keys():
      print(key[], "=", kwargs[key[]])

fn point2(**kwargs: Int) raises:
  for key in kwargs.keys():
      print(key[], "=", kwargs[key[]])
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```ts
// Using Record type for dynamic keys
function point1(kwargs: Record<string, number>): void {
    for (const [key, value] of Object.entries(kwargs)) {
        console.log(key, "=", value);
    }
}

interface Settings {
    debug?: boolean;
    [key: string]: any;  // Index signature for dynamic properties
}

function createConfig(settings: Settings = {}): Record<string, any> {
    const config: Record<string, any> = {
        debug: settings.debug || false
    };

    // Copy all other properties
    for (const key in settings) {
        if (key !== 'debug') {
            config[key] = settings[key];
        }
    }

    return config;
}

// Call with object containing properties
point1({ x: 10, y: 20, z: 30 });

// Using object spread
const config = createConfig({
    debug: true,
    host: "localhost",
    port: "8080"
});
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// Using map for keyword arguments
func point1(kwargs map[string]int) {
    for key, value := range kwargs {
        fmt.Printf("%s = %d\n", key, value)
    }
}

// Options pattern with map
func createConfig(debug bool, settings map[string]string) map[string]interface{} {
    config := make(map[string]interface{})
    config["debug"] = debug

    // Copy all settings
    for key, value := range settings {
        config[key] = value
    }

    return config
}

// Call with map
point1(map[string]int{
    "x": 10,
    "y": 20,
    "z": 30,
})

// Mix positional and map arguments
settings := map[string]string{
    "host": "localhost",
    "port": "8080",
}
config := createConfig(true, settings)
```

#### Define a function with named return values

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```py
from typing import NamedTuple, Tuple

# Return multiple values as tuple
def get_coordinates() -> Tuple[int, int, int]:
    x, y, z = 1, 2, 3
    return x, y, z

# Using NamedTuple for named returns
class Point(NamedTuple):
    x: int
    y: int
    z: int

def get_point() -> Point:
    return Point(1, 2, 3)

# Using dataclass
from dataclasses import dataclass

@dataclass
class NameTag:
    name: str
    id: int = 0

def get_name_tag(name: str) -> NameTag:
    return NameTag(name)

# Usage
x, y, z = get_coordinates()
point = get_point()
print(point.x, point.y, point.z)

tag = get_name_tag("Judith")
print(tag.name)
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**What it is:**
- `out`: argument convention identifies an uninitialized variable that the function must initialize

**How to use:**
- A named result argument doesn't need to include an explicit return statement. If the function terminates without a return, or at a return statement with no value, the value of the out argument is returned to the caller

**Constraints:**
- A function can declare only one return value, whether it's declared using an out argument or using the standard -> type syntax.

**Conventions:**
- The out argument should be the last argument in the list

```mojo
def get_name_tag(owned name: String, out name_tag: NameTag):
    name_tag = NameTag(name^)

tag = get_name_tag("Judith")
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```ts
// Return object with named properties
function getCoordinates(): { x: number; y: number; z: number } {
    const x = 1, y = 2, z = 3;
    return { x, y, z };
}

// Using interface for named returns
interface Point {
    x: number;
    y: number;
    z: number;
}

function getPoint(): Point {
    return { x: 1, y: 2, z: 3 };
}

interface NameTag {
    name: string;
    id?: number;
}

function getNameTag(name: string): NameTag {
    return { name, id: 0 };
}

// Usage
const { x, y, z } = getCoordinates();
const point = getPoint();
console.log(point.x, point.y, point.z);

const tag = getNameTag("Judith");
console.log(tag.name);
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// Named return values
func getCoordinates() (x, y, z int) {
    x = 1
    y = 2
    z = 3
    return  // Implicit return of named parameters
}

// Alternative explicit return with named values
func getPoint() (x, y, z int) {
    x = 1
    y = 2
    z = 3
    return x, y, z
}

// With structs
type NameTag struct {
    Name string
    ID   int
}

func getNameTag(name string) (tag NameTag) {
    tag.Name = name
    tag.ID = 0
    return
}

// Usage
x, y, z := getCoordinates()
point := getPoint()
fmt.Println(x, y, z)

tag := getNameTag("Judith")
fmt.Println(tag.Name)
```

#### Define overloaded functions

- **What is it:** same function, with different signature names

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```py
# Python doesn't support true function overloading
# But can use multiple dispatch with libraries or implement similar behavior

from functools import singledispatch

# Using singledispatch for function overloading
@singledispatch
def add(x, y):
    raise NotImplementedError("Unsupported type")

@add.register(int)
def _(x: int, y: int) -> int:
    return x + y

@add.register(str)
def _(x: str, y: str) -> str:
    return x + y

# Alternative with type checking
def add_alt(x, y):
    if isinstance(x, int) and isinstance(y, int):
        return x + y
    elif isinstance(x, str) and isinstance(y, str):
        return x + y
    else:
        raise TypeError("Unsupported types")

# Usage
result1 = add(1, 2)       # Returns 3
result2 = add("a", "b")   # Returns "ab"
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```mojo
def add1(x: Int, y: Int) -> Int:
    return x + y

def add1(x: String, y: String) -> String:
    return x + y

fn add2(x: Int, y: Int) -> Int:
    return x + y

fn add2(x: String, y: String) -> String:
    return x + y
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```ts
// Function overloading with function signatures
function add(x: number, y: number): number;
function add(x: string, y: string): string;
function add(x: any, y: any): any {
    return x + y;
}

// Alternative with union types and type guards
function addAlt(x: number | string, y: number | string): number | string {
    if (typeof x === 'number' && typeof y === 'number') {
        return x + y;
    } else if (typeof x === 'string' && typeof y === 'string') {
        return x + y;
    }
    throw new Error("Unsupported types");
}

// Usage
const result1 = add(1, 2);        // Returns 3
const result2 = add("a", "b");    // Returns "ab"
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// Go doesn't support function overloading directly
// Use different function names or interfaces

// Different function names
func AddInts(x, y int) int {
    return x + y
}

func AddStrings(x, y string) string {
    return x + y
}

// Using interfaces
func Add(x, y interface{}) interface{} {
    // Type assertions
    switch x := x.(type) {
    case int:
        if y, ok := y.(int); ok {
            return x + y
        }
    case string:
        if y, ok := y.(string); ok {
            return x + y
        }
    }
    panic("Unsupported types")
}

// Generics (Go 1.18+)
func AddGeneric[T int | string](x, y T) T {
    return x + y
}

// Usage
result1 := AddInts(1, 2)          // Returns 3
result2 := AddStrings("a", "b")    // Returns "ab"

// Generic usage (Go 1.18+)
result3 := AddGeneric(1, 2)         // Returns 3
result4 := AddGeneric("a", "b")     // Returns "ab"
```

### TODO

- [Heterogeneous variadic argument])(https://docs.modular.com/mojo/manual/functions#homogeneous-variadic-arguments)
- [Positional-only and keyword-only arguments](https://docs.modular.com/mojo/manual/functions#positional-only-and-keyword-only-arguments)
