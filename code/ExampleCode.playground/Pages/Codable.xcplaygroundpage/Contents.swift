//: [Previous](@previous)

import Foundation

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

let data = Data(json.utf8)

struct User: Codable {
    var name: String
    var age: Int
}


let decoder = JSONDecoder()
do{
    let decoded = try decoder.decode([User].self, from: data)
    for user in decoded {
        print(user)
    }
}catch{
    print("Failded to decode JSON")
}
