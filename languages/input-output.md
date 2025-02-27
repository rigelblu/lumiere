### Input / Output

#### Print to console

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
# Basic print
print("Hello world")
# Print with multiple arguments
print("Value:", 42, "Type:", type(42))
# Print with formatting
print(f"The answer is {42}")
# Print without newline
print("Hello", end=" ")
print("world")
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
print("Hellow world")
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
// Basic console output
console.log("Hello world");
// Print with multiple arguments
console.log("Value:", 42, "Type:", typeof 42);
// Print with formatting
console.log(`The answer is ${42}`);
// Other console methods
console.error("Error message");
console.warn("Warning message");
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
// Basic print
fmt.Println("Hello world")
// Print with multiple arguments
fmt.Println("Value:", 42, "Type:", reflect.TypeOf(42))
// Print with formatting
fmt.Printf("The answer is %d\n", 42)
// Print without newline
fmt.Print("Hello ")
fmt.Print("world\n")
```

#### Read from console

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
# Basic input (returns string)
name = input("Enter your name: ")
# Input with type conversion
age = int(input("Enter your age: "))
year = float(input("Enter the year: "))
# Multiple inputs on one line
x, y = map(int, input("Enter two numbers separated by space: ").split())
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
var year: Int = input("What year is it")
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
// Browser environment
const name = prompt("Enter your name:");
// Node.js environment
import * as readline from 'readline';

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question('Enter your age: ', (answer) => {
  const age = parseInt(answer);
  console.log(`You are ${age} years old`);
  rl.close();
});
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
// Using bufio scanner
import (
    "bufio"
    "fmt"
    "os"
    "strconv"
)

// Basic input
reader := bufio.NewReader(os.Stdin)
fmt.Print("Enter your name: ")
name, _ := reader.ReadString('\n')

// Input with type conversion
fmt.Print("Enter your age: ")
ageStr, _ := reader.ReadString('\n')
age, _ := strconv.Atoi(strings.TrimSpace(ageStr))

// Using Scanf
var year int
fmt.Print("What year is it? ")
fmt.Scanf("%d", &year)
```

#### Read from file

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
# Using with statement (recommended)
with open("input_file.txt", "r") as f:
    content = f.read()

# Reading specific number of bytes
with open("input_file.txt", "r") as f:
    chunk = f.read(100)  # Read 100 bytes

# Reading line by line
with open("input_file.txt", "r") as f:
    for line in f:
        print(line.strip())

# Traditional approach (not recommended)
f = open("input_file.txt", "r")
try:
    content = f.read()
finally:
    f.close()
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
f = open(input_file, "r)
try:
    content = f.read()
finally:
    f.close()
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
// Node.js environment
import * as fs from 'fs';

// Synchronous read
try {
  const data = fs.readFileSync('input_file.txt', 'utf8');
  console.log(data);
} catch (err) {
  console.error(err);
}

// Asynchronous read with promises
fs.promises.readFile('input_file.txt', 'utf8')
  .then(data => {
    console.log(data);
  })
  .catch(err => {
    console.error(err);
  });

// Using async/await
async function readFile() {
  try {
    const data = await fs.promises.readFile('input_file.txt', 'utf8');
    console.log(data);
  } catch (err) {
    console.error(err);
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
// Read entire file at once
import (
    "fmt"
    "os"
    "io/ioutil"
)

// Read entire file at once (ioutil)
data, err := ioutil.ReadFile("input_file.txt")
if err != nil {
    fmt.Println("Error reading file:", err)
    return
}
content := string(data)

// Using os.Open with defer
file, err := os.Open("input_file.txt")
if err != nil {
    fmt.Println("Error opening file:", err)
    return
}
defer file.Close()

buffer := make([]byte, 1024)
byteCount, err := file.Read(buffer)

// Reading line by line
scanner := bufio.NewScanner(file)
for scanner.Scan() {
    line := scanner.Text()
    fmt.Println(line)
}
```

#### Write to file

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
# Using with statement (recommended)
with open("output_file.txt", "w") as f:
    f.write("Hello, world!\n")
    f.write("Another line of text.")

# Append to file
with open("output_file.txt", "a") as f:
    f.write("\nAppended text.")

# Write multiple lines
lines = ["First line", "Second line", "Third line"]
with open("output_file.txt", "w") as f:
    f.writelines(line + "\n" for line in lines)
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
# TODO:
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
// Node.js environment
import * as fs from 'fs';

// Synchronous write
try {
  fs.writeFileSync('output_file.txt', 'Hello, world!\n');
  // Append to file
  fs.appendFileSync('output_file.txt', 'Another line of text.');
} catch (err) {
  console.error(err);
}

// Asynchronous write with promises
fs.promises.writeFile('output_file.txt', 'Hello, world!\n')
  .then(() => {
    return fs.promises.appendFile('output_file.txt', 'Another line of text.');
  })
  .then(() => {
    console.log('File writing complete');
  })
  .catch(err => {
    console.error(err);
  });
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
import (
    "fmt"
    "os"
    "bufio"
)

// Write entire file at once
data := []byte("Hello, world!\nAnother line of text.")
err := os.WriteFile("output_file.txt", data, 0644)
if err != nil {
    fmt.Println("Error writing file:", err)
    return
}

// Using os.Create with defer
file, err := os.Create("output_file.txt")
if err != nil {
    fmt.Println("Error creating file:", err)
    return
}
defer file.Close()

// Write directly to file
_, err = file.WriteString("Hello, world!\n")
if err != nil {
    fmt.Println("Error writing to file:", err)
    return
}

// Using bufio writer for better performance
writer := bufio.NewWriter(file)
_, err = writer.WriteString("Another line of text.")
if err != nil {
    fmt.Println("Error writing to file:", err)
    return
}
writer.Flush()
```
