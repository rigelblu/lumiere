### Decorators

#### Declare function can raise error

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

- Value assignment are converted into a constructor call if the target type has a constructor with a `@implicit` decorator and takes a single required argument that matches the value being assigned

```mojo
struct Point:
    x: Int

    @implicit
    def __init__(out self, x: Float):
        self.x = x
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```
