import Foundation

// MARK: - Design

protocol AbstractionExpression {
    func interpret(context: Context)
}

class Context {
    var input: String = "in"
    var output: String = "out"
}

class TerminalExpression: AbstractionExpression {
    func interpret(context: Context) {
        print("终端解释器")
    }
}

class NonTerminalExpression: AbstractionExpression {
    func interpret(context: Context) {
        print("非终端解释器")
    }
}

// MARK: - Test

let context = Context()
var list = [AbstractionExpression]()
list.append(TerminalExpression())
list.append(NonTerminalExpression())
list.append(TerminalExpression())
list.append(TerminalExpression())

for e in list {
    e.interpret(context: context)
}
