### Standard Library

REFACTOR: move into separate files inside a standard-library directory

#### Print to console

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```py
# TODO:
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**Examples:**
```mojo
# TODO:
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```ts
// TODO:
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// TODO:
```

#### Use standard library traits

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```py
# TODO:
```

##### Mojo

**What's available:**
- `Absable`
- `AnyType`
- `Boolable`
- `BoolableCollectionElement`
- `BoolableKeyElement`
- `CollectionElement`
- `Comparable`
- `ComparableCollectionElement`
- `Copyable`
- `Defaultable`
- `Hashable`
- `Indexer`
- `Intable`: can be implicitly converted to Int
- `IntableRaising`: can be implicitly converted to Int and raises an error if not possible
- `KeyElement`
- `Movable`
- `PathLike`
- `Powable`
- `Representable`
- `RepresentableCollectionElement`
- `RepresentableKeyElement`
- `Sized`: has a measurable length, like strings and arrays
- `Stringable`: can be explicitly converted to String
- `StringableRaising`: can be explicitly converted to String and raises an error if not possible
- `StringRepresentable`: can be used with the built-in `repr()` function
- `Roundable`
- `Writable`: can be converted to a stream of UTF-8 encoded data by writing to a Writer object
- `WritableCollectionElement`
- `Writer`
- `Truncable`

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

**Examples:**
```mojo
# TODO:
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

**Examples:**
```ts
// TODO:
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```go
// TODO:
```

### TODO:

- range() function
- Context Managers: `NamedTemporaryFile`, `TemporaryDirectory`, `BlockingScopedLock`, `assert_raises`
