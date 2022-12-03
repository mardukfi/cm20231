//: [Previous](@previous)

import Foundation

let json = """
[
    {
        "user_first_name": "Taylor",
        "user_last_name": "Swift",
        "user_age": 26
    }
]
"""
let data = Data(json.utf8)

struct User: Codable {
    var firstName: String
    var lastName: String
    var age: Int
    
    enum CodingKeys: String, CodingKey {
        case firstName = "user_first_name"
        case lastName = "user_last_name"
        case age = "user_age"
    }
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
