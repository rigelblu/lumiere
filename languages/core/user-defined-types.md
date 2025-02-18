### User Defined Types

#### Define a user-defined type from a simple built-in type

As known as type aliases

Python (version >=3.5.x)

```python
ColorType = str
c1: ColorType = "blue"
```

Mojo (version >=0.4.x)

```mojo
alias ColorType = String
var c1: ColorType = "blue"
```

TypeScript (version >=1.x.x)

```ts
type ColorType = string;
let c1: ColorType = "blue";
```

Go (version >=1.x.x)

```go
type ColorType string
var c1 ColorType = "blue"
```

#### Define a user-defined type from combining built-in/user-defined types

Python (version >=3.7.x)

```python
# Not built into language. Use nearest equivalent
class PointType:
    x: int
    y: int

p1 = PointType(1, 2)
x = p1.x
```

```python
# Not built into language. Use nearest equivalent
from dataclasses import dataclass

@dataclass
class PointType:
    x: int
    y: int

p1 = PointType(1, 2)
x = p1.x
```

Mojo (version >=0.4.x)

```mojo
struct PointType:
  var x: Int
  var y: Int

  def __init__(out self, x: Int, y: Int):
    self.x = x
    self.y = y

var p1 = PointType(1, 2)
var x = p1.x
```

TypeScript (version >=2.x.x)

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

Go (version >=1.x.x)

```go
type PointType struct {
    x int
    y int
}

var p1 PointType = PointType{1, 2}
p2 := PointType{x: 1, y: 2}
x := p1.x
``
