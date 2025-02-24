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
