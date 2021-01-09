// MARK: - Design

class Component {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func add(component: Component) {}
    func remove(component: Component) {}
    func display(depth: Int) {}
    
    func createLine(count: Int) -> String{
        var line = ""
        for _ in 0..<count {
            line.append("-")
        }
        return line
    }
}

extension Component: Equatable {
    static func == (lhs: Component, rhs: Component) -> Bool {
        return lhs.name == rhs.name
    }
}

class Leaf: Component {
    override func add(component: Component) {
        print("Cannot add to a leaf")
    }
    
    override func remove(component: Component) {
        print("Cannot remove from a leaf")
    }
    
    override func display(depth: Int) {
        print(createLine(count: depth)+name)
    }
}

class Composite: Component {
    private var childs = [Component]()
    
    override func add(component: Component) {
        childs.append(component)
    }
    
    override func remove(component: Component) {
        if let index = childs.firstIndex(of: component) {
            childs.remove(at: index)
        }
    }
    
    override func display(depth: Int) {
        print(createLine(count: depth)+name)
        
        for com in childs {
            com.display(depth: depth + 2)
        }
    }
}

// MARK: - Test

let root = Composite(name: "Root")
root.add(component: Leaf(name: "Leaf A"))
root.add(component: Leaf(name: "Leaf B"))

let comp = Composite(name: "Composite X")
comp.add(component: Leaf(name: "Leaf XA"))
comp.add(component: Leaf(name: "Leaf XB"))
root.add(component: comp)

let comp2 = Composite(name: "Composite XY")
comp2.add(component: Leaf(name: "Leaf XYA"))
comp2.add(component: Leaf(name: "Leaf XYB"))
comp.add(component: comp2)

root.add(component: Leaf(name: "Leaf C"))
let leaf = Leaf(name: "Leaf D")
root.add(component: leaf)
root.remove(component: leaf)

root.display(depth: 1)
