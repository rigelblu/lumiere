### Interoperability

#### Add python dependency

##### Python (version >=0.x.x)

```sh
magic add "python>=311,<3.13" "pygame>=2.6.1,<3"
```

#### Import python

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

```mojo
from python import Python

def main():
    var np = Python.import_module("numpy")
    var ar = np.arange(15).reshape(3, 5)
    print(ar)
    print(ar.shape)
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```

#### Interate over a python collections

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

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

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```
