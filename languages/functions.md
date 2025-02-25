### Functions

#### Main entry point

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

- **Convention:** put at end of file

```mojo
def main():
    # code...
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```

#### TODO: Define a function with explicit types

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

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

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```

#### TODO: Define a function with optional types

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

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

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

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```

#### TODO: Chain functions

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

```mojo
def hello():
    text = String()
          .join("Hello", " world")
    print(text)
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```

#### Define optional arguments on function

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

- **Constraints:**
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

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```

#### Invoke functions with keywords arguments

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

```mojo
def point1(x: Int, y: Int, z: Int):
    # code...

fn point2(x: Int, y: Int, z: Int):
    # code...

point1(z = 1, x = 2, y = 3)
point2(z = 1, x = 2, y = 3)
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```


#### Define a function with a variable number of arguments

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

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

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```

#### Define a function with a variable number of arguments of Strings

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

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

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```

#### Define a function with a variable number of keywords arguments

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

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

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```

#### Define a function with named return values

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

**What it is:**
- The out argument convention identifies an uninitialized variable that the function must initialize.

**How to uses:**
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

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```

#### Define overloaded functions

- **What is it:** same function, with different signature names

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

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

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```

### TODO

- [Heterogeneous variadic argument])(https://docs.modular.com/mojo/manual/functions#homogeneous-variadic-arguments)
- [Positional-only and keyword-only arguments](https://docs.modular.com/mojo/manual/functions#positional-only-and-keyword-only-arguments)
