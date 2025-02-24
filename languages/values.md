### Values & Operations

#### Define and/or initiialize as variable value

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

```mojo
# Implicit type
name1 = "John"              # Without a type
var name3 = "John"          # With implicit type

# Explicit type
var name1: String           # Define
var name2: String = "John"  # Define and initialize
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```

#### Define as constant value

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


#### Increment / decrement a numeric value

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.6.x)

```mojo
n += 1
# TODO: check if it does other types like hex too
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```

#### Assign Values

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.6.x)

```mojo
month, year = m, year + 1
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```

#### Operations

TODO: consider breaking into sections

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.6.x)

```mojo
n = 1

# parentehsis expression
n = (n + 1) * 2

# addition, subtraction, multiplication, division, exponent
n = n + 1
n = n - 1
n = n * 3
n = n / 2
n = 3 ** 2

# floor division, round down
n = n // 3

# get value at index and slice
x[index1]
x[startIndex1:endIndex1]
x[index1, index2]

# compare
flag = n == 1
flag = n != 1
flag = n <  1
flag = n <= 1
flag = n > 1
flag = n >= 1

# memerbship
# TODO: check `is` and `is not`
for x in range(10):
    # code...
for x not in range(10):
    # code...
for x is Int:
    # code...
for x is not Int:
    # code...

# get remainder
n = 10 % 3

# logical operators
n = n and 1
n = n or 1
n = not(n)

# assignment expression
# TODO: check what this does
n := 1

# matrix multiplication
# TODO: check usage
z = m @ n

# String concatenation
var c5: String = "Color: " + "blue"
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```

#### Bitwise operations

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.6.x)

```mojo
b = 1

# bitwise - positive, negative, not
b = +b
b = -b
b = ~b

# bitwise shift
b = b << 1
b = b >> 1

# bitwise logic
b = b & 1         # AND
b = b ^ 1         # XOR
b = b | 1         # OR
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```

### TODO

- [Int and UInt values](https://docs.modular.com/mojo/manual/operators#int-and-uint-values)
- [SIMD values](https://docs.modular.com/mojo/manual/operators#simd-values)
- [IntLiteral and FloatLiteral values](https://docs.modular.com/mojo/manual/operators#intliteral-and-floatliteral-values)
- [Comparison operators](https://docs.modular.com/mojo/manual/operators#comparison-operators)
