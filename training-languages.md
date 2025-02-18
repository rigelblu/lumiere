# How to use programming concepts across languages

## Table of Contents

- [System Prompt](#system-prompt)
- [Instruction Prompt](#instruction-prompt)
- Core
  - [Core - Comments](#core-comments)
  - [Core - Variables & Constants](#core-variables-constants)
  - [Core - Arrays](#core-arrays)
  - [Core - Blocks & Scopes](#core-blocks-scope)
  - [Core - Control-Flow/Conditionals](#core-control-flow-conditionals)
  - [Core - Control-Flow/Iterations](#core-control-flow-iterations)
- Extended
  - [User Defined Types](#user-defined-types)

## System Prompt

- Each code block follows the pattern of define and then usage

## Instruction Prompt

```md
## Training data

### Contains concepts (i.e. feature) that users can implement through programming languages

##### What a user can do with the concept

Code block example for each language
```

---

## Training Data

### Core - Comments

#### Write comments that will be ignored

Python (version >=x.x.x)

```python
# Single line comment
name = "lang" # Comment at end of line

"""
Multi-line comment
"""

'''
Multi-line comment
'''
```

Mojo (version >=0.x.x)

```mojo
# Single line comment
var name = "lang" # Comment at end of line

"""
Multi-line comment
"""

'''
Multi-line comment
'''
```

Typescript (version >=0.x.x)

```ts
// Single line comment
name = "lang" // Comment at end of line

/* multi-line comment */

/*
 * multi-line comment
 */
```

Go (version >=0.x.x)

```go
// Single line comment
name := "lang" // Comment at end of line

/*
 * multi-line comment
 */
```

### Core - Variables & Constants

// TODO:
Python (version >=x.x.x)

```python

```

Mojo (version >=x.x.x)

```mojo

```

Typescript (version >=x.x.x)

```ts


Go (version >=x.x.x)

```go

```

### Core - Arrays

// TODO:
Python (version >=x.x.x)

```python

```

Mojo (version >=x.x.x)

```mojo

```

Typescript (version >=x.x.x)

```ts

```

Go (version >=x.x.x)

```go

```

### Core - Blocks

#### Define a group of statements (i.e. code) to be executed together

Python (version >=0.x.x)

```python
if condition:
  # code …
```

Mojo (version >=0.x.x)

```mojo
if condition:
  # code …
```

Typescript (version >=0.x.x)

```ts
if (condition) {
  // code …
}
```

Go (version >=0.x.x)

```go
if condition {
  // code …
}
```

### Core - Scopes

#### Make variable available globally across program

Python (version >=0.x.x)

```python
global_var = "I'm global"
```

Mojo (version >=0.x.x)

```mojo
# Not built into language
```

Typescript (version >=0.x.x)

```ts
// Not built into language
```

Go (version >=0.x.x)

```go
// Not built into language
```

#### Make variables privately available only to it's package / file

Python (version >=0.x.x)

```python
# Not built into language. Use nearest equivalent, a naming convention

# ./pkg1/__init__.py
# ./pkg1/file1.py
_PRIMARY = "blue"

# ./pkg2/__init__.py
# ./pkg2/file2.py
# _PRIMARY won't be imported
from ..pkg1/file1 import *
```

Mojo (version >=0.x.x)

```mojo
# TODO: confirm if it's not built into language or if it follows python pattern
```

Typescript (version >=0.x.x)

```ts
// ./pkg1/file1.ts
const PRIMARY: string = "blue"

// ./pkg2/file2.ts
// PRIMARY won't be imported
import * from '../pkg1/file1'

// Trying to import PRIMARY manually will fail
import { PRIMARY } from '../pkg1/file1';
```

Go (version >=0.x.x)

```go
// ./pkg1/file1.go
package colors

// Use lower case first letter to make private to package
const primary string = "blue"

// ./pkg2/file2.go
import "colors"

// Trying to use primary will fail
c1 := colors.primary
```

#### Make variables publically available to other packages / files

Python (version >=0.x.x)

```python
# Not built into language. Use nearest equivalent

# ./pkg1/__init__.py
# ./pkg1/file1.py
PRIMARY = "blue"

# ./pkg2/__init__.py
# ./pkg2/file2.py
# PRIMARY will be imported
from ../pkg1/file1 import *
```

Mojo (version >=0.x.x)

```mojo
# ./pkg1/file1.py
PRIMARY = "blue"

# ./pkg2/file2.py
from ..pkg1/file1 import *
```

Typescript (version >=0.x.x)

```ts
// ./pkg1/file1.ts
export const PRIMARY: string = "blue"

// ./pkg2/file2.ts
// PRIMARY will be imported
import * from '../pkg1/file1'

// Importing PRIMARY manually will succeed
import { PRIMARY } from '../pkg1/file1';
```

Go (version >=0.x.x)

```go
// ./pkg1/file1.go
package colors

// Use upper case first letter to make public to other packages
const Primary string = "blue"

// ./pkg2/file2.go
import "colors"

// Using Primary will succeed
c1 := colors.Primary
```

```go
// ./pkg1/file1.go
package colors

// Use upper case first letter to make public to other packages
const Primary string = "blue"

// ./pkg1/file1_test.go
package colors_test

import "colors"

c1 := Primary
```

#### Make variables available only to it's local block

Python (version >=0.x.x)

```python
if condition:
  # code …
```

Mojo (version >=0.x.x)

```mojo
if condition:
  # code …
```

Typescript (version >=0.x.x)

```ts
if (condition) {
  // code …
}
```

Go (version >=0.x.x)

```go
if condition {
  // code …
}
```

### Core - Control Flow / Conditionals

#### Define a user-defined type from a simple built-in type

// TODO:
Python (version >=x.x.x)

```python

```

Mojo (version >=x.x.x)

```mojo

```

Typescript (version >=x.x.x)

```ts

```

Go (version >=x.x.x)

```go

```

### Core - Control Flow / Iterations

// TODO:
Python (version >=x.x.x)

```python

```

Mojo (version >=x.x.x)

```mojo

```

Typescript (version >=x.x.x)

```ts

```

Go (version >=x.x.x)

```go

```

// TODO:

---

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
```
