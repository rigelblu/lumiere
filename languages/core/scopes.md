### Core - Scopes

#### Make variable available globally across program

Python (version >=0.x.x)

```py
global_var = "I'm global"
```

Mojo (version >=0.x.x)

```mojo
# Not built into language
```

Typescript (version >=0.x.x)

```ts
// Not built into language
```

Go (version >=0.x.x)

```go
// Not built into language
```

#### Make variables privately available only to it's package / file

Python (version >=0.x.x)

```py
# Not built into language. Use nearest equivalent, a naming convention

# ./pkg1/__init__.py
# ./pkg1/file1.py
_PRIMARY = "blue"

# ./pkg2/__init__.py
# ./pkg2/file2.py
# _PRIMARY won't be imported
from ..pkg1/file1 import *
```

Mojo (version >=0.x.x)

```mojo
# TODO: confirm if it's not built into language or if it follows python pattern
```

Typescript (version >=0.x.x)

```ts
// ./pkg1/file1.ts
const PRIMARY: string = "blue"

// ./pkg2/file2.ts
// PRIMARY won't be imported
import * from '../pkg1/file1'

// Trying to import PRIMARY manually will fail
import { PRIMARY } from '../pkg1/file1';
```

Go (version >=0.x.x)

```go
// ./pkg1/file1.go
package colors

// Use lower case first letter to make private to package
const primary string = "blue"

// ./pkg2/file2.go
import "colors"

// Trying to use primary will fail
c1 := colors.primary
```

#### Make variables publically available to other packages / files

Python (version >=0.x.x)

```py
# Not built into language. Use nearest equivalent

# ./pkg1/__init__.py
# ./pkg1/file1.py
PRIMARY = "blue"

# ./pkg2/__init__.py
# ./pkg2/file2.py
# PRIMARY will be imported
from ../pkg1/file1 import *
```

Mojo (version >=0.x.x)

```mojo
# ./pkg1/file1.py
PRIMARY = "blue"

# ./pkg2/file2.py
from ..pkg1/file1 import *
```

Typescript (version >=0.x.x)

```ts
// ./pkg1/file1.ts
export const PRIMARY: string = "blue"

// ./pkg2/file2.ts
// PRIMARY will be imported
import * from '../pkg1/file1'

// Importing PRIMARY manually will succeed
import { PRIMARY } from '../pkg1/file1';
```

Go (version >=0.x.x)

```go
// ./pkg1/file1.go
package colors

// Use upper case first letter to make public to other packages
const Primary string = "blue"

// ./pkg2/file2.go
import "colors"

// Using Primary will succeed
c1 := colors.Primary
```

```go
// ./pkg1/file1.go
package colors

// Use upper case first letter to make public to other packages
const Primary string = "blue"

// ./pkg1/file1_test.go
package colors_test

import "colors"

c1 := Primary
```

#### Make variables available only to it's local block

Python (version >=0.x.x)

```py
if condition:
  # code...
```

Mojo (version >=0.x.x)

```mojo
if condition:
  # code...
```

Typescript (version >=0.x.x)

```ts
if (condition) {
  // code...
}
```

Go (version >=0.x.x)

```go
if condition {
  // code...
}
```
