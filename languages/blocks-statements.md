### Blocks & Statements

#### Define a group of statements (i.e. code block) to be executed together

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "human" }
```

**How to use:**
- Ident using any number of spaces or tabs
- Use same indentation for the entire code block

**Examples:**
```py
if condition:
    # code block...

# code block ...
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**How to use:**
- Ident code block using any number of spaces or tabs
- Use same indentation for the entire code block

**Examples:**
```mojo
if condition:
    # code block...

# code block ...
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- Put code block inside curly braces `{` `}

**Convetions:**
- Indent using tabs spaces or tabs

**Examples:**
```ts
if (condition) {
  // code block...
}
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- Put code block inside curly braces `{` `}

**Convetions:**
- Indent using tabs spaces or tabs

**Examples:**
```go
if condition {
    // code block...
}
```
