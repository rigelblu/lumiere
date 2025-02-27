### Built-in Single Value (i.e. Primitive/Scalar) Types

#### Define a boolean

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
# Implicit boolean
flag1 = True

# Explicit boolean
flag2: bool = False
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
# Implicit boolean
flag1 = True

# Explicit boolean
var flag2: Bool = False
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
// Implicit boolean
let flag1 = true;

// Explicit boolean
let flag2: boolean = false;
```

##### Go (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```go
// Implicit boolean
flag1 := true

// Explicit boolean
var flag2 bool = false
```

#### Define a integer

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
# Implicit integer
year1 = 2025

# Explicit integer
year2: int = 2025
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
metadata {
  "language": "typescript",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

```ts
// Implicit integer
let year1 = 2025;

// Explicit integer
let year2: number = 2025;
```

##### Go (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```go
// Implicit integer
year1 := 2025

// Explicit signed integer
var year2 int = 2025
var year3 int8 = 127
var year4 int16 = 2025
var year5 int32 = 2025
var year6 int64 = 2025

// Explicit unsigned integer
var year7 uint8 = 255
var year8 uint16 = 2025
var year9 uint32 = 2025
var year10 uint64 = 2025
```

#### Define a real-number

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
# Implicit real-number
pi1 = 3.14

# Explicit real-number
pi2: float = 3.141
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
# Implicit real-number
pi1 = 3.14

# Explicit real-number
var pi2: Float16 = 3.141
var pi3: Float32 = 3.141
var pi4: Float64 = 3.141
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
// Implicit real-number
let pi1 = 3.14;

// Explicit real-number
let pi2: number = 3.141;
```

##### Go (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```go
// Implicit real-number
pi1 := 3.14

// Explicit real-number
var pi2 float32 = 3.141
var pi3 float64 = 3.141
```

#### Define a dynamic object that's inferred at runtime

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
# Dynamic type
value = "string"
value = 42  # Can be reassigned to any type

# Using typing.Any
from typing import Any
dynamic_value: Any = "string"
dynamic_value = 42  # Valid
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
# TODO
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
// Using 'any' type
let value1: any = "string";
value1 = 42;  // Valid

// Using 'unknown' type (safer than any)
let value2: unknown = "string";
value2 = 42;  // Valid
```

##### Go (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```go
// Using empty interface
var value1 interface{} = "string"
value1 = 42  // Valid

// Using any type (Go 1.18+)
var value2 any = "string"
value2 = 42  // Valid
```

#### Define value as any type or any type range

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

##### Go (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

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

#### Convert type

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
# Converting between types
year = str(2025)
month = int("02")
pi = float("3.14")
is_valid = bool(1)  # True
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
year = String(2025)
month = Int(String("02"))
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
// Converting between types
let year = String(2025);
let month = Number("02");
let pi = parseFloat("3.14");
let is_valid = Boolean(1);  // true

// Alternative methods
let hex = (42).toString(16);  // Convert to hex string
let int_from_hex = parseInt("2a", 16);  // Convert from hex
```

##### Go (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```go
import (
    "fmt"
    "strconv"
)

// Converting between types
year := strconv.Itoa(2025)  // int to string
month, _ := strconv.Atoi("02")  // string to int
pi, _ := strconv.ParseFloat("3.14", 64)  // string to float64
isValid := bool(1 != 0)  // convert to bool

// Format conversions
hex := fmt.Sprintf("%x", 42)  // Convert to hex string
```

### TODO

- Hexadecimal literals
- Octal literals
- Binary literals
- [SIMD (single instruction, multiple data)](https://docs.modular.com/mojo/manual/types#simd-and-dtype)
- [DType (described different dat types that a SIMD vector can hold)](https://docs.modular.com/mojo/manual/types#the-dtype-type)
- [Register-passable, memory-only, and trivial types](https://docs.modular.com/mojo/manual/types#register-passable-memory-only-and-trivial-types)
