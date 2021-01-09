import Foundation

// MARK: - Design

class OperationFactory {
    static func createOperate(_ op: Operation.Operator) -> Operation {
        switch op {
        case .add:
            return OperationAdd()
        case .sub:
            return OperationSub()
        case .mul:
            return OperationMul()
        case .div:
            return OperationDiv()
        }
    }
}

class Operation {
    enum Operator {
        case add, sub, mul, div
    }
    
    
    var number1: Double = 0
    var number2: Double = 0
    
    func getResut() -> Double {
        return 0.0
    }
}

class OperationAdd: Operation {
    override func getResut() -> Double {
        return number1 + number2
    }
}

class OperationSub: Operation {
    override func getResut() -> Double {
        return number1 - number2
    }
}

class OperationMul: Operation {
    override func getResut() -> Double {
        return number1 * number2
    }
}

class OperationDiv: Operation {
    override func getResut() -> Double {
        guard number2 > 0 else {
            fatalError("number2 can not zero!")
        }
        
        return number1 / number2
    }
}



// MARK: - Test

let num1: Double = 6
let num2: Double = 2

let add = OperationFactory.createOperate(.add)
add.number1 = num1
add.number2 = num2
print(add.getResut())

let sub = OperationFactory.createOperate(.sub)
sub.number1 = num1
sub.number2 = num2
print(sub.getResut())

let mul = OperationFactory.createOperate(.mul)
mul.number1 = num1
mul.number2 = num2
print(mul.getResut())

let div = OperationFactory.createOperate(.div)
div.number1 = num1
div.number2 = num2
print(div.getResut())
