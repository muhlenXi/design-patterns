import Foundation

// MARK: Design

class Subjuct {
    private var observers = [Observer]()
    
    func addObserver(_ observer: Observer) {
        observers.append(observer)
    }
    
    func removeObserver(_ observer: Observer) {
        if let index = observers.firstIndex(of: observer) {
            observers.remove(at: index)
        }
    }
    
    func notify() {
        for ob in observers {
            ob.update()
        }
    }
}

class ConcreteSubject: Subjuct {
    var state: String = "default"
}

class Observer: Equatable {
    private let id = UUID()
    
    func update() {
        
    }
    
    static func == (lhs: Observer, rhs: Observer) -> Bool {
        return lhs.id == rhs.id
    }
}

class ConcreteObserver: Observer {
    private let name: String
    private let concreteSubject: ConcreteSubject
    
    init(name: String, subject: ConcreteSubject) {
        self.name = name
        self.concreteSubject = subject
    }
    
    override func update() {
        print("观察者 \(name) 的新状态是 \(concreteSubject.state)")
    }
}

// MARK: - Test
let s = ConcreteSubject()

s.addObserver(ConcreteObserver(name: "X", subject: s))
s.addObserver(ConcreteObserver(name: "Y", subject: s))
s.addObserver(ConcreteObserver(name: "Z", subject: s))

s.state = "ABC"
s.notify()
