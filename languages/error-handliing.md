### Error Handling

#### Declare function can raise error

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

**Constraints:**
- Doesn't support typed error conditions yet. All errors are instances of Error, and the only thing that distinguishes different error conditions is the error message that you provide

```mojo
fn hello4(name: String) raises:
    if (name == ""):
        raise Error("Name is empty")
    elif (len(name) == 0):
        raise "Name is empty" # raise automatically creates an Error object
    return "Hello " + name
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```

#### Handle raised errors

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

**Constraints:**
- If `raises` keyword isn't included when defining a function with fn, then the function must explicitly handle any errors that might occur in code that it executes
- Because Mojo does not currently support typed errors, a try-except control structure can include at most one except clause, which catches any Error raised

```mojo
fn handle_error():
    try:
        # code block that can raise an error
    except e:
        print("Handled an error," e)
    else:
        # code block to execute if no errors occur...
    finally:
        # code block to execute always...
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```
