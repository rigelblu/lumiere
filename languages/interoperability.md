### Interoperability

#### Add python dependency

##### Mojo

```json
metadata {
  "language": "mojo",
  "language_version":">=0.6.x",
  "code_role": "anchor",
  "code_author": "human"
}
```

```sh
magic add "python>=311,<3.13" "pygame>=2.6.1,<3"
```

#### Import python

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
import numpy as np

def main():
    ar = np.arange(15).reshape(3, 5)
    print(ar)
    print(ar.shape)
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
from python import Python

def main():
    var np = Python.import_module("numpy")
    var ar = np.arange(15).reshape(3, 5)
    print(ar)
    print(ar.shape)
```

#### Interate over a python collections

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
metadata {
  "language": "mojo",
  "language_version":">=0.6.x",
  "code_role": "anchor",
  "code_author": "human"
}
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
