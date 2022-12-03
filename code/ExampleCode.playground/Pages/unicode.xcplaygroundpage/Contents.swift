//: [Previous](@previous)

import Foundation

let flowers = "Flowers 💐"
for v in flowers.utf8 {
   // print(v)
}

let json = """
[
    {
        "name": "Paul",
        "age": 38
    },
    {
        "name": "Andrew",
        "age": 40
    }
]
"""

print(json.utf8)
