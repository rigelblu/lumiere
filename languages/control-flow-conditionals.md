### Control Flow / Conditionals

**Constraints:**
- Mojo doesn't support the equivalent of a Python match or C switch statement for pattern matching and conditional execution
**How it works:**
- Mojo follows short-circuit evaluation semantics for boolean operators. If the first argument to an or operator evaluates to True, the second argument is not evaluated.

#### Execute block if condition is true

##### Python (version >=x.x.x)

```py
# TODO:
```

##### Mojo (version >=x.x.x)

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

##### TypeScript (version >=x.x.x)

```ts
// TODO:
```

##### Go (version >=x.x.x)

```go
// TODO:
```

#### Execute inline statement if condition is true

##### Python (version >=x.x.x)

```py
# TODO:
```

##### Mojo (version >=x.x.x)

```mojo
if year < 2021: # code...skipped when condition is False
if year >= 2026: # code...skipped when condition is False
if year == 2025: # code...skipped when condition is False
if year != 2025: # code...skipped when condition is False
# TODO: add negation example
```

##### TypeScript (version >=x.x.x)

```ts
// TODO:
```

##### Go (version >=x.x.x)

```go
// TODO:
```


#### Execute if either or both conditions are true

##### Python (version >=x.x.x)

```py
# TODO:
```

##### Mojo (version >=x.x.x)

```mojo
# Either conditions
if true_func() or false_func():
    print("True result")

# Both conditions
if false_func() and true_func():
    print("True result")
```

##### TypeScript (version >=x.x.x)

```ts
// TODO:
```

##### Go (version >=x.x.x)

```go
// TODO:
```

#### Assign value to variable if condition is true

##### Python (version >=x.x.x)

```py
# TODO:
```

##### Mojo (version >=x.x.x)

```mojo
time = "future" if year > 2020 else "past"
```

##### TypeScript (version >=x.x.x)

```ts
// TODO:
```

##### Go (version >=x.x.x)

```go
// TODO:
```

#### Ternary conditionals

##### Python (version >=x.x.x)

```py
# TODO:
```

##### Mojo (version >=x.x.x)

```mojo
year = 2025
label = "current" if year == 20250 else "past or future"
```

##### TypeScript (version >=x.x.x)

```ts
// TODO:
```

##### Go (version >=x.x.x)

```go
// TODO:
```
