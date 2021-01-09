import Foundation

// MARK: - Design

protocol Visitor {
    func visitConcreteElementA(_ concreteElementA: ConcreteElementA)
    func visitConcreteElementB(_ concreteElementB: ConcreteElementB)
}

class ConcreteVisitor1: Visitor {
    func visitConcreteElementA(_ concreteElementA: ConcreteElementA) {
        print("\(concreteElementA) 被 \(self) 访问")
    }
    
    func visitConcreteElementB(_ concreteElementB: ConcreteElementB) {
        print("\(concreteElementB) 被 \(self) 访问")
    }
}

class ConcreteVisitor2: Visitor {
    func visitConcreteElementA(_ concreteElementA: ConcreteElementA) {
        print("\(concreteElementA) 被 \(self) 访问")
    }
    
    func visitConcreteElementB(_ concreteElementB: ConcreteElementB) {
        print("\(concreteElementB) 被 \(self) 访问")
    }
}

protocol Element {
    var id: Int { get set }
    func accept(visitor: Visitor)
}

class ConcreteElementA: Element {
    var id: Int
    
    init(id: Int) {
        self.id = id
    }
    
    func accept(visitor: Visitor) {
        visitor.visitConcreteElementA(self)
    }
    
    func operationA() {
        print("A 其他操作")
    }
}

class ConcreteElementB: Element {
    var id: Int
    
    init(id: Int) {
        self.id = id
    }
    
    func accept(visitor: Visitor) {
        visitor.visitConcreteElementB(self)
    }
    
    func operationB() {
        print("BB 其他操作")
    }
}

class ObjectsStructure {
    private var elements = [Element]()
    
    func attch(element: Element) {
        elements.append(element)
    }
    
    func detach(element: Element) {
        if let index = elements.firstIndex(where: { (e) -> Bool in
            e.id == element.id
        }) {
            elements.remove(at: index)
        }
    }
    
    func accept(visitor: Visitor) {
        for e in elements {
            e.accept(visitor: visitor)
        }
    }
}

// MARK: - Test
let o = ObjectsStructure()
o.attch(element: ConcreteElementA(id: 11))
o.attch(element: ConcreteElementB(id: 22))

o.accept(visitor: ConcreteVisitor1())
o.accept(visitor: ConcreteVisitor2())





