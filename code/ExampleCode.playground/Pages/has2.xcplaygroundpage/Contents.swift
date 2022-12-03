//: [Previous](@previous)

import Foundation


struct Employee: Hashable {
  
 var name: String
 var salary: Int

 // create a hash() function to only compare  age property
 func hash(into hasher: inout Hasher) {
   hasher.combine(salary)
 }

}

// initialize two objects with different values for salary property
let obj1 = Employee(name: "Sabby", salary: 349879)
let obj2 = Employee(name: "Sabby", salary: 422532)

print(obj1.hashValue)
print(obj2.hashValue)
