### Error Handling

#### Declare function can raise error

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
def hello4(name: str):
    if name == "":
        raise ValueError("Name is empty")
    elif len(name) == 0:
        raise Exception("Name is empty")  # Simple exception
    return "Hello " + name

# Type hints can document exceptions (Python 3.11+)
from typing import NoReturn

def fail(message: str) -> NoReturn:
    raise RuntimeError(message)
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

**Constraints:**
- Doesn't support typed error conditions yet. All errors are instances of Error, and the only thing that distinguishes different error conditions is the error message that you provide

```mojo
fn hello4(name: String) raises:
    if (name == ""):
        raise Error("Name is empty")
    elif (len(name) == 0):
        raise "Name is empty" # raise automatically creates an Error object
    return "Hello " + name
```

##### TypeScript (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```ts
// Custom error type
class EmptyNameError extends Error {
  constructor(message: string) {
    super(message);
    this.name = "EmptyNameError";
  }
}

// Function that can throw errors
function hello4(name: string): string {
  if (name === "") {
    throw new EmptyNameError("Name is empty");
  } else if (name.length === 0) {
    throw new Error("Name is empty");
  }
  return "Hello " + name;
}

// Documentation with JSDoc
/**
 * @throws {Error} If the name is empty
 */
function greet(name: string): string {
  if (!name) throw new Error("Empty name");
  return `Hello, ${name}`;
}
```

##### Go (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```go
import (
  "errors"
  "fmt"
)

// Go functions return errors rather than throwing them
func hello4(name string) (string, error) {
  if name == "" {
    return "", errors.New("Name is empty")
  } else if len(name) == 0 {
    return "", fmt.Errorf("Name is empty")
  }
  return "Hello " + name, nil
}

// Custom error types
type EmptyNameError struct {
  Message string
}

func (e *EmptyNameError) Error() string {
  return e.Message
}

func validateName(name string) (string, error) {
  if name == "" {
    return "", &EmptyNameError{"Name cannot be empty"}
  }
  return name, nil
}
```

#### Handle raised errors

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
def handle_error():
    try:
        # Code that might raise an exception
        result = hello4("")
    except ValueError as e:
        # Handle specific error type
        print("Handled ValueError:", e)
    except Exception as e:
        # Handle any other exceptions
        print("Handled an error:", e)
    else:
        # Executes if no exception occurred
        print("No errors occurred")
    finally:
        # Always executes, regardless of exceptions
        print("Cleanup code here")

    # Context manager for resource handling
    with open("file.txt", "r") as f:
        # File automatically closes even if exceptions occur
        content = f.read()
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

**Constraints:**
- If `raises` keyword isn't included when defining a function with fn, then the function must explicitly handle any errors that might occur in code that it executes
- Because Mojo does not currently support typed errors, a try-except control structure can include at most one except clause, which catches any Error raised

```mojo
fn handle_error():
    try:
        # code block that can raise an error
    except e:
        print("Handled an error," e)
    else:
        # code block to execute if no errors occur...
    finally:
        # code block to execute always...
```

##### TypeScript (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```ts
function handleError(): void {
  try {
    // Code that might throw an exception
    const result = hello4("");
  } catch (e) {
    // Type checking for specific errors
    if (e instanceof EmptyNameError) {
      console.log("Handled EmptyNameError:", e.message);
    } else if (e instanceof Error) {
      console.log("Handled generic error:", e.message);
    } else {
      console.log("Unknown error:", e);
    }
  } finally {
    // Always executes, regardless of exceptions
    console.log("Cleanup code here");
  }

  // Using Promise error handling
  fetchData()
    .then(result => console.log(result))
    .catch(error => console.error("API error:", error));

  // Async/await with try/catch
  async function processData() {
    try {
      const data = await fetchData();
      return processResult(data);
    } catch (error) {
      console.error("Failed to process data:", error);
    }
  }
}
```

##### Go (version >=0.x.x)

TODO: LLM Generated, TODO: verify code

```go
func handleError() {
  // Basic error checking pattern
  result, err := hello4("")
  if err != nil {
    fmt.Println("Error:", err)
    return
  }

  // Type assertions to check specific error types
  _, err = validateName("")
  if err != nil {
    if emptyErr, ok := err.(*EmptyNameError); ok {
      fmt.Println("Empty name error:", emptyErr.Message)
    } else {
      fmt.Println("Other error:", err)
    }
  }

  // Defer for cleanup (similar to finally)
  file, err := os.Open("file.txt")
  if err != nil {
    fmt.Println("Failed to open file:", err)
    return
  }
  defer file.Close() // Will execute when function returns

  // Panic/recover (rarely used, similar to try/catch)
  defer func() {
    if r := recover(); r != nil {
      fmt.Println("Recovered from panic:", r)
    }
  }()

  // Code that might panic
  if someCondition {
    panic("Critical error occurred")
  }
}
```
