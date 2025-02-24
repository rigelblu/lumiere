# Declare function can raise error

#### Declare function can raise error

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

```mojo
fn hello4(name: String) raises:
    if (name == ""):
        raise Error("Name is empty")
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

```mojo
fn handle_error():
    try:
        raises_error()
    except e:
        print("Handled an error," e)
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```
