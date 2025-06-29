# Concurrency - Channels

## Channels

## Go

The `<-` operator in Go is used for channel operations. It has two main uses:

Send a value to a channel: `channel <- value`
Receive a value from a channel: `value := <-channel`

Channels are a core concurrency primitive in Go, allowing goroutines to communicate with each other.
