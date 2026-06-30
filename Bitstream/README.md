# Bitstream (WIP)

This module provides a set of functions for reading and writing binary data.
It provides a convenient way to serialize and deserialize data.

Features:
- Supports all types of data
- Supports auto allocation
- Supports custom types

Todo : 
- Refactoring `writeAs`
- Allowing recursive array in `writeArray`
- Add two custom types `writeLimitedArray` and `writeLimitedStruct` including their readers
  The comparaison between the default one of each is that keys for struct are limited to `255` (after catching all keys with `,` seperator) so this reduce the payload.
  For array the limit off value will be `255` and recursives array's will not be tolerated same for `writeLimitedStruct`.
- Start Serialization and Deserialization after finishing all readers
- Benchmark.

Idea : 
1. Maybe refactoring `writeStruct` when writing strings and use `writePrefixedString` instead
2. Add a way to really write instance in a buffer and not inside a table. (I dont know about this one)
