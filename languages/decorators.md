### Decorators

#### Declare function can raise error

##### Python

```json
metadata {
  "language": "python",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "-"
}
```

```py
# TODO:
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

- Value assignment are converted into a constructor call if the target type has a constructor with a `@implicit` decorator and takes a single required argument that matches the value being assigned

```mojo
struct Point:
    x: Int

    @implicit
    def __init__(out self, x: Float):
        self.x = x
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
// TODO:
```

##### Go

```json
metadata {
  "language": "go",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

```go
// TODO:
```
