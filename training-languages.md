# How to use programming concepts across languages

## **Table of Contents**
- [System Prompt](#System-Prompt)
- [Instruction Prompt](#Instruction-Prompt)
- Types
    - [Built-in Types](#Built-in-Types)
    - [User Defined Types - Simple Types](#User-Defined-Built-in-Types)
    - [User Defined Types - Composite Types](#User-Defined-Composite-Types)

## **System Prompt**

- Each code block follows the pattern of define and then usage

## **Instruction Prompt**

```md
## Training data
### Contains concepts (i.e. feature) that users can implement through programming languages
##### What a user can do with the concept
Code block example for each language
```

---

## **Training Data**

### **Built-in Types**

// TODO:

---

### **User Defined Types - Simple**

#### **Define a user-defined type from a simple built-in type**

As known as type aliases

Python              (version >=3.5.x)
```python
ColorType = str
c1: ColorType = "blue"
```

TypeScript          (version >=1.x.x)
```ts
type ColorType = string;
let c1: ColorType = "blue";
```

Mojo                (version >=0.4.x)
```mojo
alias ColorType = String
var c1: ColorType = "blue"
```

Go                  (version >=1.x.x)
```go
type ColorType string
var c1 ColorType = "blue"
```

#### **Define a user-defined type from combining built-in/user-defined types**

Python              (version >=3.7.x)
```python
# Not built-in. Use nearest equivalent
class PointType:
    x: int
    y: int

p1 = PointType(1, 2)
```

TypeScript          (version >=2.x.x)
```ts
type PointType = {
  x: number;
  y: number;
}
interface PointInterface {
  x: number;
  y: number;
}

const p1: PointInterface = {1, 2}
const p2: PointType = {1, 2}
```

Mojo                (version >=0.4.x)
```mojo
struct PointType{
    x: Int
    y: Int
}

var p1: PointType = {1, 2}
```

Go                  (version >=1.x.x)
```go
type PointType struct {
    x int
    y int
}
var p1 PointType = {1, 2}
var p2 PointType = {1, 2}
```

---

### **User Defined with Composite Types**

// TODO:
