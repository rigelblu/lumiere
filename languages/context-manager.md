### Context Manager

#### Work with resource in a block

**What it does:**
- Ensures that resources it manages are properly release

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

```mojo
with open(input_file, "r") as f:
    content = f.read()

with open(input_file, "r") as f_in, open(output_file, "w") as f_out:
    input_text = f_in.read()
    output_text = input_text.upper()
    f_out.write(output_text)
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```
