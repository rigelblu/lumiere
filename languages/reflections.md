Reflection in Go is a runtime capability that lets you examine types, interfaces, and structs during execution. It's in the standard library as reflect.
Key uses:

Examining type information at runtime
Creating values dynamically
Accessing fields and methods of unknown structs
Calling functions indirectly

Basic example:
gopackage main

import (
    "fmt"
    "reflect"
)

func main() {
    // Get type info
    i := 42
    t := reflect.TypeOf(i)
    fmt.Println(t) // int

    // Get and set values
    v := reflect.ValueOf(&i).Elem()
    v.SetInt(21)
    fmt.Println(i) // 21

    // Examine struct fields
    type Person struct {
        Name string `json:"name"`
        Age  int    `json:"age"`
    }
    p := Person{"Alice", 30}
    val := reflect.ValueOf(p)

    for i := 0; i < val.NumField(); i++ {
        field := val.Type().Field(i)
        value := val.Field(i).Interface()
        tag := field.Tag.Get("json")
        fmt.Printf("%s: %v (tag: %s)\n", field.Name, value, tag)
    }
}
Warning: Using reflection makes code:

Harder to understand
More prone to runtime errors
Less performant
Harder to refactor

Alternative approaches:

Interfaces for polymorphic behavior
Code generation for repetitive tasks
Type switches for simple cases
Generic functions (Go 1.18+)

Consider reflection a last resort when simpler approaches won't work.

Java
Java has built-in reflection through the java.lang.reflect package:
javaimport java.lang.reflect.*;

// Get class info
Class<?> clazz = String.class;
Method[] methods = clazz.getMethods();

// Create instance dynamically
Constructor<?> constructor = clazz.getConstructor(String.class);
String instance = (String) constructor.newInstance("Hello");

// Access private field
Field field = SomeClass.class.getDeclaredField("privateField");
field.setAccessible(true);
field.set(object, newValue);
JavaScript
JavaScript is dynamically typed with built-in reflection capabilities:
javascript// Object introspection
const obj = { name: "Alice", age: 30 };
console.log(Object.keys(obj)); // ["name", "age"]
console.log(typeof obj); // "object"

// Property access
const prop = "name";
console.log(obj[prop]); // "Alice"

// Reflect API (modern JS)
Reflect.has(obj, "name"); // true
Reflect.get(obj, "age"); // 30
Reflect.set(obj, "age", 31);
Python
Python has dynamic introspection built into the language:
python# Type inspection
x = 42
print(type(x)) # <class 'int'>

# Attribute inspection
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def greet(self):
        return f"Hello, {self.name}"

p = Person("Alice", 30)
print(dir(p)) # List all attributes and methods
print(getattr(p, "name")) # Get attribute by string name
setattr(p, "age", 31) # Set attribute by string name
Rust
Rust has more limited reflection capabilities through traits:
rust// Basic type info via std::any
use std::any::Any;

fn print_type_of<T: Any>(_: &T) {
    println!("{}", std::any::type_name::<T>());
}

// For more advanced reflection, external crates are needed:
// - typetag for runtime polymorphism
// - serde for serialization/deserialization
// - inventory for collecting types at compile time
Ruby
Ruby has powerful reflection built into the language:
ruby# Object inspection
obj = { name: "Alice", age: 30 }
p obj.class # Hash
p obj.methods # List all methods

# Dynamic access
class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

person = Person.new("Alice", 30)
p person.instance_variables # [:@name, :@age]
p person.instance_variable_get(:@name) # "Alice"
person.instance_variable_set(:@age, 31)
C++
C++ reflection is limited but available through RTTI (Run-Time Type Information):
cpp#include <iostream>
#include <typeinfo>

// Basic type info
int x = 42;
std::cout << typeid(x).name() << std::endl;

// Dynamic casting
Base* basePtr = new Derived();
if (Derived* derivedPtr = dynamic_cast<Derived*>(basePtr)) {
    // Successfully cast to Derived
}

// For more advanced reflection, libraries are needed:
// - Boost.TypeIndex
// - rttr (Run Time Type Reflection)
// - magic_get/pfr for struct reflection
