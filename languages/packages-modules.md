### Packages & Modules

#### Create and use module

A module is a single file

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

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
