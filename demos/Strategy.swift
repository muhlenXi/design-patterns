import Foundation

// MARK: - Design

class Strategy {
    func algorithm(){}
}

class ConcreteStrategyA: Strategy {
    override func algorithm() {
        print("实现了算法 A")
    }
}

class ConcreteStrategyB: Strategy {
    override func algorithm() {
        print("实现了算法 B")
    }
}

class ConcreteStrategyC: Strategy {
    override func algorithm() {
        print("实现了算法 C")
    }
}

class Context {
    var strategy: Strategy
    
    init(strategy: Strategy) {
        self.strategy = strategy
    }
    
    func performAlgorithm() {
        strategy.algorithm()
    }
}


// MARK: - Test

var context = Context(strategy: ConcreteStrategyA())
context.performAlgorithm()

context = Context(strategy: ConcreteStrategyB())
context.performAlgorithm()

context = Context(strategy: ConcreteStrategyC())
context.performAlgorithm()
