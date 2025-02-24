### Value Ownership

#### Define a value as mutable

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

```mojo
def setColor(mut color: String) -> None:
    # code...
```

##### TypeScript (version >=0.x.x)

```ts
// Not built into language
```

##### Go (version >=0.x.x)

```go
// Not built into language
```

#### Define a value as passed by value or by reference

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

```mojo
# By value
def setPointX(owned x: Int) -> None:
    # code...

# By reference
def setName(read name: String) -> None:
    # code...
```

##### TypeScript (version >=0.x.x)

```ts
// Not built into language
```

##### Go (version >=0.x.x)

```go
// Not built into language
```

#### Define a value as ?

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

```mojo
struct Point:
    var x: Int

    fn __init__(out self, x: Int):
        self.x = x

    fn __copyinit__(out self, existing other):
        self.x = existing.first

    def dump(self):
        print(self.first, self.second)
```

##### TypeScript (version >=0.x.x)

```ts
// Not built into language
```

##### Go (version >=0.x.x)

```go
// Not built into language
```
