### Blocks & Statements

#### Define a group of statements (i.e. code) to be executed together

##### Python

```json
metadata {
  "language": "python",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "human"
}
```

```py
if condition:
    # code...
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

You can use any number of spaces or tabs for indentation as long as the same indentation is used for the entire code block

```mojo
if condition:
    # code...
```

##### TypeScript (version >=0.x.x)

```ts
if (condition) {
  // code...
}
```

##### Go (version >=0.x.x)

```go
if condition {
    // code...
}
```
