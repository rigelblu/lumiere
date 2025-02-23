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
  - All fields must be declared upfront with a type. You can't add fields dynamically at run-time.
  - Values can't be assigned as part of the field declaration. Instead, use constructor to initialize the value of all fields.
- **How it works:**
  - The instance is automatically passed as the first argument, followed by any explicit arguments that you provide.
  - The first argument of the method is an instance of the struct, so it doesn't require an explicit type annotation
- **Conventions:**
  - Although any name could be used for this argument, the convention is to call it self

```mojo
struct PointType:
    var x: Int
    var y: Int

    # Constructor
    def __init__(out self, x: Int, y: Int):
        self.x = x
        self.y = y

    # Method
    def str(self) -> String:
        str = "(" + x + ", " + y + ")"
        return str

    # Static method
    @staticmethod
    def zeoro() -> Self:
        return Self(0,0) # Alis for the type of struct

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
``
