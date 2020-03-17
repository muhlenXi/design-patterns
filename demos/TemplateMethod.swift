import Foundation

// MARK: - Design

class AbstractClass {
    func templateMethod() {
        print("算法的骨架")
        primitiveOperation1()
        primitiveOperation2()
    }
    
    func primitiveOperation1() {}
    func primitiveOperation2() {}
}

class ConcreteClassA: AbstractClass {
    override func primitiveOperation1() {
        print("具体类 A 操作 1 实现")
    }
    
    override func primitiveOperation2() {
        print("具体类 A 操作 2 实现")
    }
}

class ConcreteClassB: AbstractClass {
    override func primitiveOperation1() {
        print("具体类 B 操作 1 实现")
    }
    
    override func primitiveOperation2() {
        print("具体类 B 操作 2 实现")
    }
}

// MARK: - Test

var c: AbstractClass
c = ConcreteClassA()
c.templateMethod()

c = ConcreteClassB()
c.templateMethod()
