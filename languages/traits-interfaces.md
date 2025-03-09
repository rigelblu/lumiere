### Traits & Interfaces

##### Mojo

**Similar to:** Java interfaces, C++ concepts, Swift protocols, and Rust traits.

**How to use:**
- define alias constants
- define method and static method signatures, followed by three dots (indicating method isn't implemented)
- define lifecycle methods

**What not to do:** implement method

**Not yet supported:**
- Defining fields
- Define default method implementations inside a trait

#### Define and conform to a trait

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```py
from abc import ABC, abstractmethod

class ColorTrait(ABC):
    @abstractmethod
    def HSL(self):
        pass
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**How to use:**
- TODO:

**Constraints:** Parameters and aliases are in the same namespace, so the parameter can't have the same name as the associated alias

**Examples:**
```mojo
trait ColorTrait:
    # The three dots following the method signature indicates the method is not implemented
    def HSL(self): ...

trait Shape:
    alias numPoint: Int

struct Point[num: int](Shape):
    alias numPoints: Int = num
    var x: Int

dot = Point[1]()
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```ts
interface ColorTrait {
  HSL(): { h: number; s: number; l: number };
}
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```go
type ColorTrait interface {
  HSL() (h, s, l float64)
}
```

##### Rust

```json
metadata { "language": "rust" "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

```rust
trait ColorTrait {
    // Function declaration without implementation
    fn hsl(&self) -> (f64, f64, f64);
}
```

##### C++

```json
metadata { "language": "c++", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

```cpp
class ColorTrait {
public:
    // Pure virtual function (abstract method)
    virtual void HSL() = 0;
};
```

#### Define trait that inherits another trait and conform to it

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```py
# TODO:
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**How to use:**
- TODO:

**Examples:**
```mojo
trait Name:
    fn name(self):
        ...

trait Point1D(Name):
    fn x(self):
        ...

struct Point2D(Point1D)):
    var x: Int

    def name(self):
        # code...

    def x(self):
        # code...
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```ts
// TODO:
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```go
// TODO:
```

#### Define trait that inherits another trait and conform to it

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```py
# TODO:
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**How to use:**
- TODO:

**Examples:**
```mojo
trait Name:
    fn name(self):
        ...

trait Point1D:
    fn x(self):
        ...

struct Point2D(Name, Point1D)):
    var x: Int

    def name(self):
        # code...

    def x(self):
        # code...
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```ts
// TODO:
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```go
// TODO:
```

#### Define and confirm a trait with lifecycle methods

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```py
# TODO:
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**How to use:**
- TODO:

**Examples:**
```mojo
trait Point:
    fn __init__(out self): ...

trait Points(Point, Movable):
    pass

fn factory[T: Points]() -> T:
    return T()

struct Dot(Points):
    var x: Int

    fn __init__(out self):
        self.id = 0

    fn __moveinit__(out self, owned existing: Self):
        self.id = existing.id

var thing = factory[Dot]()
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```ts
// TODO:
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```go
// TODO:
```

#### Conform struct to a string trait

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- Stringable - cannot raise an error
- StringableRaising - can raise an error
- Signature: `__str__() -> String`

**Examples:**
```py
class Point:
  def __init__(self, x, y):
    self.x = x
    self.y = y

  def __str__(self) -> str:
    return f"({self.x}, {self.y})"

print(str(Point(1, 2)))  # Outputs: "(1, 2)"
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**How to use:**
- Include trait name in parentheses after the struct name `struct Point1D(StringableRaising)`

**How it works:**
- Struct that use the trait must implement everything required by the trait or you'll get a compile error

**Examples:**
```mojo
@value
struct Point1D(StringableRaising):
  var x: Int

  def __str__(self) -> String:
    # code...

print(String(Point1D(1)))
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```ts
interface Stringable {
  toString(): string;
}

class Point implements Stringable {
  constructor(public x: number, public y: number) {}

  toString(): string {
    return `(${this.x}, ${this.y})`;
  }
}

console.log(String(new Point(1, 2)));  // Outputs: "(1, 2)"
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```go
import "fmt"

type Point struct {
  X, Y int
}

// Implement the fmt.Stringer interface
func (p Point) String() string {
  return fmt.Sprintf("(%d, %d)", p.X, p.Y)
}

func main() {
  p := Point{1, 2}
  fmt.Println(p)  // Outputs: "(1, 2)"
}
```

##### Rust

```json
metadata { "language": "rust" "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

```rust
struct Point {
    x: i32,
    y: i32,
}

impl std::fmt::Display for Point {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        write!(f, "({}, {})", self.x, self.y)
    }
}

fn main() {
    let p = Point { x: 1, y: 2 };
    println!("{}", p);  // Outputs: "(1, 2)"
}
```

##### C++

```json
metadata { "language": "c++", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

```cpp
#include <iostream>
#include <string>

class Point {
private:
    int x, y;
public:
    Point(int x, int y) : x(x), y(y) {}

    // Override string conversion
    operator std::string() const {
        return "(" + std::to_string(x) + ", " + std::to_string(y) + ")";
    }
};

int main() {
    Point p(1, 2);
    std::cout << std::string(p) << std::endl;  // Outputs: "(1, 2)"
    return 0;
}
```

#### Implement index access trait

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```py
class Point:
    def __init__(self, data):
        self.data = data

    # Getter
    def __getitem__(self, indices):
        x, y = indices  # Unpack tuple of indices
        return self.data[x][y]

    # Setter
    def __setitem__(self, indices, value):
        x, y = indices
        self.data[x][y] = value

def main():
    p = Point([[11, 22], [33, 44]])
    p[1, 1] = 55
    print(p[0, 1])  # Outputs: 22
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**Examples:**
```mojo
@value
struct Point:
    var data: List[List[Int]]

    # Getter
    def __getitem__(self, x: Int, y: Int) -> Int:
        return self.data[x][y]

    # Setter
    def __setitem__(mut self, x: Int, y: Int, value: Int) -> None:
        self.data[x][y] = value

def main():
    p = Point(List(List(11, 22), List(33, 44)))
    p[1, 1] = 33
    print(p[0, 1])
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```ts
class Point {
  constructor(private data: number[][]) {}

  // TypeScript doesn't support true operator overloading
  // so we use methods instead
  getAt(x: number, y: number): number {
    return this.data[x][y];
  }

  setAt(x: number, y: number, value: number): void {
    this.data[x][y] = value;
  }
}

function main() {
  const p = new Point([[11, 22], [33, 44]]);
  p.setAt(1, 1, 55);
  console.log(p.getAt(0, 1));  // Outputs: 22
}
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```go
type Point struct {
  Data [][]int
}

// Go doesn't support operator overloading
// so we use methods instead
func (p *Point) GetAt(x, y int) int {
  return p.Data[x][y]
}

func (p *Point) SetAt(x, y int, value int) {
  p.Data[x][y] = value
}

func main() {
  p := &Point{Data: [][]int{{11, 22}, {33, 44}}}
  p.SetAt(1, 1, 55)
  fmt.Println(p.GetAt(0, 1))  // Outputs: 22
}
```

##### Rust

```json
metadata { "language": "rust" "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

```rust
use std::ops::{Index, IndexMut};

struct Point {
    data: Vec<Vec<i32>>,
}

// Implement Index trait for reading
impl Index<(usize, usize)> for Point {
    type Output = i32;

    fn index(&self, idx: (usize, usize)) -> &Self::Output {
        &self.data[idx.0][idx.1]
    }
}

// Implement IndexMut trait for writing
impl IndexMut<(usize, usize)> for Point {
    fn index_mut(&mut self, idx: (usize, usize)) -> &mut Self::Output {
        &mut self.data[idx.0][idx.1]
    }
}

fn main() {
    let mut p = Point {
        data: vec![vec![11, 22], vec![33, 44]],
    };
    p[(1, 1)] = 55;
    println!("{}", p[(0, 1)]);  // Outputs: 22
}
```

##### C++

```json
metadata { "language": "c++", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

```cpp
#include <iostream>
#include <vector>

class Point {
private:
    std::vector<std::vector<int>> data;

public:
    Point(const std::vector<std::vector<int>>& data) : data(data) {}

    // Getter with operator overloading
    int operator()(int x, int y) const {
        return data[x][y];
    }

    // Setter with operator overloading
    int& operator()(int x, int y) {
        return data[x][y];
    }
};

int main() {
    Point p({{11, 22}, {33, 44}});
    p(1, 1) = 55;
    std::cout << p(0, 1) << std::endl;  // Outputs: 22
    return 0;
}
```

#### Conform function argument type to a trait

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```py
from typing import Protocol, Tuple

# Define trait/protocol
class ColorTrait(Protocol):
    CMYK: Tuple[int, int, int, int]

# Implementation
class Color:
    def __init__(self, r: int, g: int, b: int):
        self.R = r
        self.G = g
        self.B = b
        # Calculate CMYK from RGB (simplified)
        self.CMYK = (0, 0, 0, 100 - max(r, g, b) * 100 // 255)

# Function accepts any type with CMYK attribute
def join_cyan(c1: ColorTrait, c2: ColorTrait) -> int:
    return c1.CMYK[0] + c2.CMYK[0]

def use_trait_function():
    c1 = Color(0, 0, 255)
    c2 = Color(0, 255, 255)
    result = join_cyan(c1, c2)
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**Similar to:**
- templates in other programming languages

**How to use:**
- define conforming trait in square brackets following the method name `joinCyan[T: ColorTrait]`

**How it works:**
-compiler infers the type of the argument, and ensures the type has the required trait

**Examples:**
```mojo
# TODO: test if this works
struct Color:
    var R: Int
    var G: Int
    var B: Int
    var CMYK: Tuple[Int, Int, Int, Int]

trait ColorTrait:
    var CMYK: Tuple[Int, Int, Int, Int]

# Function parameter is `[T: ColorTrait]`
fn joinCyan[T: ColorTrait](c1: T, c2: T) -> Int:
    return c1.CMYK[0] + c2.CMYK[0]

fn use_trait_function():
    var c1 = Color(0, 0, 255)
    var c2 = Color(0, 255, 255)
    joinCyan(c1, c2)
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```ts
// Define trait/interface
interface ColorTrait {
  CMYK: [number, number, number, number];
}

// Implementation
class Color implements ColorTrait {
  R: number;
  G: number;
  B: number;
  CMYK: [number, number, number, number];

  constructor(r: number, g: number, b: number) {
    this.R = r;
    this.G = g;
    this.B = b;
    // Calculate CMYK from RGB (simplified)
    this.CMYK = [0, 0, 0, 100 - Math.max(r, g, b) * 100 / 255];
  }
}

// Generic function that requires ColorTrait
function joinCyan<T extends ColorTrait>(c1: T, c2: T): number {
  return c1.CMYK[0] + c2.CMYK[0];
}

function useTraitFunction() {
  const c1 = new Color(0, 0, 255);
  const c2 = new Color(0, 255, 255);
  const result = joinCyan(c1, c2);
}
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```go
// Define trait/interface
type ColorTrait interface {
  GetCMYK() [4]int
}

// Implementation
type Color struct {
  R, G, B int
  cmyk    [4]int
}

func NewColor(r, g, b int) *Color {
  // Calculate CMYK from RGB (simplified)
  k := 100 - max(r, g, b) * 100 / 255
  return &Color{
    R: r,
    G: g,
    B: b,
    cmyk: [4]int{0, 0, 0, k},
  }
}

func (c *Color) GetCMYK() [4]int {
  return c.cmyk
}

// Function accepts anything implementing ColorTrait
func JoinCyan(c1, c2 ColorTrait) int {
  return c1.GetCMYK()[0] + c2.GetCMYK()[0]
}

func UseTraitFunction() {
  c1 := NewColor(0, 0, 255)
  c2 := NewColor(0, 255, 255)
  result := JoinCyan(c1, c2)
}
```

##### Rust

```json
metadata { "language": "rust" "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

```rust
// Define trait
trait ColorTrait {
    fn get_cmyk(&self) -> (i32, i32, i32, i32);
}

// Implementation
struct Color {
    r: i32,
    g: i32,
    b: i32,
    cmyk: (i32, i32, i32, i32),
}

impl Color {
    fn new(r: i32, g: i32, b: i32) -> Self {
        // Calculate CMYK from RGB (simplified)
        let k = 100 - (r.max(g).max(b) * 100 / 255);
        Color { r, g, b, cmyk: (0, 0, 0, k) }
    }
}

impl ColorTrait for Color {
    fn get_cmyk(&self) -> (i32, i32, i32, i32) {
        self.cmyk
    }
}

// Function accepts any type that implements ColorTrait
fn join_cyan<T: ColorTrait>(c1: &T, c2: &T) -> i32 {
    let cmyk1 = c1.get_cmyk();
    let cmyk2 = c2.get_cmyk();
    cmyk1.0 + cmyk2.0
}

fn use_trait_function() {
    let c1 = Color::new(0, 0, 255);
    let c2 = Color::new(0, 255, 255);
    let result = join_cyan(&c1, &c2);
}
```

##### C++

```json
metadata { "language": "c++", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

```cpp
#include <array>

// Define trait/interface as a concept (C++20)
template <typename T>
concept ColorTrait = requires(T t) {
    { t.getCMYK() } -> std::convertible_to<std::array<int, 4>>;
};

// Implementation
class Color {
private:
    int r, g, b;
    std::array<int, 4> cmyk;

public:
    Color(int r, int g, int b) : r(r), g(g), b(b) {
        // Calculate CMYK from RGB (simplified)
        int k = 100 - std::max({r, g, b}) * 100 / 255;
        cmyk = {0, 0, 0, k};
    }

    std::array<int, 4> getCMYK() const {
        return cmyk;
    }
};

// Function accepts any type that satisfies ColorTrait
template <ColorTrait T>
int joinCyan(const T& c1, const T& c2) {
    return c1.getCMYK()[0] + c2.getCMYK()[0];
}

void useTraitFunction() {
    Color c1(0, 0, 255);
    Color c2(0, 255, 255);
    int result = joinCyan(c1, c2);
}
```

#### Conform to a writeable trait

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```py
from abc import ABC, abstractmethod
from typing import Protocol, TypeVar, Generic

# Define Writer protocol
class Writer(Protocol):
    def write(self, *args) -> None:
        pass

# Define traits/protocols
class Stringable(Protocol):
    def __str__(self) -> str:
        pass

class Writable(Protocol):
    def write_to(self, writer: Writer) -> None:
        pass

# Implementation
class Complex(Stringable, Writable):
    def __init__(self, re, im):
        self.re = re
        self.im = im

    def __str__(self) -> str:
        return f"({self.re} {'+ ' if self.im >= 0 else '- '}{abs(self.im)}i)"

    def write_to(self, writer: Writer) -> None:
        writer.write("(", self.re)
        if self.im < 0:
            writer.write(" - ", -self.im)
        else:
            writer.write(" + ", self.im)
        writer.write("i)")

# Simple string writer implementation
class StringWriter:
    def __init__(self):
        self.content = ""

    def write(self, *args):
        for arg in args:
            self.content += str(arg)

    def get_content(self):
        return self.content

c3 = Complex(3.14159, -2.71828)
print("c3 =", c3)  # Uses __str__

writer = StringWriter()
c3.write_to(writer)
print(writer.get_content())
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**How to use:**
- TODO:

**Constraints:s**
- The Writable trait doesn't allow the write_to() method to raise an error and the Stringable trait doesn't allow the **str**() method to raise an error. Instead have to define these methods with fn

**Examples:**
```mojo
@value
struct Complex(
    Writable,
    Stringable,
):
    # code...

    fn __str__(self) -> String:
        return String.write(self)

    fn write_to[W: Writer](self, mut writer: W):
        writer.write("(", self.re)
        if self.im < 0:
            writer.write(" - ", -self.im)
        else:
            writer.write(" + ", self.im)
        writer.write("i)")

c3 = Complex(3.14159, -2.71828)
print("c3 =", c3)

var msg = String("The value is: ", c3)
print(msg)
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```ts
// Define interfaces
interface Writer {
  write(...args: any[]): void;
}

interface Stringable {
  toString(): string;
}

interface Writable {
  writeTo(writer: Writer): void;
}

// Implementation
class Complex implements Stringable, Writable {
  constructor(public re: number, public im: number) {}

  toString(): string {
    return `(${this.re} ${this.im >= 0 ? '+ ' : '- '}${Math.abs(this.im)}i)`;
  }

  writeTo(writer: Writer): void {
    writer.write("(", this.re);
    if (this.im < 0) {
      writer.write(" - ", -this.im);
    } else {
      writer.write(" + ", this.im);
    }
    writer.write("i)");
  }
}

// Simple string writer implementation
class StringWriter implements Writer {
  private content = "";

  write(...args: any[]): void {
    for (const arg of args) {
      this.content += String(arg);
    }
  }

  getContent(): string {
    return this.content;
  }
}

const c3 = new Complex(3.14159, -2.71828);
console.log("c3 =", c3.toString());

const writer = new StringWriter();
c3.writeTo(writer);
console.log(writer.getContent());
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```go
import (
  "fmt"
  "io"
  "strings"
)

// Define interfaces
type Stringable interface {
  String() string
}

type Writable interface {
  WriteTo(w io.Writer) (int64, error)
}

// Implementation
type Complex struct {
  Re, Im float64
}

// Implement Stringable
func (c Complex) String() string {
  if c.Im < 0 {
    return fmt.Sprintf("(%g - %gi)", c.Re, -c.Im)
  }
  return fmt.Sprintf("(%g + %gi)", c.Re, c.Im)
}

// Implement Writable
func (c Complex) WriteTo(w io.Writer) (int64, error) {
  var n int64
  written, err := fmt.Fprintf(w, "(%g", c.Re)
  n += int64(written)
  if err != nil {
    return n, err
  }

  if c.Im < 0 {
    written, err = fmt.Fprintf(w, " - %g", -c.Im)
  } else {
    written, err = fmt.Fprintf(w, " + %g", c.Im)
  }
  n += int64(written)
  if err != nil {
    return n, err
  }

  written, err = fmt.Fprint(w, "i)")
  n += int64(written)
  return n, err
}

func main() {
  c3 := Complex{3.14159, -2.71828}
  fmt.Println("c3 =", c3)  // Uses String()

  var sb strings.Builder
  c3.WriteTo(&sb)
  fmt.Println(sb.String())
}
```

##### Rust

```json
metadata { "language": "rust" "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

```rust
use std::fmt;
use std::io::{self, Write};

// Define traits
trait Writable {
    fn write_to<W: Write>(&self, writer: &mut W) -> io::Result<()>;
}

// Implementation
struct Complex {
    re: f64,
    im: f64,
}

impl fmt::Display for Complex {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        if self.im < 0.0 {
            write!(f, "({} - {}i)", self.re, -self.im)
        } else {
            write!(f, "({} + {}i)", self.re, self.im)
        }
    }
}

impl Writable for Complex {
    fn write_to<W: Write>(&self, writer: &mut W) -> io::Result<()> {
        write!(writer, "(")?;
        write!(writer, "{}", self.re)?;

        if self.im < 0.0 {
            write!(writer, " - {}", -self.im)?;
        } else {
            write!(writer, " + {}", self.im)?;
        }

        write!(writer, "i)")?;
        Ok(())
    }
}

fn main() {
    let c3 = Complex { re: 3.14159, im: -2.71828 };
    println!("c3 = {}", c3);  // Uses Display

    let mut buffer = Vec::new();
    c3.write_to(&mut buffer).unwrap();
    println!("{}", String::from_utf8(buffer).unwrap());
}
```

##### C++

```json
metadata { "language": "c++", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

```cpp
#include <iostream>
#include <sstream>
#include <string>

// Define interfaces
class Writer {
public:
    virtual void write(const std::string& s) = 0;
    virtual ~Writer() = default;
};

class Stringable {
public:
    virtual std::string toString() const = 0;
    virtual ~Stringable() = default;
};

class Writable {
public:
    virtual void writeTo(Writer& writer) const = 0;
    virtual ~Writable() = default;
};

// Implementation
class Complex : public Stringable, public Writable {
private:
    double re, im;

public:
    Complex(double re, double im) : re(re), im(im) {}

    std::string toString() const override {
        std::ostringstream oss;
        if (im < 0) {
            oss << "(" << re << " - " << -im << "i)";
        } else {
            oss << "(" << re << " + " << im << "i)";
        }
        return oss.str();
    }

    void writeTo(Writer& writer) const override {
        writer.write("(");
        writer.write(std::to_string(re));

        if (im < 0) {
            writer.write(" - ");
            writer.write(std::to_string(-im));
        } else {
            writer.write(" + ");
            writer.write(std::to_string(im));
        }

        writer.write("i)");
    }
};

// String writer implementation
class StringWriter : public Writer {
private:
    std::string content;

public:
    void write(const std::string& s) override {
        content += s;
    }

    std::string getContent() const {
        return content;
    }
};

int main() {
    Complex c3(3.14159, -2.71828);
    std::cout << "c3 = " << c3.toString() << std::endl;

    StringWriter writer;
    c3.writeTo(writer);
    std::cout << writer.getContent() << std::endl;

    return 0;
}
```

#### Define value as any type or any type range

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```py
# Using Any type
from typing import Any
value1: Any = "string"

# Using Union type
from typing import Union
value2: Union[int, str, bool] = "string"
value2 = 42  # Valid
value2 = True  # Valid

# Python 3.10+ Union syntax
value3: int | str | bool = "string"
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**How to use:** This means you can call the destructor on any type

**How it works:**
- Every trait implicitly inherits from AnyType, and all structs conform to AnyType
- For types that don't have a destructor, Mojo adds a no-op destructor.

**Why use it:** This makes it possible to build generic collections without leaking memory. When the collection's destructor is called, it can safely call the destructors on every item it contains.

**How to use:**
- TODO:

**Examples:**
```mojo
# TODO:
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```ts
// Using any type
let value1: any = "string";

// Using union type
let value2: string | number | boolean = "string";
value2 = 42;  // Valid
value2 = true;  // Valid

// Using generic constraints
function process<T extends string | number>(value: T): T {
    return value;
}
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```go
// Using any (Go 1.18+)
var value1 any = "string"

// Using type constraints with interfaces (Go 1.18+)
type StringOrNumber interface {
    ~string | ~int | ~float64
}

// Using type switch for runtime type checking
func process(value any) {
    switch v := value.(type) {
    case string:
        fmt.Println("string:", v)
    case int:
        fmt.Println("integer:", v)
    case bool:
        fmt.Println("boolean:", v)
    }
}
```

#### Define generic container that can hold different data types

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```py
# TODO:
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**How to use:**
- TODO:

**Examples:**
```mojo
# TODO:
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```ts
// TODO:
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```go
// TODO:
```

### TODO

- [Generic structs with traits](https://docs.modular.com/mojo/manual/traits#generic-structs-with-traits)
