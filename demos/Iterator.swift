import Foundation

// MARK: - Design

protocol Iterator {
    associatedtype Element
    
    func first() -> Element
    func next() -> Element?
    func isDone() -> Bool
    func currentItem() -> Element
}

protocol Aggregate {
    associatedtype Iterator
    func createIterator() -> Iterator
}

class ConcreteAggregate {
    typealias Element = Any
    
    private var items = Array<Element>()
    var count: Int {
        return items.count
    }
    
    subscript(index: Int) -> Element {
        set {
            items.append(newValue)
        }
        get {
            return items[index]
        }
    }
}

extension ConcreteAggregate: Aggregate {
    typealias Iterator = ConcreteIterator
    
    func createIterator() -> ConcreteAggregate.Iterator {
        return ConcreteIterator(aggregate: self)
    }
}

class ConcreteIterator {
    private let aggregate: ConcreteAggregate
    private var current = 0
    
    init(aggregate: ConcreteAggregate) {
        self.aggregate = aggregate
    }
}

extension ConcreteIterator: Iterator {
    typealias Element = Any
    
    func first() -> Any {
        return aggregate[0]
    }
    
    @discardableResult
    func next() -> Any? {
        current += 1
        guard current < aggregate.count else {
            return nil
        }
        return aggregate[current]
    }
    
    func isDone() -> Bool {
        return current >= aggregate.count
    }
    
    func currentItem() -> Any {
        return aggregate[current]
    }
}

// MARK: - Test

let aggregate = ConcreteAggregate()
aggregate[0] = "A"
aggregate[1] = "B"
aggregate[2] = "C"

let ite = aggregate.createIterator()
while !ite.isDone() {
    print(ite.currentItem())
    ite.next()
}
