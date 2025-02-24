### Traits & Interfaces

#### Define a trait

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

```mojo
trait ColorTrait:
    # The three dots following the method signature indicates the method is not implemented
    def HSL(self): ...
```

##### Typescript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```



#### Conform struct to a string trait

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
    var data: List[List[Int]]

    # Getter
    def __getitem__(self, x: Int, y: Int) -> Int:
        return self.data[x][y]

    # Setter
    def __setitem__(mut self, x: Int, y: Int, value: Int) -> None:
        self.data[x][y] = value

def main():
    p = Point(List(List(11, 22), List(33, 44)))
    p[1, 1] = 33
    print(p[0, 1])
```

##### TypeScript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```

#### Conform function argument type to a trait

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

```mojo
# TODO: test if this works
struct Color:
    var R: Int
    var G: Int
    var B: Int
    var CMYK: Tuple[Int, Int, Int, Int]

trait ColorTrait:
    var CMYK: Tuple[Int, Int, Int, Int]

# Function parameter is `[T: ColorTrait]`
fn joinCyan[T: ColorTrait](c1: T, c2: T) -> Int:
    return c1.CMYK[0] + c2.CMYK[0]

fn use_trait_function():
    var c1 = Color(0, 0, 255)
    var c2 = Color(0, 255, 255)
    joinCyan(c1, c2)
```

##### Typescript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```

#### Conform to a writeable trait

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

**Constraints:s**
- The Writable trait doesn't allow the write_to() method to raise an error and the Stringable trait doesn't allow the __str__() method to raise an error. Instead have to define these methods with fn

```mojo
@value
struct Complex(
    Writable,
    Stringable,
):
    # code...

    fn __str__(self) -> String:
        return String.write(self)

    fn write_to[W: Writer](self, mut writer: W):
        writer.write("(", self.re)
        if self.im < 0:
            writer.write(" - ", -self.im)
        else:
            writer.write(" + ", self.im)
        writer.write("i)")

c3 = Complex(3.14159, -2.71828)
print("c3 =", c3)

var msg = String("The value is: ", c3)
print(msg)
```

##### Typescript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```
