### Value Ownership

##### Mojo

**How it Works:**
- Mojo uses a third approach called "ownership" that relies on a collection of rules that programmers must follow when passing values. The rules ensure there is only one "owner" for a given value at a time. When a value's lifetime ends, Mojo calls its destructor, which is responsible for deallocating any heap memory that needs to be deallocated

**Definitions:**
- *Value Semantics (Pass by Value):* you create a copy of the value
- *Reference Semantics (Pass by Reference):* you pass a reference to the value
- *Ownership Semantics (Pass by Ownership):* you transfer ownership of the value to the receiver
- *Argument conventions:* specifies whether an argument is mutable or immutable, whether the function owns the value, and ensures every value has only one owner at a time. Each convention is defined by a keyword at the beginning of an argument declaration:
  - `read`: The function receives an immutable reference. This means the function can read the original value (it is not a copy), but it cannot mutate (modify) it. In a def function, if you mutate the value in the body of the function, the function receives a mutable copy of the argument. Otherwise, it receives an immutable reference. In a fn function, if you want a mutable copy, you can assign it to a local variable.
  - `mut`: The function receives a mutable reference. This means the function can read and mutate the original value (it is not a copy).
  - `owned`: The function takes ownership of a value. This means the function has exclusive ownership of the argument. The caller might choose to transfer ownership of an existing value to this function, but that's not always what happens. The callee might receive a newly-created value, or a copy of an existing value. Owned keyword does not guarantee that the received value is the original value—it guarantees only that the function gets unique ownership of a value. Regardless of how it receives the value, when the function declares an argument as owned, it can be certain that it has unique mutable access to that value. Because the value is owned, the value is destroyed when the function exits—unless the function transfers the value elsewhere.
  - `ref`: The function gets a reference with an parametric mutability: that is, the reference can be either mutable or immutable. You can think of ref arguments as a generalization of the read and mut conventions.
  - `out`: A special convention used for the self argument in constructors and for named results. An out argument is uninitialized at the beginning of the function, and must be initialized before the function returns. Although out arguments show up in the argument list, they're never passed in by the caller.

**Conventions:**
- Passing an immutable reference is much more efficient when handling large or expensive-to-copy values, because the copy constructor and destructor are not invoked for a read argument

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

##### Rust (version >=0.x.x)

```rust
// TODO:
```

##### C++ (version >=0.x.x)

```cpp
// TODO:
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

##### Rust (version >=0.x.x)

```rust
// TODO:
```

##### C++ (version >=0.x.x)

```cpp
// TODO:
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

##### Rust (version >=0.x.x)

```rust
// TODO:
```

##### C++ (version >=0.x.x)

```cpp
// TODO:
```

#### Assign / pass by value (value semantics)

##### Python (version >=0.x.x)

**What it does:**
- When you call a Python function and pass an object with a pointer to a heap-allocated value. Python actually gives that function a reference to your object, which allows the function to mutate the heap-allocated value

```py
# TODO:
```

##### Mojo (version >=0.x.x)

**What it does**
- All function arguments use value semantics by default
- Types passed to a def function are treated as mutable. But it mutates a uniquely-owned value, not the original value
- Def function arguments are by default treated as `read`
- The way the fn function receives the y value is a "look but don't touch" approach to value semantics. This is also a more memory-efficient approach when dealing with memory-intensive arguments, because Mojo doesn't make any copies unless we explicitly make the copies ourselves
- Thus, the default behavior for def and fn arguments is fully value semantic: arguments are either copies or immutable references, and any living variable from the callee is not affected by the function

```mojo
# Pass by value / Value Semantics
# Example 1
x = 1                                         # x = 1
y = x                                         # y = 1, x = 1
y += 1                                        # y = 2, x = 1

# Example 2
a = 1                                         # a = 1
add_one(a)                                    # a = 1

def add_one(b: Int):                          # b = a, a = 1
    b += 1                                    # b = 2, a = 1

# Example 3
v = SIMD[DType.int32, 2](1, 2)                # v = [1 ,2]
update_simd(v)                                # v = [1 ,2]

def update_simd(t: SIMD[DType.int32, 2]):     # t = v,      v = [1, 2]
    t[0] = 9                                  # t = [9, 2], v = [1, 2]

# Example 4
c = 1                                         # c = 1
add_two(c)                                    # c = 1

fn add_two(d: Int):                           # d = c
    # d += 2                                  # Would be a compiler error
    var e = d                                 # e = 1, creates a copy of d
    e += 2
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```

##### Rust (version >=0.x.x)

```rust
// TODO:
```

##### C++ (version >=0.x.x)

```cpp
// TODO:
```

#### Assign / pass by referece and allow mutating (reference semantics)

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

**What it does:**
- Every value has only one owner at a time
- When the lifetime of the owner ends, Mojo destroys the value
- If there are existing references to a value, Mojo extends the lifetime of the owner
- Mojo references are created when you call a function: function arguments can be passed as mutable or immutable references. A function can also return a reference instead of returning a value.

**Defintiions:**
- A variable owns its value. A struct owns its fields
- A reference allows you to access a value owned by another variable. A reference can have either mutable access or immutable access to that value

**Constraints:**
- A mutable argument cannot define default value
- A mutable reference must be exclusive. It can't have any other references that alias it

```mojo
# Example 1
fn main():
    var a = 1                           # a = 1
    var b = 2                           # b = 2
    add(a, b)                           # a = 3, b = 2

fn add(mut x: Int, read y: Int):        # x = a, y = b, a = 1, b = 2
    x += y                              # x = a, y = b, a = 3, b = 2

# Example 2
var list = List(1, 2)                   # list = [1, 2]
mutate(list)                            # list = [1, 2, 5]

def mutate(mut l: List[Int]):           # l = list, list = [1, 2]
    l.append(5)                         # l = list, list = [1, 2, 5]


# Example 3
fn append_twice(mut s: String, other: String):
   s += other
   s += other

fn invalid_access():
  var my_string = String("o")

  append_twice(my_string, my_string)    # error: passing `my_string` mut is invalid since it is also passed read.
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```

##### Rust (version >=0.x.x)

```rust
// TODO:
```

##### C++ (version >=0.x.x)

```cpp
// TODO:
```

#### Assign / pass by referece, allowing mutating, and transfer ownership (reference semantics)

**What it does:**
- When function argument has `^` "transfer" sigil, it transfers ownership into that function and ends the lifetime of that variable
- When function argument does not have `^` "transfer" sigil, it copy the value. If it's not copiable, you get a compilter error
- When a functio argument receives a newly-created "owned" value (i.e. returned from a function), no variable owns the value and it's transferred directly to the callee
- When a value's lifetime ends, it becomes uninitialized
- A def argument without a type annotation defaults to object type (whereas as fn requires all types be explicitly declared).
- A def function can treat a read argument as mutable (in which case it receives a mutable copy). An fn function must make this copy explicitly.
- The read argument always gets an immutable reference or a local copy. You can't transfer a value into a read argument.
- The owned argument always gets a uniquely owned value, which may have been copied or transferred from the callee. Using owned arguments without the transfer sigil (^) usually results in values being copied.

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

```mojo
# Example: don't transfer ownership
my_function1()

fn my_function1():
    var message: String = "Hello"           # message = "Hello"
    take_text1(message)                     # message = "Hello"

fn take_text1(owned text: String):          # text = "Hello"
    text += "!"                             # text = "Hello!"

# Example: transfer ownership
my_function2()

fn my_function2():
    var message: String = "Hello"           # message = "Hello"
    take_text2(message^)                    # message = <uninitialized>

fn take_text2(owned text: String):          # text = "Hello"
    text += "!"                             # text = "Hello!"
    # text value/memory is destroyed here

# Example: transfer ownership of newly created value
def take(owned s: String):
    pass

take(String("A brand-new String!"))

# Example: def vs fn
def def_example(a: Int, mut b: Int, owned c):
    pass

fn fn_example(a_in: Int, mut b: Int, owned c: object):
    var a = a_in
    pass
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

- UnsafePointer
