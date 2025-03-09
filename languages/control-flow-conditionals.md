### Control Flow / Conditionals

##### Mojo

**Constraints:**
- Mojo doesn't support the equivalent of a Python match or C switch statement for pattern matching and conditional execution

**How it works:**
- Mojo follows short-circuit evaluation semantics for boolean operators. If the first argument to an or operator evaluates to True, the second argument is not evaluated.

#### Execute block if condition is true

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```py
year = 2025

if year > 2025:
    # code...

if year <= 2025:
    # code...
elif year == 2025:
    # code...
else:
    # code...
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**How to use:**
- TODO:

**Examples:**
```mojo
year = 2025

if year > 2025:
    # code...

if year <= 2025:
    # code...
elif year == 2025:
    # code...
else:
    # code...
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```ts
const year = 2025;

if (year > 2025) {
    // code...
}

if (year <= 2025) {
    // code...
} else if (year === 2025) {
    // code...
} else {
    // code...
}
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```go
year := 2025

if year > 2025 {
    // code...
}

if year <= 2025 {
    // code...
} else if year == 2025 {
    // code...
} else {
    // code...
}
```

#### Execute inline statement if condition is true

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```py
if year < 2021: print("Past")  # Inline code
if year >= 2026: print("Future")  # Inline code
if year == 2025: print("Present")  # Inline code
if year != 2025: print("Not present")  # Inline code
if not (year == 2025): print("Not present")  # Negation example
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**How to use:**
- TODO:

**Examples:**
```mojo
if year < 2021: # code...skipped when condition is False
if year >= 2026: # code...skipped when condition is False
if year == 2025: # code...skipped when condition is False
if year != 2025: # code...skipped when condition is False
# TODO: add negation example
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```ts
if (year < 2021) console.log("Past");  // Inline code
if (year >= 2026) console.log("Future");  // Inline code
if (year === 2025) console.log("Present");  // Inline code
if (year !== 2025) console.log("Not present");  // Inline code
if (!(year === 2025)) console.log("Not present");  // Negation example
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```go
if year < 2021 { fmt.Println("Past") }  // Inline code
if year >= 2026 { fmt.Println("Future") }  // Inline code
if year == 2025 { fmt.Println("Present") }  // Inline code
if year != 2025 { fmt.Println("Not present") }  // Inline code
if !(year == 2025) { fmt.Println("Not present") }  // Negation example
```

#### Execute if either or both conditions are true

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```py
# Either conditions
if true_func() or false_func():
    print("True result")

# Both conditions
if false_func() and true_func():
    print("True result")
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**How to use:**
- TODO:

**Examples:**
```mojo
# Either conditions
if true_func() or false_func():
    print("True result")

# Both conditions
if false_func() and true_func():
    print("True result")
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```ts
// Either conditions
if (trueFunc() || falseFunc()) {
    console.log("True result");
}

// Both conditions
if (falseFunc() && trueFunc()) {
    console.log("True result");
}
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```go
// Either conditions
if trueFunc() || falseFunc() {
    fmt.Println("True result")
}

// Both conditions
if falseFunc() && trueFunc() {
    fmt.Println("True result")
}
```

#### Assign value to variable if condition is true

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```py
time = "future" if year > 2020 else "past"
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**How to use:**
- TODO:

**Examples:**
```mojo
time = "future" if year > 2020 else "past"
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```ts
const time = year > 2020 ? "future" : "past";
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```go
var time string
if year > 2020 {
    time = "future"
} else {
    time = "past"
}

// Alternative using an immediately-invoked function
time := func() string {
    if year > 2020 {
        return "future"
    }
    return "past"
}()
```

#### Ternary conditionals

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```py
year = 2025
label = "current" if year == 2025 else "past or future"
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**How to use:**
- TODO:

**Examples:**
```mojo
year = 2025
label = "current" if year == 20250 else "past or future"
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```ts
const year = 2025;
const label = year === 2025 ? "current" : "past or future";
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```go
year := 2025
label := func() string {
    if year == 2025 {
        return "current"
    }
    return "past or future"
}()
```
