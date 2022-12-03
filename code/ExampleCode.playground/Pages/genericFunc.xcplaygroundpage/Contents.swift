//: [Previous](@previous)

import Foundation

// create a generic function
func displayData<T>(data: T) {
print("Generic Function:")
print("Data Passed:", data)
}

// generic function working with String
displayData(data: "Swift")

// generic function working with Int
displayData(data: 5)
