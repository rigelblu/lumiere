### Value Ownership

##### Mojo

```json
metadata {
  "language": "mojo",
  "language_version":">=0.6.x",
  "code_role": "anchor",
  "code_author": "human"
}
```

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

##### Python

```json
metadata {
  "language": "python",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

```py
# Python variables are mutable by default
my_list = [1, 2, 3]  # Lists are mutable by default
my_list[0] = 10      # Modify the first element

# For function parameters, all parameters are mutable by default
def update_list(lst):
    lst.append(4)  # This modifies the original list
```

##### Mojo

```json
metadata {
  "language": "mojo",
  "language_version":">=0.6.x",
  "code_role": "anchor",
  "code_author": "human"
}
```

```mojo
def setColor(mut color: String) -> None:
    # code...
```

##### TypeScript

```json
metadata {
  "language": "typescript",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

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

##### Go

```json
metadata {
  "language": "go",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

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
// Variables are immutable by default in Rust
let name = "John"; // Immutable variable
// name = "Jane"; // Error: cannot assign twice to immutable variable

// Use the `mut` keyword to make a variable mutable
let mut count = 0; // Mutable variable
count += 1; // This is allowed

// Function parameters can also be declared as mutable
fn increment(mut number: i32) {
    number += 1; // Modifies the local copy
}
```

##### C++ (version >=0.x.x)

```cpp
// Variables are mutable by default
int count = 0;
count = 1; // Allowed

// Use const to make variables immutable
const double PI = 3.14159;
// PI = 3.0; // Error: cannot modify const variable

// For function parameters:
void updateValue(int value) {
    value = 42; // Modifies the local copy
}

// Using references for mutation
void updateValueByRef(int& value) {
    value = 42; // Modifies the original value
}
```

#### Define a value as passed by value or by reference

##### Python

```json
metadata {
  "language": "python",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

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

##### Mojo

```json
metadata {
  "language": "mojo",
  "language_version":">=0.6.x",
  "code_role": "anchor",
  "code_author": "human"
}
```

```mojo
# By value
def setPointX(owned x: Int) -> None:
    # code...

# By reference
def setName(read name: String) -> None:
    # code...
```

##### TypeScript

```json
metadata {
  "language": "typescript",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

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

##### Go

```json
metadata {
  "language": "go",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

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
// By value (ownership is transferred)
fn set_point_x(x: i32) {
    // x is owned by this function
}

// By reference (borrowing)
fn get_name(name: &String) -> usize {
    name.len() // Returns length of the string
}

// By mutable reference
fn update_name(name: &mut String) {
    name.push_str(" Smith"); // Modifies the original
}

fn main() {
    let x = 5;
    set_point_x(x); // x is still usable here because i32 implements Copy

    let name = String::from("John");
    let len = get_name(&name); // Immutable borrow

    let mut full_name = String::from("Jane");
    update_name(&mut full_name); // Mutable borrow
}
```

##### C++ (version >=0.x.x)

```cpp
// By value (creates a copy)
void setPointX(int x) {
    x = 10; // Modifies the local copy only
}

// By reference (can modify original)
void setName(std::string& name) {
    name += " Smith"; // Modifies the original
}

// By const reference (cannot modify)
void printName(const std::string& name) {
    std::cout << name << std::endl;
    // name = "Bob"; // Error: cannot modify const reference
}

// By pointer
void updateValue(int* ptr) {
    if (ptr) {
        *ptr = 42; // Modifies the original value
    }
}
```

#### Define a value as ?

##### Python

```json
metadata {
  "language": "python",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

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

##### Mojo

```json
metadata {
  "language": "mojo",
  "language_version":">=0.6.x",
  "code_role": "anchor",
  "code_author": "human"
}
```



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

##### TypeScript

```json
metadata {
  "language": "typescript",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

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

##### Go

```json
metadata {
  "language": "go",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

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
struct Point {
    x: i32,
}

impl Point {
    // Constructor
    fn new(x: i32) -> Self {
        Point { x }
    }

    // Clone implementation (explicit copying)
    fn clone(&self) -> Self {
        Point { x: self.x }
    }

    // Dump method
    fn dump(&self) {
        println!("{}", self.x);
    }
}

// Derive automatic implementation of Clone and Debug traits
#[derive(Clone, Debug)]
struct AutoPoint {
    x: i32,
}
```

##### C++ (version >=0.x.x)

```cpp
class Point {
private:
    int x;

public:
    // Constructor
    Point(int x) : x(x) {}

    // Copy constructor
    Point(const Point& other) : x(other.x) {
        std::cout << "Copy constructor called" << std::endl;
    }

    // Copy assignment operator
    Point& operator=(const Point& other) {
        if (this != &other) {
            x = other.x;
        }
        return *this;
    }

    void dump() const {
        std::cout << x << std::endl;
    }
};
```

#### Assign / pass by value (value semantics)

##### Python

```json
metadata {
  "language": "python",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

**What it does:**
- When you call a Python function and pass an object with a pointer to a heap-allocated value. Python actually gives that function a reference to your object, which allows the function to mutate the heap-allocated value

```py
# Python's value semantics for immutable types
def add_one(num):
    num = num + 1  # Creates a new object, doesn't modify original
    return num

# Example 1
x = 1                # x = 1
y = x                # y = 1, x = 1
y += 1               # y = 2, x = 1

# Example 2
a = 1                # a = 1
result = add_one(a)  # result = 2, a = 1

# Example 3 (with custom class)
class Vector:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def __repr__(self):
        return f"Vector({self.x}, {self.y})"

def update_vector(vec):
    vec = Vector(9, vec.y)  # Creates a new Vector
    return vec
```

##### Mojo

```json
metadata {
  "language": "mojo",
  "language_version":">=0.6.x",
  "code_role": "anchor",
  "code_author": "human"
}
```

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

##### TypeScript

```json
metadata {
  "language": "typescript",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

```ts
// Example 1: Value semantics with primitive types
let x = 1;                 // x = 1
let y = x;                 // y = 1, x = 1
y += 1;                    // y = 2, x = 1

// Example 2: Function with primitive types
function addOne(num: number): number {
    return num + 1;        // Creates a new value
}

const a = 1;               // a = 1
const result = addOne(a);  // result = 2, a = 1

// Example 3: Value semantics with objects requires explicit copying
interface Point {
    x: number;
    y: number;
}

function updatePoint(point: Point): Point {
    // Create a new object to avoid modifying the original
    return { ...point, x: 9 };
}
```

##### Go

```json
metadata {
  "language": "go",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

```go
// Example 1: Value semantics with basic types
func main() {
    x := 1              // x = 1
    y := x              // y = 1, x = 1
    y += 1              // y = 2, x = 1

    // Example 2: Function with value semantics
    a := 1              // a = 1
    result := addOne(a) // result = 2, a = 1

    // Example 3: Structs use value semantics by default
    v := Point{1, 2}    // v = {1, 2}
    newV := updatePoint(v) // newV = {9, 2}, v = {1, 2}
}

func addOne(num int) int {
    return num + 1      // Creates a new value
}

type Point struct {
    X int
    Y int
}

func updatePoint(p Point) Point {
    newP := p           // Creates a copy
    newP.X = 9
    return newP
}
```

##### Rust (version >=0.x.x)

```rust
// Example 1: Value semantics with Copy types
fn main() {
    let x = 1;            // x = 1
    let y = x;            // y = 1, x = 1 (copy is made because i32 implements Copy)
    let mut z = y;        // z = 1
    z += 1;               // z = 2, y = 1, x = 1

    // Example 2: Function with value semantics
    let a = 1;            // a = 1
    let result = add_one(a); // result = 2, a = 1 (a is copied)
}

fn add_one(num: i32) -> i32 {
    num + 1  // Returns a new value
}

fn update_point(mut p: Point) -> Point {
    p.x = 9;  // Modifies the local copy
    p         // Returns the modified copy
}
```

##### C++ (version >=0.x.x)

```cpp
// Example 1: Value semantics with Copy types
fn main() {
    let x = 1;            // x = 1
    let y = x;            // y = 1, x = 1 (copy is made because i32 implements Copy)
    let mut z = y;        // z = 1
    z += 1;               // z = 2, y = 1, x = 1

    // Example 2: Function with value semantics
    let a = 1;            // a = 1
    let result = add_one(a); // result = 2, a = 1 (a is copied)
}

fn add_one(num: i32) -> i32 {
    num + 1  // Returns a new value
}

fn update_point(mut p: Point) -> Point {
    p.x = 9;  // Modifies the local copy
    p         // Returns the modified copy
}
```

#### Assign / pass by referece and allow mutating (reference semantics)

##### Python

```json
metadata {
  "language": "python",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

```py
# Example 1: Mutating through reference (mutable objects)
def add(x, y):
    x.append(y)  # Modifies the original list

a = [1, 2]      # a = [1, 2]
b = 3           # b = 3
add(a, b)       # a = [1, 2, 3], b = 3

# Example 2: Working with custom objects
class List:
    def __init__(self, *items):
        self.items = list(items)

    def append(self, item):
        self.items.append(item)

    def __repr__(self):
        return f"List({', '.join(map(str, self.items))})"

def mutate(l):
    l.append(5)  # Modifies the original list

list_obj = List(1, 2)  # list_obj = List(1, 2)
mutate(list_obj)       # list_obj = List(1, 2, 5)
```

##### Mojo

```json
metadata {
  "language": "mojo",
  "language_version":">=0.6.x",
  "code_role": "anchor",
  "code_author": "human"
}
```

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

##### TypeScript

```json
metadata {
  "language": "typescript",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

```ts
// Example 1: Objects are passed by reference
function add(x: number[], y: number): void {
    x.push(y);  // Modifies the original array
}

const a: number[] = [1, 2];  // a = [1, 2]
const b: number = 3;         // b = 3
add(a, b);                   // a = [1, 2, 3], b = 3

// Example 2: Working with custom classes
class List<T> {
    private items: T[];

    constructor(...items: T[]) {
        this.items = items;
    }

    append(item: T): void {
        this.items.push(item);
    }

    toString(): string {
        return `List(${this.items.join(", ")})`;
    }
}

function mutate(l: List<number>): void {
    l.append(5);  // Modifies the original list
}
```

##### Go

```json
metadata {
  "language": "go",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

```go
// Example 1: Passing by pointer to allow mutation
func add(x *[]int, y int) {
    *x = append(*x, y)  // Modifies the original slice
}

func main() {
    a := []int{1, 2}    // a = [1, 2]
    b := 3              // b = 3
    add(&a, b)          // a = [1, 2, 3], b = 3

    // Example 2: Working with custom types
    list := NewList(1, 2)  // list = List{1, 2}
    mutate(&list)          // list = List{1, 2, 5}
}

// Example 2 implementation
type List struct {
    Items []int
}

func NewList(items ...int) List {
    return List{Items: items}
}

func mutate(l *List) {
    l.Items = append(l.Items, 5)  // Modifies the original list
}
```

##### Rust (version >=0.x.x)

```rust
// Example 1: Passing by mutable reference
fn add(x: &mut Vec<i32>, y: i32) {
    x.push(y);  // Modifies the original vector
}

fn main() {
    let mut a = vec![1, 2];  // a = [1, 2]
    let b = 3;               // b = 3
    add(&mut a, b);          // a = [1, 2, 3], b = 3

    // Example 2: Working with custom structs
    #[derive(Debug)]
    struct List {
        items: Vec<i32>,
    }

    impl List {
        fn new(items: Vec<i32>) -> Self {
            List { items }
        }

        fn append(&mut self, item: i32) {
            self.items.push(item);
        }
    }

    fn mutate(l: &mut List) {
        l.append(5);  // Modifies the original list
    }

    let mut list = List::new(vec![1, 2]);  // list = List { items: [1, 2] }
    mutate(&mut list);                     // list = List { items: [1, 2, 5] }
}
```

##### C++ (version >=0.x.x)

```cpp
#include <iostream>
#include <vector>
#include <string>

// Example 1: Passing by reference to allow mutation
void add(std::vector<int>& x, int y) {
    x.push_back(y);  // Modifies the original vector
}

int main() {
    std::vector<int> a = {1, 2};  // a = [1, 2]
    int b = 3;                    // b = 3
    add(a, b);                    // a = [1, 2, 3], b = 3

    // Example 2: Working with custom classes
    List list(1, 2);              // list = List(1, 2)
    mutate(list);                 // list = List(1, 2, 5)

    return 0;
}

// Example 2 implementation
class List {
private:
    std::vector<int> items;

public:
    List(std::initializer_list<int> init) : items(init) {}

    void append(int item) {
        items.push_back(item);
    }
};

void mutate(List& l) {
    l.append(5);  // Modifies the original list
}
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

##### Python

```json
metadata {
  "language": "python",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

```py
# Python doesn't have explicit ownership transfer like Mojo
# but we can simulate similar behavior

# Example 1: Function without "ownership transfer"
def my_function1():
    message = "Hello"           # message = "Hello"
    take_text1(message)         # message = "Hello"
    print(f"After: {message}")  # Prints "After: Hello"

def take_text1(text):
    text = text + "!"           # Creates a new string, doesn't modify original
    print(f"In function: {text}")  # Prints "In function: Hello!"

# Example 2: Simulating "ownership transfer" by returning modified value
def my_function2():
    message = "Hello"                  # message = "Hello"
    message = take_text2(message)      # message = "Hello!"
    print(f"After: {message}")         # Prints "After: Hello!"

def take_text2(text):
    text = text + "!"                  # text = "Hello!"
    print(f"In function: {text}")      # Prints "In function: Hello!"
    return text                        # Return the modified value
```

##### Mojo

```json
metadata {
  "language": "mojo",
  "language_version":">=0.6.x",
  "code_role": "anchor",
  "code_author": "human"
}
```

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

##### TypeScript

```json
metadata {
  "language": "typescript",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

```ts
// TypeScript doesn't have explicit ownership transfer like Mojo
// but we can simulate similar behavior

// Example 1: Function without "ownership transfer"
function myFunction1(): void {
    let message: string = "Hello";       // message = "Hello"
    takeText1(message);                  // message = "Hello"
    console.log(`After: ${message}`);    // Prints "After: Hello"
}

function takeText1(text: string): void {
    text = text + "!";                   // Creates a new string, doesn't modify original
    console.log(`In function: ${text}`); // Prints "In function: Hello!"
}

// Example 2: Simulating "ownership transfer" by returning modified value
function myFunction2(): void {
    let message: string = "Hello";             // message = "Hello"
    message = takeText2(message);              // message = "Hello!"
    console.log(`After: ${message}`);          // Prints "After: Hello!"
}

function takeText2(text: string): string {
    text = text + "!";                         // text = "Hello!"
    console.log(`In function: ${text}`);       // Prints "In function: Hello!"
    return text;                               // Return the modified value
}
```

##### Go

```json
metadata {
  "language": "go",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "llm"
}
```

```go
package main

import "fmt"

// Example 1: Function without "ownership transfer"
func myFunction1() {
    message := "Hello"                   // message = "Hello"
    takeText1(message)                   // message = "Hello"
    fmt.Printf("After: %s\n", message)   // Prints "After: Hello"
}

func takeText1(text string) {
    text = text + "!"                    // Creates a new string, doesn't modify original
    fmt.Printf("In function: %s\n", text) // Prints "In function: Hello!"
}

// Example 2: Simulating "ownership transfer" by returning modified value
func myFunction2() {
    message := "Hello"                     // message = "Hello"
    message = takeText2(message)           // message = "Hello!"
    fmt.Printf("After: %s\n", message)     // Prints "After: Hello!"
}

func takeText2(text string) string {
    text = text + "!"                      // text = "Hello!"
    fmt.Printf("In function: %s\n", text)  // Prints "In function: Hello!"
    return text                            // Return the modified value
}
```

##### Rust (version >=0.x.x)

```rust
// Example 1: Without ownership transfer
fn my_function1() {
    let message = String::from("Hello");    // message = "Hello"
    take_text1(&message);                   // message = "Hello"
    println!("After: {}", message);         // Prints "After: Hello"
}

fn take_text1(text: &String) {
    let modified = format!("{}!", text);    // Creates a new string
    println!("In function: {}", modified);  // Prints "In function: Hello!"
}

// Example 2: With ownership transfer
fn my_function2() {
    let message = String::from("Hello");    // message = "Hello"
    let message = take_text2(message);      // Original message is moved, new message = "Hello!"
    println!("After: {}", message);         // Prints "After: Hello!"
}

fn take_text2(mut text: String) -> String {
    text.push('!');                         // text = "Hello!"
    println!("In function: {}", text);      // Prints "In function: Hello!"
    text                                    // Return ownership of the modified text
}
```

##### C++ (version >=0.x.x)

```cpp
#include <iostream>
#include <string>
#include <memory>

// Example 1: Without ownership transfer
void myFunction1() {
    std::string message = "Hello";          // message = "Hello"
    takeText1(message);                     // message = "Hello"
    std::cout << "After: " << message << std::endl;  // Prints "After: Hello"
}

void takeText1(const std::string& text) {
    std::string modified = text + "!";      // Creates a new string
    std::cout << "In function: " << modified << std::endl;  // Prints "In function: Hello!"
}

// Example 2: With ownership transfer using move semantics
void myFunction2() {
    std::string message = "Hello";               // message = "Hello"
    message = takeText2(std::move(message));     // Moves message in, assigns new value
    std::cout << "After: " << message << std::endl;  // Prints "After: Hello!"
}

std::string takeText2(std::string text) {
    text.append("!");                            // text = "Hello!"
    std::cout << "In function: " << text << std::endl;  // Prints "In function: Hello!"
    return text;                                // Return the modified value
}
```

### TODO

- UnsafePointer
