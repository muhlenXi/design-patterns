import Foundation

// MARK: - Design

protocol Flyweight {
    func operation(state: Int)
}

class ConcreteFlyweight: Flyweight {
    func operation(state: Int) {
        print("具体 Flyweight：\(state)")
    }
}

class UnsharedConcreteFlyweight: Flyweight {
    func operation(state: Int) {
        print("不共享的具体 Flyweight：\(state)")
    }
}

class FlyweightFactory {
    private var flyweights = Dictionary<String, Flyweight>()
    
    init() {
        flyweights["X"] = ConcreteFlyweight()
        flyweights["Y"] = ConcreteFlyweight()
        flyweights["Z"] = ConcreteFlyweight()
    }
    
    func getFlyweight(key: String) -> Flyweight? {
        return flyweights[key]
    }
}

// MARK: - Test

var state = 20
let factory = FlyweightFactory()
factory.getFlyweight(key: "X")?.operation(state: state)

state -= 1
factory.getFlyweight(key: "Y")?.operation(state: state)

state -= 1
factory.getFlyweight(key: "Z")?.operation(state: state)

state -= 1
let uf = UnsharedConcreteFlyweight()
uf.operation(state: state)
