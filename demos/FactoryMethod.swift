import Foundation

// MARK: - Design

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

protocol OperationFactory {
    func createOperate() -> Operation
}

class OperationAddFactory: OperationFactory {
    func createOperate() -> Operation {
        return OperationAdd()
    }
}

class OperationSubFactory: OperationFactory {
    func createOperate() -> Operation {
        return OperationSub()
    }
}

class OperationMulFactory: OperationFactory {
    func createOperate() -> Operation {
        return OperationMul()
    }
}

class OperationDivFactory: OperationFactory {
    func createOperate() -> Operation {
        return OperationDiv()
    }
}


// MARK: - Test

let addFactory = OperationAddFactory()
let op = addFactory.createOperate()
op.number1 = 4
op.number2 = 5
print(op.getResut())
