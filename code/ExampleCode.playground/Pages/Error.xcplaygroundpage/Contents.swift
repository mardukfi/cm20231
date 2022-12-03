//: [Previous](@previous)

import Foundation

enum BankAccount: Error {
    case insufficientFunds
    case invalidTransaction
    case duplicateTransaction
    case unknown
}
var funds = 10
func withdrawCash (amount: Int) throws -> Int  {
    if funds - amount < 0 {
        throw BankAccount.insufficientFunds
    }
    else {
        funds -= amount
    }
    return funds

}

do {
    let printFounds = try withdrawCash(amount: 15)
    print(printFounds)
}
catch{
    print("Error  \(error)")
}
