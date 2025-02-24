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

- **Constraints:** You must explicitly indicate with a `raises` keyword if it can raise an error

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
```

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
  - Arguments are passed by immutable reference by default

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

```mojo
def hello1():
  # code...

# Pass argument by value
def hello2(name):
  # code...

# Pass argument by value, return string
def hello3(name):
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
