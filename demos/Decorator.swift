import Foundation

// MARK: - Design

class Component {
    func operation() {}
}

class ConcreteComponent: Component {
    override func operation() {
        print("具体对象操作")
    }
}


class Decorator: Component {
    var component: Component!
    
    func setup(component: Component) {
        self.component = component
    }
    
    override func operation() {
        component.operation()
    }
}

class ConcreteDecoratorA: Decorator {
    private var addedState: String = ""
    
    override func operation() {
        super.operation()
        addedState = "New State"
        print("具体装饰对象 A 的操作")
    }
}

class ConcreteDecoratorB: Decorator {
    override func operation() {
        super.operation()
        self.addBehavior()
    }
    
    private func addBehavior() {
        print("具体装饰对象 B 新增行为")
    }
}

// MARK: - Test

let component = ConcreteComponent()
let da = ConcreteDecoratorA()
let db = ConcreteDecoratorB()

da.setup(component: component)
db.setup(component: da)

db.operation()

