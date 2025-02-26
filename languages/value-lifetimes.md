### Value Lifetimes

##### Mojo

**What it does:**
- A lifetime checker analyzes dataflow through your program. It identifies when variables are valid and inserts destructor calls when a variable's lifetime ends.

**How to use:**
- Most of the time, origins are handled automatically by the compiler. However, in some cases you'll need to interact with origins directly:
  - When working with references—specifically ref arguments and ref return values.
  - When working with types like Pointer or Span which are parameterized on the origin of the data they refer to

#### Define behaviour when instance of struct is created, moved, copied, and destroyed

##### Python (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```py
class Person:
    def __init__(self, name):
        print(f"Creating {name}")
        self.name = name

    def __del__(self):
        print(f"Destroying {self.name}")

    def __copy__(self):
        print(f"Copying {self.name}")
        return Person(self.name)

    def __deepcopy__(self, memo):
        print(f"Deep copying {self.name}")
        return Person(self.name)

import copy
p1 = Person("John")           # Creating John
p2 = copy.copy(p1)            # Copying John -> Creating John
p3 = copy.deepcopy(p1)        # Deep copying John -> Creating John
# p1, p2, p3 will be destroyed when they go out of scope
```

##### Mojo (version >=0.x.x)

```mojo
# TODO:
```

##### TypeScript (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```ts
class Person {
    name: string;

    constructor(name: string) {
        console.log(`Creating ${name}`);
        this.name = name;
    }

    // No built-in destructor in TypeScript/JavaScript
    // Closest equivalent is to use a cleanup method
    cleanup(): void {
        console.log(`Cleaning up ${this.name}`);
    }

    // No built-in copy mechanism - create a manual one
    clone(): Person {
        console.log(`Copying ${this.name}`);
        return new Person(this.name);
    }
}

const p1 = new Person("John");    // Creating John
const p2 = p1.clone();            // Copying John -> Creating John
p1.cleanup();                     // Manual cleanup
```

##### Go (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```go
package main

import (
    "fmt"
)

type Person struct {
    Name string
    resource *string  // Example resource that needs cleanup
}

// Constructor equivalent
func NewPerson(name string) Person {
    fmt.Printf("Creating %s\n", name)
    resource := name + "'s resource"
    return Person{
        Name: name,
        resource: &resource,
    }
}

// Cleanup method (since Go has no destructors)
func (p *Person) Cleanup() {
    fmt.Printf("Cleaning up %s\n", p.Name)
    p.resource = nil
}

// Copy method
func (p Person) Clone() Person {
    fmt.Printf("Copying %s\n", p.Name)
    return NewPerson(p.Name)
}

func main() {
    // Creation
    p1 := NewPerson("John")

    // Copy
    p2 := p1.Clone()

    // Using defer for cleanup (similar to destructor)
    defer p1.Cleanup()
    defer p2.Cleanup()
}
```

#### Use default lifetimes, compiler auto generates lifecyle methods

*When to use:* basic aggregations of other types that don't require custom resource management or lifecycle behaviors

*How it works:* compiler provides "member-wise" constructor `__init__()`, `__copyinit__()`, `__moveinit__()`

##### Python (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```py
# Python doesn't auto-generate lifecycle methods
# Basic class with minimal constructor
class Person:
    def __init__(self, name):
        self.name = name

# Usage
p1 = Person("John")
print(p1.name)  # John
```

##### Mojo (version >=0.x.x)

```mojo
@value
struct Person:
  name: String

p1 = Person("John")
print(p1.name)
```

##### TypeScript (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```ts
// TypeScript with default constructor
class Person {
    name: string;

    constructor(name: string) {
        this.name = name;
    }
}

// Can be shortened with parameter properties
class PersonShort {
    constructor(public name: string) {}
}

// Usage
const p1 = new Person("John");
console.log(p1.name);  // John
```

##### Go (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```go
// Go structs initialize with zero values by default
type Person struct {
    Name string
}

func main() {
    // Zero-value initialization
    var p1 Person
    p1.Name = "John"

    // Struct literal initialization
    p2 := Person{Name: "Jane"}

    // Simple factory function
    p3 := NewPerson("Bob")

    fmt.Println(p1.Name)  // John
}

// Simple factory function
func NewPerson(name string) Person {
    return Person{Name: name}
}
```

#### Specify origin types

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

```mojo
# Immutable Origin
struct ImmutableRef[origin: ImmutableOrigin]:
    pass

# Mutalable Origin
struct MutableRef[origin: MutableOrigin]:
    pass

# Example: Parametric Mutability
struct ParametricRef[
    is_mutable: Bool,
    //,
    origin: Origin[is_mutable]
]:
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

- [Origin types](https://docs.modular.com/mojo/manual/values/lifetimes#origin-types)
- [Origin values](https://docs.modular.com/mojo/manual/values/lifetimes#origin-values)
- [`ref` argument](https://docs.modular.com/mojo/manual/values/lifetimes#ref-arguments)
- [`ref` return values](https://docs.modular.com/mojo/manual/values/lifetimes#ref-return-values)
- [Claude Explanation](https://claude.ai/share/543bae56-8cc6-45bd-951b-5be81856f3ed)
