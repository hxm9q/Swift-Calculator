import Foundation

func getOperation() -> String {
    var operation: String?
    
    while true {
        print("Выберите операцию из предложенных: \(allOperations)")
        operation = readLine()
        
        guard allOperations.contains(operation ?? "") else {
            print("Выберите корректную операцию")
            continue
        }
        break
    }
    
    return operation!
}

func getFirstDigit() -> Int {
    var str: String?
    var digit: Int = 0
    
    while true {
        print("Введите первое число:")
        str = readLine()
        
        guard let s = str else {
            print("Введите корректное целочисленное значение")
            continue
        }
        guard let d = Int(s) else {
            print("Введите корректное целочисленное значение")
            continue
        }
        digit = d
        break
    }
    
    return digit
}

func getSecondDigit() -> Int {
    var str: String?
    var digit: Int = 0
    
    while true {
        print("Введите второе число: ")
        str = readLine()
        
        guard let s = str else {
            print("Введите корректное целочисленное значение ")
            continue
        }
        guard let d = Int(s) else {
            print("Введите корректное целочисленное значение ")
            continue
        }
        digit = d
        break
    }
    
    return digit
}

func calculator(_ operation: String, _ first: Int, _ second: Int) -> Double {
    var result: Double = 0
    switch operation {
    case "+":
        result = Double(first + second)
    case "-":
        result = Double(first - second)
    case "*":
        result = Double(first * second)
    case "/":
        if second != 0 {
            result = Double(first / second)
        } else {
            print("Division by zero")
            break
        }
    case "^":
        result = pow(Double(first), Double(second))
    default:
        break
    }
    
    return result
}

