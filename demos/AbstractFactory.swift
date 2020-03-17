import Foundation

// MARK: - Design

// MARK: 用户类
class User {
    var id: String = ""
    var name: String = ""
}


protocol UserProtocol {
    func insert(user: User)
    func getUser(id: String)
}

class SqlServerUser: UserProtocol {
    func insert(user: User) {
        print("在 SQL server 中给 User 表增加一条记录")
    }
    
    func getUser(id: String) {
        print("在 SQL server 中根据 id 得到 User 表一条记录")
    }
}

class AccessUser: UserProtocol {
    func insert(user: User) {
        print("在 Access 中给 User 表增加一条记录")
    }
    
    func getUser(id: String) {
        print("在 Access 中根据 id 得到 User 表一条记录")
    }
}

// MARK: 部门类
class Department {
    var id: String = ""
    var name: String = ""
}

protocol DepartmentProtocol {
    func insert(department: Department)
    func getDepartment(id: String)
}

class SqlServerDepartment: DepartmentProtocol {
    func insert(department: Department) {
        print("在 SQL server 中给 Department 表增加一条记录")
    }
    
    func getDepartment(id: String) {
        print("在 SQL server 中根据 id 得到 Department 表一条记录")
    }
}

class AccessDepartment: DepartmentProtocol {
    func insert(department: Department) {
        print("在 Access 中给 Department 表增加一条记录")
    }
    
    func getDepartment(id: String) {
        print("在 Access 中根据 id 得到 Department 表一条记录")
    }
}

// MARK: 工厂类

protocol FactoryProtocol {
    func createUser() -> UserProtocol
    func createDepartment() -> DepartmentProtocol
}

class SqlServerFactory: FactoryProtocol {
    func createDepartment() -> DepartmentProtocol {
        return SqlServerDepartment()
    }
    
    func createUser() -> UserProtocol {
        return SqlServerUser()
    }
}

class AccessServerFactory: FactoryProtocol {
    func createDepartment() -> DepartmentProtocol {
        return AccessDepartment()
    }
    
    func createUser() -> UserProtocol {
        return AccessUser()
    }
}

// MARK: - Test

let user = User()
var factory: FactoryProtocol = SqlServerFactory()
// factory = AccessServerFactory()
let dbUser = factory.createUser()
dbUser.insert(user: user)
dbUser.getUser(id: "123")

let dbDepartment = factory.createDepartment()
let department = Department()
dbDepartment.insert(department: department)
dbDepartment.getDepartment(id: "456")
