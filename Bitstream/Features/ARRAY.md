## Arrays now support repeated consecutive types using the `:<count>` syntax.

Previously, each type in the Types array could only match a single value. This made arrays containing multiple consecutive values of the same type unnecessarily verbose, especially when working with nested arrays.

----

Normal array

```lua
local ser = Bitstream.Serialize({
    Data = {
        Type = "Array",
        Types = {"PrefixedString:2"}
    }
}, {
    Data = {"A", "B"}
})
```

---

Instead of:
```lua
Types = {"PrefixedString", "PrefixedString"}
```
---

Mixed array

```lua
Types = {
    "U8:3",
    "Enum:2",
    "PrefixedString"
}
```

---

Instead of:

```lua
Types = {
    "U8", "U8", "U8",
    "Enum", "Enum",
    "PrefixedString"
}
```

---

Nested array

```lua
local ser = Bitstream.Serialize({
    Data = {
        Type = "Array",
        Types = {
            {
                Type = "Array",
                Types = {"PrefixedString:2"}
            }
        }
    }
}, {
    Data = {
        {"A", "B"}
    }
})
```

The `:<count>` suffix works with every supported type and keeps schemas more compact while preserving support for mixed-type arrays.
