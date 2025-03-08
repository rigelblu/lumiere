### Interoperability

**Constraints:**
- The import_module() method returns a reference to the module in the form of a `PythonObject` wrapper. You must store the reference in a variable and then use it as shown in the example above to access functions, classes, and other objects defined by the module. See Mojo wrapper objects for more information about the `PythonObject` type
- Currently, you cannot import individual members (such as a single Python class or function). You must import the whole Python module and then access members through the module name
- Mojo doesn't yet support top-level code, so the `import_module()` call must be inside another method. This means you may need to import a module multiple times or pass around a reference to the module. This works the same way as Python: importing the module multiple times won't run the initialization logic more than once, so you don't pay any performance penalty
- `import_module()` may raise an exception (for example, if the module isn't installed). If you're using it inside an fn function, you need to either handle errors (using a try/except clause), or add the raises keyword to the function signature. You'll also see this when calling Python functions that may raise exceptions. (Raising exceptions is much more common in Python code than in the Mojo standard library, which limits their use for performance reasons.)
- `mojo build` doesn't include the Python packages used by your Mojo project. Instead, Mojo loads the Python interpreter and Python packages at runtime, so they must be provided in the environment where you run the Mojo program (such as inside the Magic environment where you built the executable)
- You can't import Mojo modules from Python or call Mojo functions from Python. This prevents Mojo callbacks to a Python module

#### Add python dependency

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```sh
magic add "python>=311,<3.13" "pygame>=2.6.1,<3"
```

#### Import python

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```py
import numpy as np

def main():
    random_array = np.random.rand(size, size)
    print(random_array)
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```mojo
from python import Python

def main():
    var np = Python.import_module("numpy")
    var ar = np.arange(15).reshape(3, 5)
    print(ar)
    print(ar.shape)
```

```mojo
from python import Python

def main():
    Python.add_to_path("path/to/module")
    mypython = Python.import_module("mypython")

    values = mypython.gen_random_values(2, 3)
    print(values)
```

#### Interate over a python collections

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```py
# List iteration
py_list = [1, 2, 3]
for item in py_list:
    print(item)

# Dictionary iteration
py_dict = {'x': 1, 'y': 2}
for key in py_dict:
    print(key, py_dict[key])

# Dictionary items iteration
for key, value in py_dict.items():
    print(key, value)
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```mojo
from python import Python

py_list = Python.evaluate("[1, 2, 3]")
for py_obj in py_list:
    print(py_obj)

py_dict = Python.evaluate("{'x': 1, 'x': 2")
for py_key in py_dict:
    print(py_key, py_dict[py_key])

for py_tuple in py_dict.items():
    print(py_tuple[0], py_tuple[1])
```

#### Assign / pass by value / reference

**Interoperability**
- Mojo's object type is designed to support Python's style of argument passing for functions, which is different from the other types in Mojo
- Python's argument-passing convention is called "pass by object reference." This means when you pass a variable to a Python function, you actually pass a reference to the object, as a value (so it's not strictly reference semantics)
- Passing the object reference "as a value" means that the argument name is just a container that acts like an alias to the original object. If you reassign the argument inside the function, it does not affect the caller's original value. However, if you modify the object itself (such as call append() on a list), the change is visible to the original object outside the function

```py
# Example: mutate object
def modify_list(l):                      # l = ar, ar = [1, 2]
    l.append(3)                          # l = ar, ar = [1, 2, 3]

ar = [1, 2]                              # ar = [1, 2]
modify_list(ar)                          # ar = [1, 2, 3]

# Example: change reference
def change_list(l):                      # l = ar,     ar = [1, 2]
    l = [3, 4]                           # l = [3, 4], ar = [1, 2]

ar = [1, 2]                              # ar = [1, 2]
change_list(ar)                          # ar = [1, 2]
```

### See also

- [Add python package dependency](./interoperability#add-package-dependency)
