import Foundation

// MARK: - Design

class Originator {
    var state: String = ""
    
    func createMemento() -> Memento {
        return Memento(state: state)
    }
    
    func setupMemento(_ memento: Memento){
        self.state = memento.state
    }
    
    func show() {
        print("state: \(state)")
    }
}

class Memento {
    var state: String
    
    init(state: String) {
        self.state = state
    }
}

class Caretaker {
    var memento: Memento
    
    init(memento: Memento) {
        self.memento = memento
    }
}

// MARK: - Test
let o = Originator()
o.state = "On"
o.show()

let c = Caretaker(memento: o.createMemento())
o.state = "Off"
o.show()

o.setupMemento(c.memento)
o.show()
