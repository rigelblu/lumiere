### Built-in Collection Types

#### Define a string
- **Traits:**
  - Stringable - cannot raise an error
  - StringableRaising - can raise an error
  - Signature: `__str__() -> String`

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.6.x)

```mojo
# Implicit string
c1 = "blue"

# Implicit string literals
c2 = "Sentence"
     "Continued."
c3 = """
     Sentence
     Continued."""

# Explicit string
var c4: String = "yellow"
var c5: String = "Color: " + c1
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```

#### Define a list (array) of values

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.6.x)

```mojo
# Implicit
var l1 = List(1, 2, 3, 4)

# Explicit
var l2 = List[Int](1, 2, 3, 4)
var l3 = List[String]()         # Empty list
var g1 = List(
    List(11, 22),
    List(33, 44)
)

#: from collections import List
var list = List(2, 3, 4)
for item in list:
      print(item[], end=", ")

#: from collections import List
#: var list = List[Int](2, 3, 4)
for i in range(len(list)):
    print(list[i], end=", ")
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```

#### Operations on a list (array) of values

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.6.x)

```mojo
var l2 = List[Int](1, 2, 3, 4)
var g1 = List(
    List(11, 22),
    List(33, 44)
)

# Valid operations on list
print(l1[0])    # Get first item in the list
print(g1[0][0]) # Get first item, in the first list (ie. row 0, column 0)
print(l1[-1])   # Get last item in the list
print(len(l2))  # Get the length of the list
l2.pop()        # Remove the last element from the list
l2.append(5)    # Append an element to the list

# Invalid operations on list
l2.append(3.14) # Error: Float cannot be converted to Int
print(list)
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```

#### Define a dictionary

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.6.x)

```mojo
# Explicit
var values = Dict[String, Float64]()

# ./file1.mojo
from collections import Dict

var d = Dict[String, Float64]()
d["pi2"] = 3.1
d["pi3"] = 3.14
d["pi4"] = 3.141
for item in d.items():
  print(item[].key, item[].value)
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.6.x)

```go
// TODO:
```

#### Define a tuple

Tuples are immutable and can hold multiple types

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.6.x)

```mojo
# Explicit tuple
date = Tuple[Int, String, Int](2025, "February", 22)

# Assign to values
year, month = date

# Get values at index
day = date[2]
```

##### TypeScript (version >=0.x.x)

```ts

```

##### Go (version >=0.x.x)

```go
// TODO:
```

#### Define a set

##### Python (version >=x.x.x)

```py
# TODO:
```

##### Mojo (version >=0.6.x)

```mojo
from collections import Set

colors = Set("blue", "yellow")
primary = Set("red", "blue", "green")
c1 = colors.intersection(primary)

for color in c1:
    print("-", color[])
```

##### TypeScript (version >=x.x.x)

```ts
// TODO:
```

##### Go (version >=x.x.x)

```go
// TODO:
```

#### Define as optional or none value

##### Python (version >=x.x.x)

```py
# TODO:
```

##### Mojo (version >=0.6.x)

```mojo
# Initialize optional with value
var c1 = Optional("blue")
var c2: Optional[String] = "blue"

# Initialize optional with no value
var c3 = Optional[String]()
var c4: Optional[String] = None

var c5: Optional[String] = String("blue")
if c5:
    # code...

def color() -> None:
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
