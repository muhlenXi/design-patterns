聊聊工厂模式

- 简单工厂
- 工厂方法模式 (Factory Method Pattern)
- 抽象工厂

### 工厂方法模式

**The Factory Method Pattern** defines an interface for creating an object, but let subclasses decide which class to instantiate. Factory Method lets a class defer instantiation to subclasses.

工厂方法用来处理对象的创建，并将这样的行为封装在子类中。

工厂方法通过让子类决定该创建的对象是什么，来达到将对象创建过程封装的目的。

**The Abstract Factory Pattern** provides an interface for creating families of related or dependent objects without specifying their concrete classes.

抽象工厂的任务是定义一个负责创建一组产品的接口。