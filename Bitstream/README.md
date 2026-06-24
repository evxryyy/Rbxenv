# Bitstream (WIP)

This module provides a set of functions for reading and writing binary data.
It provides a convenient way to serialize and deserialize data.

Features:
- Supports all types of data
- Supports auto allocation
- Supports custom types

Todo : 
- Finish all readers
- Start Serialization and Deserialization after finishing all readers
- Benchmark

Idea : 
1. Since now array and struct limitation is removed i know that it take more space so i'm wondering if i need to make like a `writeLimitedArray` and `writeLimitedStruct` to reduce space
2. Maybe refactoring `writeStruct` when writing strings and use `writePrefixedString` instead
3. Add a way to really write instance in a buffer and not inside a table. (I dont know about this one)
