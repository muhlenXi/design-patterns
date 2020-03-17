import Foundation

// MARK: Design

class Facade {
    let a: SubSystemA
    let b: SubSystemB
    let c: SubSystemC
    let d: SubSystemD
    
    init() {
        a = SubSystemA()
        b = SubSystemB()
        c = SubSystemC()
        d = SubSystemD()
    }
    
    func method1() {
        a.method1()
        b.method1()
        c.method1()
        d.method1()
    }
    
    func method2() {
        a.method2()
        b.method2()
        c.method2()
        d.method2()
    }
}

class SubSystemA {
    func method1() {
        print("子系统 A 执行方法 1")
    }
    
    func method2() {
        print("子系统 A 执行方法 2")
    }
}

class SubSystemB {
    func method1() {
        print("子系统 B 执行方法 1")
    }
    
    func method2() {
        print("子系统 B 执行方法 2")
    }
}

class SubSystemC {
    func method1() {
        print("子系统 C 执行方法 1")
    }
    
    func method2() {
        print("子系统 C 执行方法 2")
    }
}

class SubSystemD {
    func method1() {
        print("子系统 D 执行方法 1")
    }
    
    func method2() {
        print("子系统 D 执行方法 2")
    }
}

// MARK: - Test

let facade = Facade()
facade.method1()
facade.method2()
