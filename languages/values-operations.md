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

# increment / decrement
n += 1
n -= 1
n *= 2
n /= 2
n **= 2

# floor division, round down
n = n // 3

# get value at index and slice
x[0]                              # 1st value
x[1]                              # 2nd value
x[-1]                             # Last value
x[0, 0]                           # 1st value in a 2-dimensional list
x[0:5]                            # First 5 values
x[1:6:2]                          # 2nd, 4th, 6th value - stepping increment
x[::-1]                           # All values in reverse order

# compare
flag = n == 1
flag = n != 1
flag = n <  1
flag = n <= 1
flag = n > 1
flag = n >= 1

# memerbship
flag = "hello" in "hello world"
flag = "hello" not in "helo world"

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

# assign value within an expression
if str := input("Enter number"):
  # code...

# matrix multiplication
# TODO: check usage
z = m @ n

# String concatenation
var c1: String = "Color: " + "blue"
var c2: String = String("Color: ", "blue", ".") # More performant when concatenating more than two strings

# String replication
alias divider = "#" * 20
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
