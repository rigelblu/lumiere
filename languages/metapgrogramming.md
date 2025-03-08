### Metaprogramming

#### Define a parameter at compile time

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "-" }
```

```py
# TODO:
```

##### Mojo

**Analogy:** compile-time variable that becomes a runtime constant

**Terminology:** "parameter" and "parameter expression" refer to compile-time values, and "argument" and "expression" refer to runtime values

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```mojo
# Define parameter count on method
def repeat[count: Int](msg: String):
    @parameter # evaluate the following for loop at compile time
    for i in range(count):
        print(msg)

struct Points[num: Int]:
    var numPoints: Int = num

# Specify paramater and argument
repeat[3]("Hello")
p = Points[2]
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```ts
// TODO:
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// TODO:
```

#### Execute scope based on compile-time parameter

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```py
# TODO:
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```mojo
fn coount[num: Int]():
    @parameter
    for i in range(num):
        print(i)
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```ts
// TODO:
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// TODO:
```

#### Define different types of parameters

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```py
# TODO:
```

##### Mojo

**What to do:**
- Infer-only paramater: put `//` after infer-only parameters
- Positional-only parameters: put `/` after positional-only parameters
- Variadic parameters: prefix parameter with star, ie `*parameter_name` (it's keyword-only)
- Keyword-only parameters: parameter list with no variadic parameter are keyword-only parameters
- Optional parameters: put `=` and then default value for parameter

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```mojo
def my_sort[
    # infer-only parameters
    Type: DType,
    width: Int,
    //,
    # positional-only parameter
    values: SIMD[Type, width],
    /,
    # positional-or-keyword parameter
    compare: fn (Scalar[Type], Scalar[Type]) -> Int,
    *,
    # keyword-only parameter
    reverse: Bool = False,
]() -> SIMD[Type, width]:
```


```mojo
# keyword-only parameter
fn repeat[MsgType: Stringable, count: Int](msg: MsgType):
    @parameter
    for i in range(count):
        print(String(msg))

repeat[count=2](42)                   # Must use keyword parameter for `count`
```

```mojo
# inferred and then positional paramaters
fn repeat[MsgType: Stringable, //, count: Int](msg: MsgType):
    @parameter
    for i in range(count):
        print(String(msg))

# MsgType is always inferred, so first positional keyword `2` is passed to `count`
repeat[2](42)
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```ts
// TODO:
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// TODO:
```

#### Define a generic function

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```py
# TODO:
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```mojo
fn repeat[MsgType: Stringable, count: Int](msg: MsgType):
    @parameter
    for i in range(count):
        print(String(msg))

repeat[count=2](42)                   # Must use keyword parameter for `count`
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```ts
// TODO:
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// TODO:
```

#### Conditionally conform a method

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```py
# TODO:
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```mojo
@value
struct Container[ElementType: CollectionElement]:
    var element: ElementType

    def __str__[StrElementType: WritableCollectionElement, //](
            self: Container[StrElementType]) -> String:
        return String(self.element)

def use_container():
    float_container = Container(5)
    string_container = Container("Hello")
    print(float_container.__str__())
    print(string_container.__str__())

use_container()
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```ts
// TODO:
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// TODO:
```

### TODO

- [Using parameterized types and functions](https://docs.modular.com/mojo/manual/parameters/#using-parameterized-types-and-functions)
- [Parameter inference](https://docs.modular.com/mojo/manual/parameters/#parameter-inference)
- [Optional parameters and keyword parameters](https://docs.modular.com/mojo/manual/parameters/#optional-parameters-and-keyword-parameters)
- [Infer-only parameters](https://docs.modular.com/mojo/manual/parameters/#infer-only-parameters)
- [Variadic parameters](https://docs.modular.com/mojo/manual/parameters/#variadic-parameters)
- [Parameter expressions are just Mojo code](https://docs.modular.com/mojo/manual/parameters/#parameter-expressions-are-just-mojo-code)
- [Powerful compile-time programming](https://docs.modular.com/mojo/manual/parameters/#powerful-compile-time-programming)
- [Mojo types are just parameter expressions](https://docs.modular.com/mojo/manual/parameters/#mojo-types-are-just-parameter-expressions)
- [alias: named parameter expressions](https://docs.modular.com/mojo/manual/parameters/#alias-named-parameter-expressions)
- [Fully-bound, partially-bound, and unbound types](https://docs.modular.com/mojo/manual/parameters/#fully-bound-partially-bound-and-unbound-types)
- [Omitted parameters](https://docs.modular.com/mojo/manual/parameters/#omitted-parameters)
- [Automatic parameterization of functions](https://docs.modular.com/mojo/manual/parameters/#automatic-parameterization-of-functions)
- [Automatic parameterization of parameters](https://docs.modular.com/mojo/manual/parameters/#automatic-parameterization-of-parameters)
- [Automatic parameterization with partially-bound types](https://docs.modular.com/mojo/manual/parameters/#automatic-parameterization-with-partially-bound-types)
- [Legacy syntax (omitted parameters)](https://docs.modular.com/mojo/manual/parameters/#legacy-syntax-omitted-parameters)
- [The rebind() builtin](https://docs.modular.com/mojo/manual/parameters/#the-rebind-builtin)
