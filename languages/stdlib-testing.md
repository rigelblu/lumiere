### Standard Library - Testing

REFACTOR: move into separate files inside a standard-library directory

#### Assert a value equals an expected value

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```py
# TODO:
```

##### Mojo

**How to use:**
- prefix method with `test_`
- `assert_true()`: assert that the input value is True
- `assert_false()`: assert that the input value is False
- `assert_equal()`: assert that the input values are equal
- `assert_not_equal()`: assert that the input values are not equal
- `assert_almost_equal()`: assert that the input values are equal up to a tolerance
- Define test source files named with a test prefix or suffix
- Organize test files within a directory hierarchy, but the test files must not be part of a Mojo package (that is, the test directories should not contain `__init__.mojo` files).
  ```
  .
  ├── src
  │   ├── example.mojo
  │   └── my_math
  │       ├── __init__.mojo
  │       └── utils.mojo
  └── test
      └── my_math
          ├── test_dec.mojo
          └── test_inc.mojo
  ```

**Conventions:**
- Usually the target should be in a separate source file from its tests, but you can define them in the same file for this simple example

**How it works:**
- Print error message when assertion fails
  ```
  Unhandled exception caught during execution
  Error: At Expression [1] wrapper:14:16: AssertionError: condition was unexpectedly False
  ```

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```mojo
from testing import assert_equal

def inc(n: Int) -> Int:
    return n + 1

def test_inc_zero():
    assert_equal(inc(0), 0)
    assert_true(False, msg="paradoxes are not allowed")

result = 10 / 3
assert_almost_equal(result, 3.33, atol=0.001, msg="close but no cigar")
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```ts
// TODO:
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// TODO:
```

#### Assert a code block raises an expected error

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```py
# TODO:
```

##### Mojo

  ```

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```mojo
def inc(n: Int) -> Int:
    if n == Int.MAX:
         raise Error("inc overflow")
    return n + 1

print("Test passes because the error is raised")
with assert_raises():
    _ = inc(Int.MAX)

print("Test fails because the error isn't raised")
with assert_raises():
    _ = inc(Int.MIN)

print("Test passes because the error contains the substring")
with assert_raises(contains="required"):
    raise Error("missing required argument")

print("Test fails because the error doesn't contain the substring")
with assert_raises(contains="required"):
    raise Error("invalid value")
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```ts
// TODO:
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// TODO:
```

### See also

- [Run tests](./tooling#run-tests)
