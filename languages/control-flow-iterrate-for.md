### Control Flow / Interate For

#### Execute block for a range of items

##### Python (version >=x.x.x)

```py
# TODO:
```

##### Mojo (version >=x.x.x)

```mojo
for i in range(5):
    print(i, end=", ")

for i in range(5):
    if i == 3:
        continue
    print(i, end=", ")

for i in range(5):
    if i == 3:
        break
    print(i, end=", ")

# TODO: break out into seperate heading
for i in range(5):
    print(i, end=", ")
else:
    print("\nFinished executing 'for' loop")
```

##### Typescript (version >=x.x.x)

```ts
// TODO:
```

##### Go (version >=x.x.x)

```go
// TODO:
```

#### Execute block over items in a list

##### Python (version >=x.x.x)

```py
# TODO:
```

##### Mojo (version >=x.x.x)

```mojo
from collections import List

colors = List[String]("Blue", "Yellow")
for color in colors:
    print(color[]) # Required to reference the element
else:
    print("Finished executing 'for' loop")
```

##### Typescript (version >=x.x.x)

```ts
// TODO:
```

##### Go (version >=x.x.x)

```go
// TODO:
```

#### Execute block over items in a set

##### Python (version >=x.x.x)


```py
# TODO:
```

##### Mojo (version >=x.x.x)

```mojo
from collections import Set

years = Set[Int](2024, 2025, 2026)
for year in years:
    print(year[])
```

##### Typescript (version >=x.x.x)

```ts
// TODO:
```

##### Go (version >=x.x.x)

```go
// TODO:
```

#### Execute block over items in a dictionary / map

##### Python (version >=x.x.x)

```py
# TODO:
```

##### Mojo (version >=x.x.x)

```mojo
from collections import Dict

colors = Dict[String, String]()
colors["Primary"] = "Blue"
colors["Secondary"] = "Yellow"

for color in colors:
    print(colors[color[]] + ", " + color[])

for item in colors.items():
    print(item[].value + ", " + item[].key)
```

##### Typescript (version >=x.x.x)

```ts
// TODO:
```

##### Go (version >=x.x.x)

```go
// TODO:
```

#### Execute block for a list of items

##### Python (version >=x.x.x)

```py
# TODO:
```

##### Mojo (version >=x.x.x)

```mojo

```

##### Typescript (version >=x.x.x)

```ts
// TODO:
```

##### Go (version >=x.x.x)

```go
// TODO:
```

#### Execute block for a list of items

##### Python (version >=x.x.x)

```py
# TODO:
```

##### Mojo (version >=x.x.x)

```mojo

```

##### Typescript (version >=x.x.x)

```ts
// TODO:
```

##### Go (version >=x.x.x)

```go
// TODO:
```

#### Execute block for a list of items

##### Python (version >=x.x.x)

```py
# TODO:
```

##### Mojo (version >=x.x.x)

```mojo

```

##### Typescript (version >=x.x.x)

```ts
// TODO:
```

##### Go (version >=x.x.x)

```go
// TODO:
```
