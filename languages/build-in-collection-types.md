### Built-in Collection Types

- **Mojo:** List and Dict can store any type that conforms to the CollectionElement trait

#### Define a string

- **Traits:**
  - Stringable - cannot raise an error
  - StringableRaising - can raise an error
  - Signature: `__str__() -> String`

##### Python (version >=3.6.0)

TODO: LLM Generated, TODO: verify code

```py
# Implicit string
c1 = "blue"
# Implicit string literals
c2 = "Sentence" \
     "Continued."
c3 = """
     Sentence
     Continued."""
# Explicit string
c4: str = "yellow"
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
```

##### TypeScript (version >=4.0.0)

TODO: LLM Generated, TODO: verify code

```ts
// Implicit string
let c1 = "blue";

// Implicit string literals
let c2 = "Sentence" +
         "Continued.";
let c3 = `
     Sentence
     Continued.`;

// Explicit string
let c4: string = "yellow";
```

##### Go (version >=1.16.0)

TODO: LLM Generated, TODO: verify code

```go
// Implicit string
c1 := "blue"

// Implicit string literals
c2 := "Sentence" +
       "Continued."
c3 := `
     Sentence
     Continued.`

// Explicit string
var c4 string = "yellow"
```

#### Define a list (array) of values

##### Python (version >=3.6.0)

TODO: LLM Generated, TODO: verify code

```py
# Implicit
l1 = [1, 2, 3, 4]
# Explicit
l2: list[int] = [1, 2, 3, 4]
l3: list[str] = []         # Empty list
g1 = [
    [11, 22],
    [33, 44]
]

# Iteration by value
list = [2, 3, 4]
for item in list:
    print(item, end=", ")

# Iteration by index
list = [2, 3, 4]
for i in range(len(list)):
    print(list[i], end=", ")
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

##### TypeScript (version >=4.0.0)

TODO: LLM Generated, TODO: verify code

```ts
// Implicit
let l1 = [1, 2, 3, 4];

// Explicit
let l2: number[] = [1, 2, 3, 4];
let l3: string[] = [];         // Empty list
let g1 = [
    [11, 22],
    [33, 44]
];

// Iteration by value
let list = [2, 3, 4];
for (const item of list) {
    console.log(item + ", ");
}

// Iteration by index
let list2 = [2, 3, 4];
for (let i = 0; i < list2.length; i++) {
    console.log(list2[i] + ", ");
}
```

##### Go (version >=1.16.0)

TODO: LLM Generated, TODO: verify code

```go
// Implicit
l1 := []int{1, 2, 3, 4}

// Explicit
var l2 = []int{1, 2, 3, 4}
var l3 []string = []string{}         // Empty list
g1 := [][]int{
    {11, 22},
    {33, 44},
}

// Iteration by value
list := []int{2, 3, 4}
for _, item := range list {
    fmt.Print(item, ", ")
}

// Iteration by index
list2 := []int{2, 3, 4}
for i := 0; i < len(list2); i++ {
    fmt.Print(list2[i], ", ")
}
```

#### Operations on a list (array) of values

##### Python (version >=3.6.0)

TODO: LLM Generated, TODO: verify code
```py
l2 = [1, 2, 3, 4]
g1 = [
    [11, 22],
    [33, 44]
]

# Valid operations on list
print(l2[0])    # Get first item in the list
print(g1[0][0]) # Get first item, in the first list (ie. row 0, column 0)
print(l2[-1])   # Get last item in the list
print(len(l2))  # Get the length of the list
l2.pop()        # Remove the last element from the list
l2.append(5)    # Append an element to the list

# Invalid operations on list
# l2.append(3.14) # Error: Float can be added to int list in Python (dynamic typing)
print(l2)
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

##### TypeScript (version >=4.0.0)

TODO: LLM Generated, TODO: verify code

```ts
let l2: number[] = [1, 2, 3, 4];
let g1 = [
    [11, 22],
    [33, 44]
];

// Valid operations on list
console.log(l2[0]);    // Get first item in the list
console.log(g1[0][0]); // Get first item, in the first list (ie. row 0, column 0)
console.log(l2[l2.length - 1]);   // Get last item in the list
console.log(l2.length);  // Get the length of the list
l2.pop();        // Remove the last element from the list
l2.push(5);    // Append an element to the list

// Invalid operations on list
// l2.push("string"); // Error: Argument of type 'string' is not assignable to parameter of type 'number'
console.log(l2);
```

##### Go (version >=1.16.0)

TODO: LLM Generated, verify code

```go
l2 := []int{1, 2, 3, 4}
g1 := [][]int{
    {11, 22},
    {33, 44},
}

// Valid operations on list
fmt.Println(l2[0])    // Get first item in the list
fmt.Println(g1[0][0]) // Get first item, in the first list (ie. row 0, column 0)
fmt.Println(l2[len(l2)-1])   // Get last item in the list (no negative indexing)
fmt.Println(len(l2))  // Get the length of the list
l2 = l2[:len(l2)-1]   // Remove the last element from the list
l2 = append(l2, 5)    // Append an element to the list

// Invalid operations on list
// l2 = append(l2, 3.14) // Error: constant 3.14 truncated to integer
fmt.Println(l2)
```

#### Define a dictionary

##### Python (version >=3.6.0)

TODO: LLM Generated, verify code

```py
# Explicit
values: dict[str, float] = {}


# Dictionary operations
d = {"pi2": 3.1, "pi3": 3.14, "pi4": 3.141}

# Iteration
for key, value in d.items():
    print(key, value)
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

##### TypeScript (version >=4.0.0)

TODO: LLM Generated, verify code

```ts
// Explicit
let values: Record<string, number> = {};

// Dictionary operations (using objects or Map)
let d: {[key: string]: number} = {"pi2": 3.1, "pi3": 3.14, "pi4": 3.141};

// Iteration
for (const [key, value] of Object.entries(d)) {
  console.log(key, value);
}
```

##### Go (version >=1.16.0)

TODO: LLM Generated, verify code

```go
// Explicit
values := make(map[string]float64)

// Dictionary operations
d := map[string]float64{
    "pi2": 3.1,
    "pi3": 3.14,
    "pi4": 3.141,
}

// Iteration
for key, value := range d {
    fmt.Println(key, value)
}
```

#### Define a tuple

Tuples are immutable and can hold multiple types

##### Python (version >=3.9.0)

TODO: LLM Generated, verify code

```py
# Explicit tuple
date = (2025, "February", 22)

# Type annotated tuple
date_typed: tuple[int, str, int] = (2025, "February", 22)

# Assign to values
year, month, day = date

# Get values at index
day = date[2]
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

##### TypeScript (version >=4.0.0)

TODO: LLM Generated, verify code

```ts
// Explicit tuple
let date: [number, string, number] = [2025, "February", 22];

// Assign to values
let [year, month, day] = date;

// Get values at index
day = date[2];
```

##### Go (version >=1.16.0)

TODO: LLM Generated, verify code

```go
// Go doesn't have built-in tuples, but can use struct
type Date struct {
    Year  int
    Month string
    Day   int
}

// Create struct (similar to tuple)
date := Date{2025, "February", 22}

// Assign to values
year := date.Year
month := date.Month

// Get values by field name
day := date.Day

```

#### Define a set

##### Python (version >=3.6.0)

TODO: LLM Generated, verify code

```py
colors = {"blue", "yellow"}
primary = {"red", "blue", "green"}
c1 = colors.intersection(primary)
for color in c1:
    print("-", color)
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

##### TypeScript (version >=4.0.0)

TODO: LLM Generated, verify code

```ts
// Using Set in TypeScript
const colors = new Set<string>(["blue", "yellow"]);
const primary = new Set<string>(["red", "blue", "green"]);
const c1 = new Set<string>(
    [...colors].filter(color => primary.has(color))
);

for (const color of c1) {
    console.log("-", color);
}
```

##### Go (version >=1.16.0)

TODO: LLM Generated, verify code
```go
// Using maps to implement sets
colors := map[string]bool{"blue": true, "yellow": true}
primary := map[string]bool{"red": true, "blue": true, "green": true}

// Intersection
c1 := make(map[string]bool)
for color := range colors {
    if primary[color] {
        c1[color] = true
    }
}

// Iterate through the set
for color := range c1 {
    fmt.Println("-", color)
}
```

#### Define as optional or none value

##### Python (version >=3.10.0)

TODO: LLM Generated, verify code

```py
from typing import Optional

# Initialize optional with value
c1: Optional[str] = "blue"
c2: Optional[str] = "blue"

# Initialize optional with no value
c3: Optional[str] = None
c4: Optional[str] = None

c5: Optional[str] = str("blue")
if c5:
    # code...

def color() -> None:
    # code...
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

##### TypeScript (version >=4.0.0)

TODO: LLM Generated, verify code

```ts
// Initialize optional with value
let c1: string | null = "blue";
let c2: string | undefined = "blue";

// Initialize optional with no value
let c3: string | null = null;
let c4: string | undefined = undefined;

let c5: string | null = String("blue");
if (c5) {
    // code...
}

function color(): void {
    // code...
}
```

##### Go (version >=1.16.0)

TODO: LLM Generated, verify code

```go
// Initialize with value

// Go doesn't have built-in optionals, use pointers instead
c1 := "blue"                           // Regular string
var c2 *string = new(string)           // Pointer to string
*c2 = "blue"                           // Set value

// Initialize with no value
var c3 *string                         // nil pointer to string
var c4 *string = nil                   // Explicit nil pointer
c5 := new(string)                      // Allocated pointer

*c5 = "blue"                           // Set value
if c5 != nil {
    // code...
}

func color() {
    // code...
}
```
