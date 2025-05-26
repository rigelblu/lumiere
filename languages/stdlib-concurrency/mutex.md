# Concurrency - Mutex

A mutex (mutual exclusion) in Go is a synchronization primitive that prevents multiple goroutines from accessing shared resources concurrently.

## Go
Here's how to use it:
goimport "sync"

func main() {
    var mu sync.Mutex
    counter := 0

    // Lock before accessing shared resource
    mu.Lock()
    counter++
    // Unlock when done
    mu.Unlock()

    // RWMutex for read-heavy workloads
    var rwMu sync.RWMutex
    // Multiple readers can acquire read lock
    rwMu.RLock()
    _ = counter // Read operation
    rwMu.RUnlock()

    // Only one writer at a time
    rwMu.Lock()
    counter++
    rwMu.Unlock()
}
Common patterns:

Always pair Lock() with Unlock() (defer is useful)
Use RWMutex when reads outnumber writes
Keep critical sections small
Avoid nested locks to prevent deadlocks

## Java:
javaimport java.util.concurrent.locks.ReentrantLock;

ReentrantLock mutex = new ReentrantLock();
try {
    mutex.lock();
    // Critical section
} finally {
    mutex.unlock();
}

## JavaScript:
javascript// JS has no built-in mutex, use libraries or class-based implementation
class Mutex {
  constructor() {
    this.locked = false;
    this.queue = [];
  }

  async lock() {
    if (!this.locked) {
      this.locked = true;
      return;
    }
    return new Promise(resolve => this.queue.push(resolve));
  }

  unlock() {
    if (this.queue.length > 0) {
      const next = this.queue.shift();
      next();
    } else {
      this.locked = false;
    }
  }
}

// Usage
const mutex = new Mutex();
await mutex.lock();
// Critical section
mutex.unlock();

## Python:
pythonimport threading

mutex = threading.Lock()

**Option 1: with statement**
with mutex:
    # Critical section

**Option 2: explicit lock/unlock**
mutex.acquire()

**Critical section**
mutex.release()

## Rust:
rustuse std::sync::Mutex;

let mutex = Mutex::new(0); // Wraps a value

// Automatic locking/unlocking via RAII
{
    let mut data = mutex.lock().unwrap();
    *data += 1;
} // Lock released when data goes out of scope

## Ruby:
rubyrequire 'thread'

mutex = Mutex.new

**Option 1: explicit lock/unlock**
mutex.lock
**Critical section**
mutex.unlock

**Option 2: synchronized block**
mutex.synchronize do
  **Critical section**
end
