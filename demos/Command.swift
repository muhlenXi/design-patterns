import Foundation

// MARK: - Design

protocol Command {
    var receiver: Receiver { set get }
    func execute()
}

class ConcreteCommand: Command {
    var receiver: Receiver
    
    init(receiver: Receiver) {
        self.receiver = receiver
    }
    
    func execute() {
        receiver.action()
    }
}

class Invoker {
    var command: Command
    
    init(command: Command) {
        self.command = command
    }
    
    func executeCommand() {
        command.execute()
    }
}

class Receiver {
    func action() {
        print("执行请求")
    }
}

// MARK: - Test
let receiver = Receiver()
let command = ConcreteCommand(receiver: receiver)
let invoker = Invoker(command: command)
invoker.executeCommand()

