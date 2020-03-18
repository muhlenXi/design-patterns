import Foundation

// MARK: - Design

protocol Mediator {
    func send(message: String, fromColleague: Colleague)
}

class Colleague {
    var mediator: Mediator
    var name: String
    
    init(name: String, mediator: Mediator) {
        self.mediator = mediator
        self.name = name
    }
}

extension Colleague: Equatable {
    static func == (lhs: Colleague, rhs: Colleague) -> Bool {
        return lhs.name == rhs.name
    }
}

class ConcreteColleague1: Colleague {
    func sendMessage(_ msg: String) {
        mediator.send(message: msg, fromColleague: self)
    }
    
    func notify(_ msg: String) {
        print("同事\(name) 得到信息：" + msg)
    }
}

class ConcreteColleague2: Colleague {
    func sendMessage(_ msg: String) {
        mediator.send(message: msg, fromColleague: self)
    }
    
    func notify(_ msg: String) {
        print("同事\(name) 得到信息：" + msg)
    }
}

class ConcreteMediator: Mediator {
    var colleague1:ConcreteColleague1?
    var colleague2:ConcreteColleague2?
    
    func send(message: String, fromColleague: Colleague) {
        guard let colleague1 = colleague1 else { return }
        guard let colleague2 = colleague2 else { return }
        
        if fromColleague == colleague1 {
            colleague2.notify(message)
        } else {
            colleague1.notify(message)
        }
    }
}

// MARK: - Test
let mediator = ConcreteMediator()
let c1 = ConcreteColleague1(name: "c1", mediator: mediator)
let c2 = ConcreteColleague2(name: "c2", mediator: mediator)

mediator.colleague1 = c1
mediator.colleague2 = c2

c1.sendMessage("吃了么？")
c2.sendMessage("没呢，你打算请客么？")

