# Green Threads (lightweight)

Concurrency is managing multiple tasks that progress independently, potentially switching between them. Like a chef handling multiple dishes by switching attention.
Parallelism is executing multiple tasks simultaneously using multiple resources. Like multiple chefs each cooking a separate dish.
Key differences:

Concurrency is about structure (dealing with multiple tasks)
Parallelism is about execution (doing multiple things at once)
Concurrency can work on a single core; parallelism requires multiple cores
Concurrency manages competing tasks; parallelism scales identical operations

You can have concurrency without parallelism, but parallelism requires a concurrent system

Concurrency & Parallelism Across Languages
Java

Concurrency: Threads, Executors, CompletableFuture
Parallelism: Fork/Join framework, parallel streams

JavaScript

Concurrency: Promises, async/await, Event Loop
Parallelism: Web Workers, Worker Threads (Node.js)

Python

Concurrency: asyncio (async/await), threading
Parallelism: multiprocessing, concurrent.futures

Rust

Concurrency: async/await, Futures
Parallelism: std::thread, Rayon library

Ruby

Concurrency: Threads, Fibers
Parallelism: Ractor (Ruby 3+), Process forking

C++

Concurrency: std::thread, std::async, std::future, std::mutex
Parallelism: std::thread, OpenMP, TBB (Thread Building Blocks)

## Go
Goroutines are Go's lightweight threads managed by the Go runtime, not the OS. They're more efficient than traditional threads.

To use a goroutine, just add the go keyword before a function call:
gofunc main() {
    go doSomething() // This runs concurrently
    // Main continues executing
    time.Sleep(1 * time.Second) // Wait for goroutine to finish
}

func doSomething() {
    // Some operation
}

Communication between goroutines happens through channels:
gofunc main() {
    ch := make(chan string)
    go send(ch)
    msg := <-ch // Receive from channel
    fmt.Println(msg)
}

func send(ch chan string) {
    ch <- "Hello from goroutine"
}
Essential patterns:

Use sync.WaitGroup to wait for multiple goroutines
Use channels for communication and synchronization
For shared memory, use mutexes from the sync package

Java
Java uses threads with the Thread class or ExecutorService:
java// Using Thread
Thread thread = new Thread(() -> {
    // your code here
});
thread.start();

// Using ExecutorService
ExecutorService executor = Executors.newFixedThreadPool(10);
executor.submit(() -> {
    // your code here
});
JavaScript
JavaScript uses Promises, async/await, or callbacks:
javascript// Promises
new Promise((resolve) => {
    // async work
    resolve(result);
}).then(result => console.log(result));

// Async/await
async function example() {
    const result = await someAsyncFunction();
    console.log(result);
}
Python
Python has asyncio, threading, and multiprocessing:
python# Asyncio
import asyncio

async def example():
    await asyncio.sleep(1)
    return "Done"

asyncio.run(example())

# Threading
import threading

thread = threading.Thread(target=function_name)
thread.start()
Rust
Rust uses async/await with futures:
rustasync fn example() -> Result<(), Box<dyn Error>> {
    // async work
    Ok(())
}

#[tokio::main]
async fn main() {
    example().await.unwrap();
}
Ruby
Ruby has threads and fibers:
ruby# Threads
thread = Thread.new do
  # code here
end
thread.join

# Fibers (lightweight coroutines)
fiber = Fiber.new do
  # code here
  Fiber.yield some_value
end
result = fiber.resume
Each language implements concurrency differently, with Go's goroutines being uniquely lightweight and handled by the language runtime rather than the OS.
