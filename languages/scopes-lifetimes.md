### Scopes & Value Lifetimes

##### Mojo

**Terminology:**
- Lifetime:
   - Span of time during program execution in which the value is considered valid
   - Begins when its value is initialized (via __init__(), __copyinit__() or __moveinit__())
   - Ends when the value is destroyed (__del__()), or consumed in some other way (for example, as part of a __moveinit__() call)

**How it works:**
- The life of a value begins when a variable is initialized and continues up until the value is last used, at which point Mojo destroys it
- Mojo does not wait until the end of a code block—or even until the end of an expression—to destroy an unused value. It destroys values using an “as soon as possible” (ASAP) destruction policy that runs after every sub-expression. Even within an expression like a+b+c+d, Mojo destroys the intermediate values as soon as they're no longer needed
- Mojo immediately ends the value's lifetime and calls the __del__() destructor to perform any necessary cleanup for the type

#### Make variable available globally across program

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```py
global_var = "I'm global"
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```mojo
# Not built into language
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```ts
// Define in global scope or window object
declare global {
  var globalVar: string;
}
globalThis.globalVar = "I'm global";
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
package main

// Package level variable with capital first letter
var GlobalVar string = "I'm global"

// Access from any file in the package
```

#### Make variables privately available only to it's package / file

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```py
# Not built into language. Use nearest equivalent, a naming convention

# ./pkg1/__init__.py
# ./pkg1/file1.py
_PRIMARY = "blue"

# ./pkg2/__init__.py
# ./pkg2/file2.py
from ..pkg1.file1 import * # _PRIMARY won't be imported

```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```mojo
# TODO: confirm if it's not built into language or if it follows python pattern
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```ts
// ./pkg1/file1.ts
const PRIMARY: string = "blue"  // No export = private to module

// ./pkg2/file2.ts
import * as file1 from '../pkg1/file1'
// PRIMARY isn't accessible
// file1.PRIMARY will fail
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// ./pkg1/file1.go
package colors

// Use lower case first letter to make private to package
const primary string = "blue"

// ./pkg2/file2.go
package other
import "colors"

// Trying to use primary will fail
/c1 := colors.primary // Compilation error
```

#### Make variables publically available to other packages / files

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```py
# ./pkg1/__init__.py
# Expose through __init__.py
from .file1 import PRIMARY

# ./pkg1/file1.py
PRIMARY = "blue"

# ./pkg2/file2.py
from pkg1 import PRIMARY
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```mojo
# ./pkg1/file1.py
PRIMARY = "blue"

# ./pkg2/file2.py
from ..pkg1/file1 import *
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```ts
// ./pkg1/file1.ts
export const PRIMARY: string = "blue"

// ./pkg2/file2.ts
// Import all exports
import * as file1 from '../pkg1/file1'

// Use exported constant
const color = file1.PRIMARY
// Or import specific export
import { PRIMARY } from '../pkg1/file1';
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// ./pkg1/file1.go
package colors

// Use upper case first letter to make public to other packages
const Primary string = "blue"

// ./pkg2/file2.go
import "colors"

// Using Primary will succeed
c1 := colors.Primary
```

#### Make variables available only to it's local block

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```py
def my_function():
    local_var = "only available inside function"
    if condition:
        block_var = "only available in this if block"
    # block_var is not accessible here
# local_var is not accessible here
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```mojo
if condition:
    # code...
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```ts
function myFunction() {
    let functionScoped = "available in function";
    if (condition) {
        let blockScoped = "only in this block";
        // blockScoped is only available in this block
    }
    // blockScoped is not accessible here
}
// functionScoped is not accessible here
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
func myFunction() {
    functionVar := "available in function"
    if condition {
        blockVar := "only in this block"
        // blockVar only accessible in this if block
    }
    // blockVar not accessible here
}
// functionVar not accessible here
```

#### Explicit keep a value alive up to a certain statement

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```py
# TODO:
```

##### Mojo

**How to use:** keep a value alive up to a certain point by assigning the value to the _ discard pattern at the point where it's okay to destroy it

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```mojo
fn __del__(owned self):
    self.dump() # Self is still whole here

    consume(self.obj2^)
    _ = self.obj1
    # Mojo keeps `obj1` alive until here, after its "last use"
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```ts
// TODO:
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// TODO:
```
