//: [Previous](@previous)

import Foundation

struct Employee: Equatable {
    
  var name: String
  var salary: Int

  // create a equatable function to only compare age property
  static func == (lhs: Employee, rhs: Employee) -> Bool {
    return lhs.salary == rhs.salary
  }
}

// initialize two objects with different values for name property
let obj1 = Employee(name: "Sabby", salary: 34000)
let obj2 = Employee(name: "Cathy", salary: 34000)

// compare obj1 and obj2
if obj1 == obj2 {
  print("obj1 and obj2 are equal")
}
else {
  print("obj1 and obj2 are not equal")
}
