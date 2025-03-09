### Control Flow / Interate For

#### Execute block for a range of items

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```py
for i in range(5):
    print(i, end=", ")

for i in range(5):
    if i == 3:
        continue
    print(i, end=", ")

for i in range(5):
    if i == 3:
        break
    print(i, end=", ")
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**How to use:**
- TODO:

**Examples:**
```mojo
for i in range(5):
    print(i, end=", ")

for i in range(5):
    if i == 3:
        continue
    print(i, end=", ")

for i in range(5):
    if i == 3:
        break
    print(i, end=", ")
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```ts
for (let i = 0; i < 5; i++) {
    console.log(i + ", ");
}

for (let i = 0; i < 5; i++) {
    if (i === 3) {
        continue;
    }
    console.log(i + ", ");
}

for (let i = 0; i < 5; i++) {
    if (i === 3) {
        break;
    }
    console.log(i + ", ");
}
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```go
for i := 0; i < 5; i++ {
    fmt.Print(i, ", ")
}

for i := 0; i < 5; i++ {
    if i == 3 {
        continue
    }
    fmt.Print(i, ", ")
}

for i := 0; i < 5; i++ {
    if i == 3 {
        break
    }
    fmt.Print(i, ", ")
}
```

#### Execute block over items in a list

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```py
colors = ["Blue", "Yellow"]
for color in colors:
    print(color)

# With index
for i, color in enumerate(colors):
    print(f"Color {i}: {color}")
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**How to use:**
- TODO:

**Constraint:** iterating over collections assigns the loop index a Reference to each item, not the item itself. You can access the item using the dereference operator, [].

**Examples:**
```mojo
from collections import List

colors = List[String]("Blue", "Yellow")
for color in colors:
    print(color[]) # Required to reference the element
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```ts
const colors: string[] = ["Blue", "Yellow"];
for (const color of colors) {
    console.log(color);
}

// With index
colors.forEach((color, index) => {
    console.log(`Color ${index}: ${color}`);
});

// Traditional for loop
for (let i = 0; i < colors.length; i++) {
    console.log(colors[i]);
}
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```go
colors := []string{"Blue", "Yellow"}
for _, color := range colors {
    fmt.Println(color)
}

// With index
for i, color := range colors {
    fmt.Printf("Color %d: %s\n", i, color)
}

// Traditional for loop
for i := 0; i < len(colors); i++ {
    fmt.Println(colors[i])
}
```

#### Execute block over items in a set

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```py
years = {2024, 2025, 2026}
for year in years:
    print(year)
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**How to use:**
- TODO:

**Examples:**
```mojo
from collections import Set

years = Set[Int](2024, 2025, 2026)
for year in years:
    print(year[])
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```ts
const years = new Set<number>([2024, 2025, 2026]);
for (const year of years) {
    console.log(year);
}

// Using forEach
years.forEach(year => {
    console.log(year);
});
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```go
// Go doesn't have a built-in set type
// Using a map with empty struct values to simulate a set
years := map[int]struct{}{
    2024: {},
    2025: {},
    2026: {},
}

for year := range years {
    fmt.Println(year)
}
```

#### Execute block over items in a dictionary / map

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```py
colors = {
    "Primary": "Blue",
    "Secondary": "Yellow"
}

# Iterate over keys
for key in colors:
    print(colors[key] + ", " + key)

# Iterate over items (key-value pairs)
for key, value in colors.items():
    print(value + ", " + key)
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**How to use:**
- TODO:

**Examples:**
```mojo
from collections import Dict

colors = Dict[String, String]()
colors["Primary"] = "Blue"
colors["Secondary"] = "Yellow"

for color in colors:
    print(colors[color[]] + ", " + color[])

for item in colors.items():
    print(item[].value + ", " + item[].key)
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```ts
// Using an object
const colors = {
    "Primary": "Blue",
    "Secondary": "Yellow"
};

// Iterate over keys
for (const key in colors) {
    console.log(colors[key] + ", " + key);
}

// Iterate over entries
Object.entries(colors).forEach(([key, value]) => {
    console.log(value + ", " + key);
});

// Using a Map
const colorsMap = new Map<string, string>([
    ["Primary", "Blue"],
    ["Secondary", "Yellow"]
]);

// Iterate over entries
for (const [key, value] of colorsMap.entries()) {
    console.log(value + ", " + key);
}
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```go
colors := map[string]string{
    "Primary":   "Blue",
    "Secondary": "Yellow",
}

// Iterate over key-value pairs
for key, value := range colors {
    fmt.Println(value + ", " + key)
}

// Iterate over keys only
for key := range colors {
    fmt.Println(colors[key] + ", " + key)
}
```

#### Execute separate block after interating over a list

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```py
for i in range(5):
    print(i, end=", ")
else:
    print("\nFinished executing 'for' loop")

# Break example - else won't execute
for i in range(5):
    if i == 3:
        break
    print(i, end=", ")
else:
    print("\nThis won't print if loop is broken")
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**How to use:**
- TODO:

**What it does:** the else clause executes after iterating over all of the elements in a collection

**Constraints:** the else clause does not execute if a break or return statement terminates the for loop

**Examples:**
```mojo
for i in range(5):
    print(i, end=", ")
else:
    print("\nFinished executing 'for' loop")
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```ts
// TypeScript doesn't have a direct for-else construct
// Using a flag or other approach instead

let hasBreak = false;
for (let i = 0; i < 5; i++) {
    console.log(i + ", ");
    if (someCondition) {
        hasBreak = true;
        break;
    }
}

if (!hasBreak) {
    console.log("\nFinished executing 'for' loop");
}

// Alternative with IIFE (Immediately Invoked Function Expression)
(() => {
    for (let i = 0; i < 5; i++) {
        console.log(i + ", ");
        if (someCondition) return; // Early exit
    }
    console.log("\nFinished executing 'for' loop");
})();
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**How to use:**
- TODO:

**Examples:**
```go
// Go doesn't have a direct for-else construct
// Using a flag or other approach instead

hasBreak := false
for i := 0; i < 5; i++ {
    fmt.Print(i, ", ")
    if someCondition {
        hasBreak = true
        break
    }
}

if !hasBreak {
    fmt.Println("\nFinished executing 'for' loop")
}

// Alternative with labeled break
loopCompleted := true
loop:
for i := 0; i < 5; i++ {
    fmt.Print(i, ", ")
    if someCondition {
        loopCompleted = false
        break loop
    }
}

if loopCompleted {
    fmt.Println("\nFinished executing 'for' loop")
}
```
