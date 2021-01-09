import Foundation

// MARK: - Design

protocol Handler {
    var successor: Handler? { set get }
    
    func setup(successor: Handler)
    func handleRequest(_ requst: Int)
}

class ConcreteHandler1: Handler {
    var successor: Handler?
    
    func setup(successor: Handler) {
        self.successor = successor
    }
    
    func handleRequest(_ requst: Int) {
        if requst > 0 && requst < 10 {
            print("ConcreteHandler1 处理请求 \(requst)")
        } else {
            successor?.handleRequest(requst)
        }
    }
}

class ConcreteHandler2: Handler {
    var successor: Handler?
    
    func setup(successor: Handler) {
        self.successor = successor
    }
    
    func handleRequest(_ requst: Int) {
        if requst > 10 && requst < 20 {
            print("ConcreteHandler2 处理请求 \(requst)")
        } else {
            successor?.handleRequest(requst)
        }
    }
}

class ConcreteHandler3: Handler {
    var successor: Handler?
    
    func setup(successor: Handler) {
        self.successor = successor
    }
    
    func handleRequest(_ requst: Int) {
        if requst > 20 && requst < 30 {
            print("ConcreteHandler3 处理请求 \(requst)")
        } else {
            successor?.handleRequest(requst)
        }
    }
}

// MARK: - Test
let h1 = ConcreteHandler1()
let h2 = ConcreteHandler2()
let h3 = ConcreteHandler3()

h1.setup(successor: h2)
h2.setup(successor: h3)

let requests = [2, 5, 14, 22, 18, 3, 27, 20]
for r in requests {
    h1.handleRequest(r)
}


