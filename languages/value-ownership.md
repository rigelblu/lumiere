### Value Ownership

##### Mojo

**How it Works:**
- Mojo uses a third approach called "ownership" that relies on a collection of rules that programmers must follow when passing values. The rules ensure there is only one "owner" for a given value at a time. When a value's lifetime ends, Mojo calls its destructor, which is responsible for deallocating any heap memory that needs to be deallocated

#### Define a value as mutable

##### Python (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```py
# Python variables are mutable by default
my_list = [1, 2, 3]  # Lists are mutable by default
my_list[0] = 10      # Modify the first element

# For function parameters, all parameters are mutable by default
def update_list(lst):
    lst.append(4)  # This modifies the original list
```

##### Mojo (version >=0.x.x)

```mojo
def setColor(mut color: String) -> None:
    # code...
```

##### TypeScript (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```ts
// Not built into language

// Objects are mutable by default
let user = { name: "John" };
user.name = "Jane";  // Allowed

// Can use readonly to prevent mutation
interface User {
  readonly name: string;
}
const userReadOnly: User = { name: "John" };
// userReadOnly.name = "Jane";  // Error: Cannot assign to read-only property
```

##### Go (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```go
// Not built into language

// Variables are mutable by default
var name string = "John"
name = "Jane"  // Allowed

// Constants are immutable
const PI = 3.14159
// PI = 3.0  // Compile error
```

#### Define a value as passed by value or by reference

##### Python (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```py
# Python passes references to objects, but the reference itself is passed by value
# Mutable objects can be modified in-place
def modify_list(lst):
    lst.append(4)  # Modifies the original list

# Immutable objects can't be modified
def update_string(s):
    s = s + " world"  # Creates a new local variable, doesn't affect original

my_list = [1, 2, 3]
modify_list(my_list)  # my_list is now [1, 2, 3, 4]

greeting = "hello"
update_string(greeting)  # greeting is still "hello"
```

##### Mojo (version >=0.x.x)

```mojo
# By value
def setPointX(owned x: Int) -> None:
    # code...

# By reference
def setName(read name: String) -> None:
    # code...
```

##### TypeScript (version >=0.x.x)

```ts
// Not built into language

// Primitives are passed by value
// Objects are passed by reference
function modifyObject(obj: { name: string }) {
  obj.name = "Jane";  // Modifies the original object
}

function modifyPrimitive(num: number) {
  num = 42;  // Does not affect the original value
}

const user = { name: "John" };
modifyObject(user);  // user.name is now "Jane"

let x = 10;
modifyPrimitive(x);  // x is still 10
```

##### Go (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```go
// Not built into language

// Go passes everything by value
func modifyValue(x int) {
    x = 42  // Only modifies the local copy
}

// Use pointers for reference semantics
func modifyPointer(x *int) {
    *x = 42  // Modifies the original value
}

x := 10
modifyValue(x)  // x is still 10
modifyPointer(&x)  // x is now 42
```

#### Define a value as ?

##### Python (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```py
class Point:
    def __init__(self, x):
        self.x = x

    # Copy constructor equivalent
    def copy(self):
        return Point(self.x)

    # Alternative using copy module
    import copy
    def deep_copy(self):
        return copy.deepcopy(self)

    def dump(self):
        print(self.x)
```

##### Mojo (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```mojo
struct Point:
    var x: Int

    fn __init__(out self, x: Int):
        self.x = x

    fn __copyinit__(out self, existing other):
        self.x = existing.first

    def dump(self):
        print(self.first, self.second)
```

##### TypeScript (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```ts
// Not built into language

class Point {
    x: number;

    constructor(x: number) {
        this.x = x;
    }

    // Copy method
    copy(): Point {
        return new Point(this.x);
    }

    dump(): void {
        console.log(this.x);
    }
}
```
##### Go (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```go
// Not built into language

type Point struct {
    X int
}

// Factory function (constructor equivalent)
func NewPoint(x int) Point {
    return Point{X: x}
}

// Copy method
func (p Point) Copy() Point {
    return Point{X: p.X}
}

// Dump method
func (p Point) Dump() {
    fmt.Println(p.X)
}
```

### TODO

- UnsafePointer
