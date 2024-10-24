import Foundation

let allOperations = ["+", "-", "*", "/", "^"]

let operation = getOperation()
let firstDigit = getFirstDigit()
let secondDigit = getSecondDigit()

var result = calculator(operation, firstDigit, secondDigit)
print("Your result is \(result)")
