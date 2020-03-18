import Foundation

// MARK: - Design

class Singleton {
    static let shared = Singleton()
    
    private init() {
        print("初始化")
    }
}
