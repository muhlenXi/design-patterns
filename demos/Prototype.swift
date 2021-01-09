import Foundation

// MARK: - Design
class Prototype {
    var id: String
    
    init(id: String) {
        self.id = id
    }
    
    func clone() -> Prototype {
        return self
    }
}

class ConcretePrototype: Prototype {
    override func clone() -> Prototype {
        return ConcretePrototype(id: self.id)
    }
}

// MARK: - Test

let p1 = ConcretePrototype(id: "11")
let p2 = p1.clone()
p2.id = "12"

print(p1.id)
print(p2.id)
