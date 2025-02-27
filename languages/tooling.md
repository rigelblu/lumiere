### Tooling

#### Initiatialize project

##### Python

```json
metadata {
  "language": "python",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "-"
}
```

```sh
# TODO:
```

##### Mojo (version >=0.x.x)

```sh
# "--mojoproject" adds max package as a dependency, which includes Mojo
magic init hello --format mojoproject
cd hello
```

##### TypeScript (version >=0.x.x)

```sh
# TODO:
```

##### Go (version >=0.x.x)

```sh
# TODO:
```

#### Artifacts

##### Python

```json
metadata {
  "language": "python",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "-"
}
```

```sh
# TODO:
```

##### Mojo (version >=0.x.x)


`.gitattributes` -
`.gitignore` -
- `.magic` - virtual environment for the project
- `magic.lock` - specifies the transitive dependencies and actual package versions installed in the project's virtual environment
- `mojoproject.toml` -  defines the project dependencies and other features
```

##### TypeScript (version >=0.x.x)

```sh
# TODO:
```

##### Go (version >=0.x.x)

```sh
# TODO:
```

#### Download and load project's virtual environemnt

##### Python

```json
metadata {
  "language": "python",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "-"
}
```

```sh
# TODO:
```

##### Mojo (version >=0.x.x)

```sh
magic shell
```

##### TypeScript (version >=0.x.x)

```sh
# TODO:
```

##### Go (version >=0.x.x)

```sh
# TODO:
```

#### Run program

##### Python

```json
metadata {
  "language": "python",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "-"
}
```

```sh
# TODO:
```

##### Mojo (version >=0.x.x)

```sh
mojo hello.mojo
```

##### TypeScript (version >=0.x.x)

```sh
# TODO:
```

##### Go (version >=0.x.x)

```sh
# TODO:
```

#### Compile program into an executable

##### Python

```json
metadata {
  "language": "python",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "-"
}
```

```sh
# TODO:
```

##### Mojo (version >=0.x.x)

```sh
mojo build hello.mojo
```

##### TypeScript (version >=0.x.x)

```sh
# TODO:
```

##### Go (version >=0.x.x)

```sh
# TODO:
```

#### Add package dependency

##### Python

```json
metadata {
  "language": "python",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "-"
}
```

```sh
# TODO:
```

##### Mojo (version >=0.x.x)

```sh
magic add {{package-name}}
```

##### TypeScript (version >=0.x.x)

```sh
# TODO:
```

##### Go (version >=0.x.x)

```sh
# TODO:
```

#### Compile package

##### Python

```json
metadata {
  "language": "python",
  "language_version":">=0.x.x",
  "code_role": "trail",
  "code_author": "-"
}
```

```sh
# TODO:
```

##### Mojo (version >=0.x.x)

```sh
mojo package package1 -o compiled_pkg1.mojopkg
```

##### TypeScript (version >=0.x.x)

```sh
# TODO:
```

##### Go (version >=0.x.x)

```sh
# TODO:
```
