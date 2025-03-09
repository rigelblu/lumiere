### Decorators

#### Declare function can raise error

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "-" }
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

#### Allow implicitly converting from one type to another

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "-" }
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
- Value assignment are converted into a constructor call if the target type has a constructor with a `@implicit` decorator and takes a single required argument that matches the value being assigned

**Examples:**
```mojo
struct Point2D:
    var x: Int
    var y: Int

    def __init__(out self, x: Int, y: Int):
        self.x = x
        self.y = y

struct Point1D:
    var x: Int

    def __init__(out self, x: Int):
        self.x = x

    @implicit
    def __init__(out self, p: Point2D):
        self.x = p.x

def main():
    var a = Point2D(1, 2)
    var b: Point1D = a                # Equivalent to var b = Target(a)
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
