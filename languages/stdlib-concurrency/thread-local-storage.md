# Concurrency - Thread Local Storage

### Python:

pythonimport threading
local = threading.local()
local.x = 1  # Each thread sees its own 'x'

### Go:

go// Context-based approach (preferred)
ctx := context.WithValue(context.Background(), "key", "value")

// sync.Map (thread-safe map)
var m sync.Map
m.Store("key", "value")

### Ruby:

rubyThread.current[:key] = "value"

### Rust:

rustthread_local! { static DATA: RefCell<String> = RefCell::new(String::new()) }
DATA.with(|data| data.borrow_mut().push_str("value"));

### JavaScript:

javascript// No built-in TLS - use closures in worker threads
// Node.js has AsyncLocalStorage
const { AsyncLocalStorage } = require('async_hooks');
const storage = new AsyncLocalStorage();
storage.run(new Map(), () => {
  storage.getStore().set('key', 'value');
});

The approach varies significantly by language based on concurrency models. Go prefers explicit context passing, while others have direct thread-local constructs.

### Java

thread local storage is implemented using the ThreadLocal class:
java// Create a ThreadLocal variable
ThreadLocal<String> threadLocalValue = new ThreadLocal<>();

// Set a value (unique to the current thread)
threadLocalValue.set("Thread-specific value");

// Get the value for the current thread
String value = threadLocalValue.get();

// Remove the value when done (prevents memory leaks)
threadLocalValue.remove();

## Thread-local storage should be used when:

You need data that belongs to a specific thread and shouldn't be shared with others
You want to avoid passing context through multiple layers of function calls
You need thread-safety without locks or synchronization

Specific use cases:

Transaction contexts in web applications
User identity/authentication information in request handlers
Resource pooling where each thread needs its own connection
Caching thread-specific data for performance
Profiling or logging that tracks per-thread metrics

When to avoid:

Don't use it for data that should be shared between threads
Be cautious about memory leaks (clean up when done, especially in thread pools)
Don't overuse it as a global state substitute
Consider alternatives like explicit context passing for better code clarity

A simpler approach is often to just pass parameters explicitly through your functions. This makes dependencies clear and is easier to test, though it can lead to parameter bloat.
