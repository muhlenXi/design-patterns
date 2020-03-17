import Foundation

// MARK: Design

class Product {
    private var parts = [String]()
    
    func add(part: String) {
        parts.append(part)
    }
    
    func show() {
        print("产品创建 -----")
        for p in parts {
            print(p)
        }
    }
}

protocol Builder {
    func buildPartA()
    func buildPartB()
    
    func getResult() -> Product
}

class ConcreteBuilder1: Builder {
    private let product = Product()
    
    func buildPartA() {
        product.add(part: "部件 A")
    }
    
    func buildPartB() {
        product.add(part: "部件 B")
    }
    
    func getResult() -> Product{
        return product
    }
}

class ConcreteBuilder2: Builder {
    private let product = Product()
    
    func buildPartA() {
        product.add(part: "部件 X")
    }
    
    func buildPartB() {
        product.add(part: "部件 Y")
    }
    
    func getResult() -> Product{
        return product
    }
}

class Director {
    func construct(builder: Builder) {
        builder.buildPartA()
        builder.buildPartB()
    }
}

// MARK: - Test

let director = Director()
let b1 = ConcreteBuilder1()
let b2 = ConcreteBuilder2()

director.construct(builder: b1)
b1.getResult().show()

director.construct(builder: b2)
b2.getResult().show()

