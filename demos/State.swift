import Foundation

// MARK: - Design

class Context {
    var state: State {
        didSet {
            print("当前状态：\(state)")
        }
    }
    
    init(state: State) {
        self.state = state
    }
    
    func requst() {
        state.handle(context: self)
    }
}

protocol State {
    func handle(context: Context)
}

class ConcreteStateA: State {
    func handle(context: Context) {
        context.state = ConcreteStateB()
    }
}

class ConcreteStateB: State {
    func handle(context: Context) {
        context.state = ConcreteStateA()
    }
}

// MARK: - Test

let c = Context(state: ConcreteStateA())
c.requst()
c.requst()
c.requst()
c.requst()
