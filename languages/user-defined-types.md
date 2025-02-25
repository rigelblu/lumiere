### User Defined Types

#### Define a user-defined type from a simple built-in type

As known as type aliases

##### Python (version >=3.5.x)

```py
ColorType = str
c1: ColorType = "blue"
```

##### Mojo (version >=0.4.x)

```mojo
alias ColorType = String
var c1: ColorType = "blue"
```

##### TypeScript (version >=1.x.x)

```ts
type ColorType = string;
let c1: ColorType = "blue";
```

##### Go (version >=1.x.x)

```go
type ColorType string
var c1 ColorType = "blue"
```

#### Define a user-defined type from composing built-in/user-defined types

Custom data structure with
- Fields: variables containing the data
- Methods: (optional) functions to work with/manipulate instances of the data structure
- **Constraints:** doesn't allow dynamic dispatch (i.e. which specific implementation of a polymorphic method or function to call at runtime) or any runtime changes to the structure

##### Python (version >=3.7.x)

```py
# Not built into language. Use nearest equivalent
class PointType:
    x: int
    y: int

p1 = PointType(1, 2)
x = p1.x
```

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

##### Mojo (version >=0.4.x)

- **Constraints**:
  - All fields must be declared upfront with a type. You can't add fields dynamically at run-time
  - Values can't be assigned as part of the field declaration. Instead, use constructor to initialize the value of all fields

- **How it works:**
  - The instance is automatically passed as the first argument, followed by any explicit arguments that you provide
  - The first argument of the method is an instance of the struct, so it doesn't require an explicit type annotation

- **Conventions:**
  - Although any name could be used for this argument, the convention is to call it self
  - The `out self` declares self as a mutable reference that starts out as uninitialized and must be initialized before the function returns

```mojo
struct PointType:
    var x: Int
    var y: Int

    # Constructor
    def __init__(out self, x: Int, y: Int):
        self.x = x
        self.y = y

    # Destructor
    def __del__(self):
        # code...

    # Copy Constructor
    def __copyinit__(out self, existing other):
        self.x = existing.x
        self.y = existing.y

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

##### TypeScript (version >=2.x.x)

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

##### Go (version >=1.x.x)

```go
type PointType struct {
    x int
    y int
}

var p1 PointType = PointType{1, 2}
p2 := PointType{x: 1, y: 2}
x := p1.x
```

#### Overload operators (dunder methods)

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

**Constraints:** The `Comparable` and `EqualityComparable` traits don't allow the comparison dunder methods to raise errors. Because using `def` to define a method implies that it can raise an error, you must use `fn` to implement the comparison methods declared by these traits.

```mojo
# Bitwise
struct Point:
    var x: Int
    var y: Int

    # Bitwise positive `+`
    # def __pos__(...) -> Self:
    # def __rpos__(...) -> Self:
    # def __ipos__(...) -> None:

    # Bitwise negative `-`
    # def __neg__(...) -> Self:
    # def __rneg__(...) -> Self:
    # def __ineg__(...) -> None:

    # Bitwise not `~`
    # def __invert__(...) -> Self:
    # def __rinvert__(...) -> Self:
    # def __iinvert__(...) -> None:

    # Bitwise shift `<<`
    # def __lshift__(...) -> Self:
    # def __rlshift__(...) -> Self:
    # def __ilshift__(...) -> None:

    # Bitwise shift `>>`
    # def __rshift__(...) -> Self:
    # def __rrshift__(...) -> Self:
    # def __irshift__(...) -> None:

    # Bitwise AND `&`
    # def __and__(...) -> Self:
    # def __rand__(...) -> Self:
    # def __iand__(...) -> None:

    # Bitwise OR `|`
    # def __or__(...) -> Self:
    # def __ror__(...) -> Self:
    # def __ior__(...) -> None:

    # Bitwise XOR `^`
    # def __xor__(...) -> Self:
    # def __rxor__(...) -> Self:
    # def __ixor__(...) -> None:

    # Additionn `+`
    def __add__(self, rhs: MyInt) -> Self:
      # code...
    def __add__(self, rhs: Int) -> Self:
      # code...
    def __radd__(self, lhs: Int) -> Self:
      # code...
    def __iadd__(mut self, rhs: MyInt) -> None:
      # code...
    def __iadd__(mut self, rhs: Int) -> None:
      # code...

    # Subtraction `-`
    # def __sub__(...) -> Self:
    # def __rsub__(...) -> Self:
    # def __isub__(...) -> None:

    # Multiplication `*`
    # def __mul__(...) -> Self:
    # def __rmul__(...) -> Self:
    # def __imul__(...) -> None:

    # Division `/`
    # def __truediv__(...) -> Self:
    # def __rtruediv__(...) -> Self:
    # def __itruediv__(...) -> None:

    # Floor division `//`
    # def __floordiv__(...) -> Self:
    # def __rfloordiv__(...) -> Self:
    # def __ifloordiv__(...) -> None:

    # Remainder `%`
    # def __mod__(...) -> Self:
    # def __rmod__(...) -> Self:
    # def __imod__(...) -> None:

    # Power `**`
    # def __pow__(...) -> Self:
    # def __rpow__(...) -> Self:
    # def __ipow__(...) -> None:

    # Matrix multiplication `@`
    # def __matmul__(...) -> Self:
    # def __rmatmul__(...) -> Self:
    # def __imatmul__(...) -> None:

    # Equal `==`
    # def __eq__(...) -> Bool:

    # Not Equal `!=`
    # def __ne__(...) -> Bool:

    # Less Than `<`
    # def __lt__(...) -> Bool:

    # Greater Than `>`
    # def __gt__(...) -> Bool:

    # Less Than or Equal `<=`
    # def __le__(...) -> Bool:

    # Greater Than or Equal `>=`
    # def __ge__(...) -> Bool:

    # Contains `in` and `not in`
    # def __contains__(...) -> Bool:

    # Get item, including slice
    # def __getitem__(...) -> Self:

    # Set item, including slice
    # def __setitem(...) -> None:

    # For loop
    # def __iter__(...)
    # def __next__(...)
    # def __len__(...)

    # Context managers
    # def __enter__(...)
    # def __exit__(...)
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```
