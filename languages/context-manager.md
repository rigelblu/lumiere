### Context Manager

#### Work with resource in a block

**What it does:**
- Ensures that resources it manages are properly release

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
with open(input_file, "r") as f:
    content = f.read()

with open(input_file, "r") as f_in, open(output_file, "w") as f_out:
    input_text = f_in.read()
    output_text = input_text.upper()
    f_out.write(output_text)
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
