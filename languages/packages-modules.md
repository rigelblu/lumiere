### Packages & Modules

#### Create and use module

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
# point.py
class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y
```

```py
# main.py - import whole module
import point
p = point.Point(1, 2)
```

```py
# main.py - import specific class
from point import Point
p = Point(1, 2)
```

```py
# main.py - import with alias
from point import Point as Pt
p = Pt(1, 2)
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

**What is it:** a module is a single file

```mojo
# file1.mojo
@value
struct Point
    x: Int
    y: Int
```

```mojo
# file2.mojo
import file1

var p = file1.Point(1, 2
```

```mojo
# file2.mojo
from file1 import Point

var p = Point(1, 2)
```

```mojo
# file2.mojo
from file1 import Point as pt

var p = pt(1, 2)
```

##### TypeScript (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```ts
// point.ts
export class Point {
  constructor(public x: number, public y: number) {}
}

// Can also export individually
export function distanceBetween(p1: Point, p2: Point): number {
  return Math.sqrt(Math.pow(p2.x - p1.x, 2) + Math.pow(p2.y - p1.y, 2));
}
```

```ts
// main.ts - import whole module
import * as Geometry from './point';
const p = new Geometry.Point(1, 2);
```

```ts
// main.ts - import specific exports
import { Point } from './point';
const p = new Point(1, 2);
```

```ts
// main.ts - import with alias
import { Point as Pt } from './point';
const p = new Pt(1, 2);
```

##### Go (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```go
// geometry/point.go
package geometry

type Point struct {
  X, Y int
}

func NewPoint(x, y int) Point {
  return Point{x, y}
}
```

```go
// main.go
package main

import (
  "fmt"
  "myapp/geometry"  // Import path depends on module setup
)

func main() {
  p := geometry.NewPoint(1, 2)
  fmt.Println(p)
}
```

```go
// main.go - import with alias
package main

import (
  "fmt"
  geo "myapp/geometry"  // Import with alias
)

func main() {
  p := geo.NewPoint(1, 2)
  fmt.Println(p)
}
```

#### Create and use a package

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
# Directory structure
# ./main.py
# ./geometry/
# ./geometry/__init__.py
# ./geometry/point.py
# ./geometry/line.py

# ./geometry/__init__.py
from .point import Point  # Make Point available directly from the package
from .line import Line

# ./geometry/point.py
class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y

# ./geometry/line.py
class Line:
    def __init__(self, p1, p2):
        self.p1 = p1
        self.p2 = p2

# ./main.py
from geometry import Point, Line
p1 = Point(0, 0)
p2 = Point(1, 1)
line = Line(p1, p2)
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

**What to do:**
- Compile package into a `.mojopkg` to share and is compatible across system architectures

**Conventions:**
- Typicall nclude APIs to be imported and used in other Mojo programs
- Modules don't include a main() function and aren't executables

**Constraints:**
- Must include a `__init__.mojo` file
- To rename a package, you cannot rename the .mojopkg or .📦 filenam because the package name is encoded in the file. Instead, you must run mojo package again to specify a new name
- Top-level code is not supported in .mojo files, so you can't write code in __init__.mojo that executes upon import. You can however add structs and functions, which you can then import from the package name
- Instead of adding APIs in the `__init__.mojo` file, import module members, which has the same effect by making your APIs accessible from the package name, instead of requiring the `<package_name>.<module_name>` notation.

**How it works:**
- A .mojopkg file contains non-elaborated code that works across architectures. The code becomes an architecture-specific executable only after it's imported into a Mojo program that's then compiled with mojo build

```
# Directory structure
./main.mojo
./package1
./package1/__init__.mojo
./package1/module1.mojo
./package1/module2.mojo
./compiled_pkg1.mojopkg
```

```mojo
# ./main.mojo
from compiled_pkg1.module1 import UserDefinedStruct
```

```
# ./package1/__init__.mojo
from .module1 import UserDefinedStruct
```

```
# ./package1/__init__.mojo
from .module1 import *
```

##### TypeScript (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```ts
// Directory structure
// ./src/main.ts
// ./src/geometry/index.ts
// ./src/geometry/point.ts
// ./src/geometry/line.ts

// ./src/geometry/point.ts
export class Point {
  constructor(public x: number, public y: number) {}
}

// ./src/geometry/line.ts
import { Point } from './point';

export class Line {
  constructor(public p1: Point, public p2: Point) {}
}

// ./src/geometry/index.ts (package entry point)
export { Point } from './point';
export { Line } from './line';

// ./src/main.ts
import { Point, Line } from './geometry';

const p1 = new Point(0, 0);
const p2 = new Point(1, 1);
const line = new Line(p1, p2);
```

##### Go (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```go
// Directory structure
// go.mod defines the module name
// ./main.go
// ./geometry/point.go
// ./geometry/line.go

// go.mod
module myapp

go 1.18

// ./geometry/point.go
package geometry

type Point struct {
  X, Y int
}

func NewPoint(x, y int) Point {
  return Point{X: x, Y: y}
}

// ./geometry/line.go
package geometry

type Line struct {
  P1, P2 Point
}

func NewLine(p1, p2 Point) Line {
  return Line{P1: p1, P2: p2}
}

// ./main.go
package main

import (
  "fmt"
  "myapp/geometry"
)

func main() {
  p1 := geometry.NewPoint(0, 0)
  p2 := geometry.NewPoint(1, 1)
  line := geometry.NewLine(p1, p2)
  fmt.Println(line)
}
```
