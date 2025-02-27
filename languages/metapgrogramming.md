### Metaprogramming

#### Define a parameter at compile time

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

```mojo
# Define parameter count
def repeat[count: Int](msg: String):
    @parameter # evaluate the following for loop at compile time
    for i in range(count):
        print(msg)

# Specify paramater and argument
repeat[3]("Hello")
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
