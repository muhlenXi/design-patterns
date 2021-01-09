import Foundation

// MARK: - Design

protocol Implementor {
    func newOperation()
}

protocol Abstraction {
    var implementor: Implementor { set get }
    func doOperation()
}

class ConcreteImplementorA: Implementor {
    func newOperation() {
        print("具体实现 A 的方法执行")
    }
}

class ConcreteImplementorB: Implementor {
    func newOperation() {
        print("具体实现 B 的方法执行")
    }
}


class AbstractionImplementor: Abstraction {
    var implementor: Implementor
    
    init(implementor: Implementor) {
        self.implementor = implementor
    }
    
    func doOperation() {
        implementor.newOperation()
    }
}

// MARK: - Design

let ab = AbstractionImplementor(implementor: ConcreteImplementorA())
ab.doOperation()

ab.implementor = ConcreteImplementorB()
ab.doOperation()
