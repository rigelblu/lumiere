### Packages & Modules

#### Create and use module

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

**What is it:** a module is a single file

```mojo
# file1.mojo
@value
struct Point
    x: Int
    y: Int
```


```mojo
# file2.mojo
import file1

var p = file1.Point(1, 2
```

```mojo
# file2.mojo
from file1 import Point

var p = Point(1, 2)
```

```mojo
# file2.mojo
from file1 import Point as pt

var p = pt(1, 2)
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
}
```

##### Go (version >=0.x.x)

```go
// TODO:
```

#### Create and use a pacakge

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

**What to do:**
- Compile package into a `.mojopkg` to share and is compatible across system architectures

**Conventions:**
- Typicall nclude APIs to be imported and used in other Mojo programs
- Modules don't include a main() function and aren't executables

**Constraints:**
- Must include a `__init__.mojo` file
- To rename a package, you cannot rename the .mojopkg or .📦 filenam because the package name is encoded in the file. Instead, you must run mojo package again to specify a new name
- Top-level code is not supported in .mojo files, so you can't write code in __init__.mojo that executes upon import. You can however add structs and functions, which you can then import from the package name
- Instead of adding APIs in the `__init__.mojo` file, import module members, which has the same effect by making your APIs accessible from the package name, instead of requiring the `<package_name>.<module_name>` notation.

**How it works:**
- A .mojopkg file contains non-elaborated code that works across architectures. The code becomes an architecture-specific executable only after it's imported into a Mojo program that's then compiled with mojo build

```
# Directory structure
./main.mojo
./package1
./package1/__init__.mojo
./package1/module1.mojo
./package1/module2.mojo
./compiled_pkg1.mojopkg
```

```mojo
# ./main.mojo
from compiled_pkg1.module1 import UserDefinedStruct
```

```
# ./package1/__init__.mojo
from .module1 import UserDefinedStruct
```

```
# ./package1/__init__.mojo
from .module1 import *
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```
