### Metaprogramming

#### Define a parameter at compile time

##### Python (version >=0.x.x)

```py
# TODO:
```

##### Mojo (version >=0.x.x)

```mojo
# Define parameter count
def repeat[count: Int](msg: String):
    @parameter # evaluate the following for loop at compile time
    for i in range(count):
        print(msg)

# Specify paramater and argument
repeat[3]("Hello")
```

##### Typescript (version >=0.x.x)

```ts
// TODO:
```

##### Go (version >=0.x.x)

```go
// TODO:
```
