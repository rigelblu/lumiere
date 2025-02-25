### Value Lifetimes

#### Define behaviour when instance of struct is created, moved, copied, and destroyed

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

```mojo
# TODO:
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```

#### Use default lifetimes, compiler auto generates lifecyle methods

- *When to use:* basic aggregations of other types that don't require custom resource management or lifecycle behaviors
- *How it works:* compiler provides "member-wise" constructor `__init__()`, `__copyinit__()`, `__moveinit__()`

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

```mojo
@value
struct Person:
  name: String

p1 = Person("John")
print(p1.name)
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```
