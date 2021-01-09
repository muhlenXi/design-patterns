import Foundation

// MARK: - Design

class Subject {
    func request() {}
}

class RealSubject: Subject {
    override func request() {
        print("实际对象的请求")
    }
}

class Proxy: Subject {
    let realSubject: RealSubject
    
    init(realSubject: RealSubject) {
        self.realSubject = realSubject
    }
    
    override func request() {
        realSubject.request()
    }
}

// MARK: - Test

let real = RealSubject()
let proxy = Proxy(realSubject: real)
proxy.request()
