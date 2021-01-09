import Foundation

// MARK: - Design

class Target {
    func requst() {
        print("普通请求")
    }
}

// 要适配的类
class Adaptee {
    func specificRequest() {
        print("特殊请求")
    }
}

class Adapter: Target {
    private let adaptee = Adaptee()
    
    override func requst() {
        adaptee.specificRequest()
    }
}

// MARK: - Test

let adapter = Adapter()
adapter.requst()
