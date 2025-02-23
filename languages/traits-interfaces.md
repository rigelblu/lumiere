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

#### Implement an index access trait

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

  # Getter
  def __getitem__(self, x: Int, y: Int) -> Int:
      return List(self.x, self.y)

  # Setter
  def __setitem__(mut self, x: Int, y: Int) -> None:
      self.x = x
      self.y = y

print(Point(1,2)[0])
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```
