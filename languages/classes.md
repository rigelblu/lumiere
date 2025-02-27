### Classes

#### Define and use classes

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
# Basic class definition
class Person:
    # Class attribute
    species = "Homo sapiens"

    # Constructor (initialization)
    def __init__(self, name, age):
        # Instance attributes
        self.name = name
        self.age = age

    # Instance method
    def say_hello(self):
        return f"Hello, my name is {self.name}"

    # Method with parameters
    def celebrate_birthday(self, message="Happy Birthday!"):
        self.age += 1
        return f"{message} You are now {self.age} years old."

    # Static method (doesn't need instance)
    @staticmethod
    def get_species_info():
        return "Humans are the most widespread species of primates"

    # Class method (works with class, not instance)
    @classmethod
    def create_anonymous(cls):
        return cls("Anonymous", 0)

# Create instance
person = Person("Alice", 30)

# Access attributes
print(person.name)  # Alice
print(Person.species)  # Homo sapiens

# Call methods
print(person.say_hello())  # Hello, my name is Alice
print(person.celebrate_birthday())  # Happy Birthday! You are now 31 years old.

# Call static and class methods
print(Person.get_species_info())
anonymous = Person.create_anonymous()
print(anonymous.name)  # Anonymous
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

TODO: LLM Generated, TODO: verify code

**Constraints:**
- Mojo structs don't support inheritance, static data members, dynamically addings/remove/changing fields, dynamic dispatch, monkey-patching (or "swizzling"), and dynamically binding instance fields at runtime

**Alternatives**
- Structs

```mojo
# Not implemented. Use nearest alternative
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
// Basic class definition
class Person {
    // Class attribute
    static species: string = "Homo sapiens";

    // Instance attributes
    name: string;
    age: number;

    // Constructor (initialization)
    constructor(name: string, age: number) {
        this.name = name;
        this.age = age;
    }

    // Instance method
    sayHello(): string {
        return `Hello, my name is ${this.name}`;
    }

    // Method with parameters
    celebrateBirthday(message: string = "Happy Birthday!"): string {
        this.age += 1;
        return `${message} You are now ${this.age} years old.`;
    }

    // Static method (doesn't need instance)
    static getSpeciesInfo(): string {
        return "Humans are the most widespread species of primates";
    }

    // Static factory method (works with class, not instance)
    static createAnonymous(): Person {
        return new Person("Anonymous", 0);
    }
}

// Create instance
const person = new Person("Alice", 30);

// Access attributes
console.log(person.name);  // Alice
console.log(Person.species);  // Homo sapiens

// Call methods
console.log(person.sayHello());  // Hello, my name is Alice
console.log(person.celebrateBirthday());  // Happy Birthday! You are now 31 years old.

// Call static methods
console.log(Person.getSpeciesInfo());
const anonymous = Person.createAnonymous();
console.log(anonymous.name);  // Anonymous
```

##### Go (version >=1.16.0)

TODO: LLM Generated, TODO: verify code

```go
// Go doesn't have traditional classes, uses structs and methods instead
package main

import (
    "fmt"
)

// Define struct (similar to class)
type Person struct {
    Name string
    Age  int
}

// Instance method using receiver
func (p *Person) SayHello() string {
    return fmt.Sprintf("Hello, my name is %s", p.Name)
}

// Method with parameters and mutating state
func (p *Person) CelebrateBirthday(message string) string {
    if message == "" {
        message = "Happy Birthday!"
    }
    p.Age++
    return fmt.Sprintf("%s You are now %d years old.", message, p.Age)
}

// Static-like function (not attached to instance)
func GetSpeciesInfo() string {
    return "Humans are the most widespread species of primates"
}

// Factory function (similar to class method)
func CreateAnonymousPerson() Person {
    return Person{Name: "Anonymous", Age: 0}
}

func main() {
    // Create instance
    person := Person{Name: "Alice", Age: 30}

    // Access attributes
    fmt.Println(person.Name)  // Alice

    // Call methods
    fmt.Println(person.SayHello())  // Hello, my name is Alice
    fmt.Println(person.CelebrateBirthday(""))  // Happy Birthday! You are now 31 years old.

    // Call static-like functions
    fmt.Println(GetSpeciesInfo())
    anonymous := CreateAnonymousPerson()
    fmt.Println(anonymous.Name)  // Anonymous
}
```
