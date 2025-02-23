### Traits & Interfaces

One or more method signatures that must be implemented by a type.

#### Implement a string representation trait

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

```mojo
@value
struct Point(StringableRaising):
  var x: Int
  var y: Int

  def __str__(self) -> String:
    # code...

print(String(Point(1,2)))
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```

#### Implement index access trait

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

```mojo
@value
struct Point:
    var data: List[Int]

    # Getter
    def __getitem__(self, x: Int) -> Int:
        return self.data[x]

    # Setter
    def __setitem__(mut self, x: Int, value: Int) -> None:
        self.data[x] = value

def main():
    p = Point(List(11, 22))
    p[1] = 33
    print(p[1])
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```
