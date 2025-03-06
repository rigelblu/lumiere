### Tooling

#### Initiatialize project

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "-" }
```

```sh
# TODO:
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```sh
# "--mojoproject" adds max package as a dependency, which includes Mojo
magic init hello --format mojoproject
cd hello
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```sh
# TODO:
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm"
}
```

```sh
# TODO:
```

#### Artifacts

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "-" }
```

```sh
# TODO:
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```


`.gitattributes` -
`.gitignore` -
- `.magic` - virtual environment for the project
- `magic.lock` - specifies the transitive dependencies and actual package versions installed in the project's virtual environment
- `mojoproject.toml` -  defines the project dependencies and other features

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```sh
# TODO:
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```sh
# TODO:
```

#### Download and load project's virtual environemnt

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "-" }
```

```sh
# TODO:
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```sh
magic shell
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```sh
# TODO:
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```sh
# TODO:
```

#### Run program

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "-" }
```

```sh
# TODO:
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```sh
mojo hello.mojo
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```sh
# TODO:
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```sh
# TODO:
```

#### Compile program into an executable

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "-" }
```

```sh
# TODO:
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```sh
mojo build hello.mojo
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```sh
# TODO:
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```sh
# TODO:
```

#### Add package dependency

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "-" }
```

```sh
# TODO:
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```sh
magic add {{package-name}}
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```sh
# TODO:
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```sh
# TODO:
```

#### Compile package

##### Python

```json
metadata { "language": "python", "language_version":">=0.x.x", "code_role": "trail", "code_author": "-" }
```

```sh
# TODO:
```

##### Mojo

```json
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```sh
mojo package package1 -o compiled_pkg1.mojopkg
```

##### TypeScript

```json
metadata { "language": "typescript", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```sh
# TODO:
```

##### Go

```json
metadata { "language": "go", "language_version":">=0.x.x", "code_role": "trail", "code_author": "llm" }
```

```sh
# TODO:
```
