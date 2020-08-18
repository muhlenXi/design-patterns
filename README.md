# 聊聊设计模式系列

做事情前问问自己做这件事的原因和目的是什么？这样可以更好的督促我们做成这件事情。

首先先聊聊设计模式，为什么要学习设计模式？

我们在开发的过程中，遇到的问题，其他的开发人员也可能遭遇过，并且顺利地解决过这些问题，这样我们可以复用他们的这些经验。

学习设计模式最好的方式是，把模式装进脑子里，然后在你的设计和已有的应用中，寻找何处可以使用它们。

设计模式的核心思想就是寻找某种方式，让系统中的某种改变不会影响其他部分。

# 聊聊列表

构建型的设计模式主要有 6 个:

- `简单工厂模式` 
- `工厂方法模式`
- `抽象工厂模式`
- `原型模式`
- `建造者模式`
- `单例模式`

结构型的设计模式有 7 个: 

- `外观模式`
- `装饰模式`
- `适配器模式`
- `桥接模式`
- `组合模式`
- `享元模式`
- `代理模式`

行为型的设计模式有 10 个:

- `观察者模式`
- `模板方法模式`
- `命令模式`
- `状态模式`
- `职责链模式`
- `解释器模式`
- `中介者模式`
- `访问者模式`
- `策略模式`
- `备忘录模式` 
- `迭代器模式` 



## The Simple Factory

The Simple Factory isn’t actually a Design Pattern; it’s more of a programming idiom.

[SimpleFactory.swift](https://github.com/muhlenXi/design-patterns/blob/master/demos/SimpleFactory.swift)

简单工厂实际上就是用一个单独的类来生成不同对象的实例。

简单工厂模式的最大优点在于工厂类中包含了必要的判断逻辑，根据客户端传入的 Type 动态实例化相关的类。对于客户端来说，去除了与具体产品的依赖。

所有在用简单工厂的地方，都可以考虑用反射技术来去除 switch 或 if，解除分支判断带来的耦合。

## Factory Method Pattern

The Factory Method Pattern defines an interface for creating an object, but lets subclasses decide which class to instantiate. Factory Method lets a class defer instantiation to subclasses.

[FactoryMethod.swift](https://github.com/muhlenXi/design-patterns/blob/master/demos/FactoryMethod.swift)

工厂方法模式是定义一个用于创建对象的接口，让子类决定实例化哪一个类，工厂方法模式使一个类的实例化延迟到其子类。

工厂方法克服了简单工厂违背 开放-封闭 原则的缺点，又保持了封装对象创建过程的优点。

##  Abstract Factory Pattern

The Abstract Factory Pattern provides an interface for creating families of related or dependent objects without specifying their concrete classes.

角色： `AbstractFactory`  `ConcreteFactory` `AbstractProduct Product`

[AbstractFactory.swift](https://github.com/muhlenXi/design-patterns/blob/master/demos/AbstractFactory.swift)

抽象工厂模式主要是解决涉及多个产品系列的问题，通常实在运行时再创建一个 ConcreteFactory 类的实例，这个具体的工厂再创建具有特定产品实现的产品对象。也就是说，为创建不同的产品对象，客户端应使用不同的工厂。

## Prototype Pattern

Prototype Pattern: 用原型实例指定创建对象的种类，并且通过拷贝这些原型创建新的的对象。

[Prototype.swift](https://github.com/muhlenXi/design-patterns/blob/master/demos/Prototype.swift)

案列： copy 方法

## Builder Pattern

Builder Pattern: 将一个复杂对象的构建和它的表示分离，使得同样的构建过程可以创建不同的表示。

结构角色： `Director` `Builder` `ConcreteBuilder` `Product`

[Builder.swift](https://github.com/muhlenXi/design-patterns/blob/master/demos/Builder.swift)

建造者模式是在当创建复杂对象的算法应该独立于该对象的组成部分以及它们的装配方式时适用的模式。

建造者模式的好处就是使得建造代码与表示代码分离，由于建造者隐藏了该产品是如何组装的，所有若需要改变一个产品的内部表示，只需要再定义一个具体的建造者就可以了。

案例：麦当劳 肯德基

## Singleton Pattern

The Singleton Pattern ensures a class has only one instance, and provides a global point of access to it.

[Singleton.swift](https://github.com/muhlenXi/design-patterns/blob/master/demos/Singleton.swift)

单例模式封装了它的唯一实例，这样它可以严格地控制客户怎样访问它以及何时访问它。简单地说就是对唯一实例的受控访问。

## Facade Pattern

The Facade Pattern provides a unified interface to a set of interfaces in a subsystem. Facade defines a higherlevel interface that makes the subsystem easier to use.

[Facade.swift](https://github.com/muhlenXi/design-patterns/blob/master/demos/Facade.swift)

外观模式为子系统的方法提供了一个统一的接口。这个接口使子系统更加容易使用。

案例：中间层 图形用户界面

## Decorator Pattern

The Decorator Pattern attaches additional responsibilities to an object dynamically. Decorators provide a flexible alternative to subclassing for extending functionality.

[Decorator.swift](https://github.com/muhlenXi/design-patterns/blob/master/demos/Decorator.swift)

装饰模式是为已有功能动态地添加更多功能的一种方式。

装饰模式是利用 SetComponent 来对对象进行包装的。这样每个装饰对象的实现就和如何使用这个对象分离开了，每个装饰对象只关心自己的功能，不需要关心如何被添加到对象链中。

## Adapter Pattern

The Adapter Pattern converts the interface of a class into another interface the clients expect. Adapter lets classes work together that couldn’t otherwise because of incompatible interfaces.

[Adapter.swift](https://github.com/muhlenXi/design-patterns/blob/master/demos/Adapter.swift)

适配器模式主要用于希望复用一些现有的类，但是接口又与复用环境要求不一致的情况。

案例：电源适配器

## Bridge Pattern

Bridge Pattern: 将抽象部分与它的实现部分分离，使它们都可以独立地变化。

[Bridge.swift](https://github.com/muhlenXi/design-patterns/blob/master/demos/Bridge.swift)

实现系统可能有多角度分类，每一种分类都有可能变化，那么就把这种多角度分离出来让它们独立变化，减少它们之间的耦合。

桥接模式是合成/聚合规则的应用。

## Composite Pattern

The Composite Pattern allows you to compose objects into tree structures to represent part-whole hierarchies. Composite lets clients treat individual objects and compositions of objects uniformly.

[Composite.swift](https://github.com/muhlenXi/design-patterns/blob/master/demos/Composite.swift)

组合模式让客户可以一致地使用组合结构和单个对象。

使用场景：当需求中是体现部分与整体层次的结构时，以及你希望用户可以忽略组合对象和单个对象的不同，统一地使用组合结构中的所有对象时，就应该考虑用组合模式了。

案例：文件夹和文件

##  Flyweight Pattern

Flyweight Pattern：运用共享技术有效地支持大量细颗粒度的对象。

角色： `FlyweightFactory` `Flyweight` `ConcreteFlyweight`

[Flyweight.swift](https://github.com/muhlenXi/design-patterns/blob/master/demos/Flyweight.swift)

使用条件：

- 如果一个应用程序使用了大量的对象，而大量的这些对象造成了很大的存储开销时。
- 对象的大多数状态可以外部状态，如果删除对象的外部状态，那么可以用相对较少的共享对象取代很多组对象。

## Proxy Pattern

The Proxy Pattern provides a surrogate or placeholder for another object to control access to it.

[Proxy.swift](https://github.com/muhlenXi/design-patterns/blob/master/demos/Proxy.swift)

代理模式为其他对象提供一种代理以控制对这个对象的访问。

代理模式特点：Proxy 和 RealSubject 实现了一套通用 Interface。Proxy 保存了 RealSubject 的引用，当代理方法被调用时，代理则调用 Subject 的相同方法。

案例： 远程代理、虚拟代理、安全代理等

###  Observer Pattern

The Observer Pattern defines a one-to-many dependency between objects so that when one object changes state, all of its dependents are notified and updated automatically.

[Observer.swift](https://github.com/muhlenXi/design-patterns/blob/master/demos/Observer.swift)

将一个系统分割成一系列相互协作的类有一个不好的副作用，那就是要维护相关对象间的一致性。我们不希望为了维护一致性而使各类紧密耦合，这样会给维护、扩展和重用都带来不便。

观察者模式所做的工作就是在解除耦合。让耦合的双方都依赖于抽象，而不是依赖于具体。从而使得各自的变化都不会影响另一边的变化。

案例：通知中心 报纸

## Template Method Pattern

The Template Method Pattern defines the skeleton of an algorithm in a method, deferring some steps to subclasses. Template Method lets subclasses redefine certain steps of an algorithm without changing the algorithm’s structure.

[TemplateMethod.swift](https://github.com/muhlenXi/design-patterns/blob/master/demos/TemplateMethod.swift)

模板方法模式是通过把不变行为搬移到超类，去除子类中的重复代码来体现它的优势。

## Command Pattern

The Command Pattern encapsulates a request as an object, thereby letting you parameterize other objects with different requests, queue or log requests, and support undoable operations.

角色: `Command` `Receiver` `Invoker`

[Command.swift](https://github.com/muhlenXi/design-patterns/blob/master/demos/Command.swift)

命令模式把请求一个操作的对象与知道怎么执行一个操作的对象分隔开。

如果在某个系统中使用命令模式时，需要实现命令的撤销功能，可以使用备忘录模式来存储可撤销操作的状态。

## State Pattern

1The State Pattern allows an object to alter its behavior when its internal state changes. The object will appear to change its class.

[State.swift](https://github.com/muhlenXi/design-patterns/blob/master/demos/State.swift)

状态模式将特定的状态相关的行为都放入一个对象中，由于所有与状态相关的代码都存在于某个 ConcreteState 中， 所以通过定义新的子类可以很容易地增加新的状态和转换。

状态模式通过把各种状态转移逻辑分布到 State 的子类之间，来减少相互间的依赖。

当一个对象的行为取决于它的状态，并且它必须在运行时刻根据状态改变它的行为时，就可以考虑使用状态模式了。

## Chain of Responsibility Pattern

Chain of Responsibility Pattern：使多个对象都有机会处理请求，从而避免请求的发送者和接收者之间的耦合关系。将这个对象连成一条链，并沿着这条链传递该请求，直到有一个对象处理它为止。

角色： `Handler` `ConcreteHandler`

[ChainOfResponsibility.swift](https://github.com/muhlenXi/design-patterns/blob/master/demos/ChainOfResponsibility.swift)

当客户提交一个请求时，请求是沿链传递直到有一个 ConcreteHandler 对象处理它。

客户端可以随时增加或修改处理一个请求的结构，增强了给对象指派职责的灵活性。


##  Interpreter Pattern

Interpreter Pattern：给定一个语言，定义它的文法的一种表示，并定义一个解释器，这个解释器使用该表示来解释语言中的句子。

[Interpreter.swift](https://github.com/muhlenXi/design-patterns/blob/master/demos/Interpreter.swift)

通常当有一个语言需要解释执行，并且你可将该语言中的句子表示为一个抽象语法树时，可使用解释器模式。

案例：正则表达式

## Mediator Pattern

Mediator Pattern：用一个中介对象来封装一系列的对象交互。中介者使各个对象不需要显示地相互引用，从而使其耦合松散，而且可以独立地改变它们之间的交互。

角色： `Mediator` `Colleague`

[Mediator.swift](https://github.com/muhlenXi/design-patterns/blob/master/demos/Mediator.swift)

## Visitor Pattern

Visitor Pattern：表示一个作用于某对象结构中的各元素的操作。它使你可以在不改变各元素类的前提下定义作用于这些元素的新操作。

角色： `ObjectStructure` `Element` `Visitor`

[Visitor.swift](https://github.com/muhlenXi/design-patterns/blob/master/demos/Visitor.swift)

访问者模式适用于数据结构相对稳定的系统，它把数据结构和作用于数据结构上的操作之间的耦合解脱开，使得操作集合可以相对自由地演化。

## Strategy Pattern

The Strategy Pattern defines a family of algorithms, encapsulates each one, and makes them interchangeable. Strategy lets the algorithm vary independently from clients that use it.

角色：

[Strategy](https://github.com/muhlenXi/design-patterns/blob/master/demos/Strategy.swift)

哪些情况的代码包含策略模式的特征？

- 遵循了相同协议的不同子类


## Command Pattern

The Command Pattern encapsulates a request as an object, thereby letting you parameterize other objects with different requests, queue or log requests, and support undoable operations.

角色: `Command` `Receiver` `Invoker`

[Command.swift](https://github.com/muhlenXi/design-patterns/blob/master/demos/Command.swift)

命令模式把请求一个操作的对象与知道怎么执行一个操作的对象分隔开。

如果在某个系统中使用命令模式时，需要实现命令的撤销功能，可以使用备忘录模式来存储可撤销操作的状态。

##  Iterator Pattern

The Iterator Pattern provides a way to access the elements of an aggregate object sequentially without exposing its underlying representation.

[Iterator.swift](https://github.com/muhlenXi/design-patterns/blob/master/demos/Iterator.swift)

迭代器模式分离了集合对象的遍历行为，抽象出一个迭代器类来负责，这样既可以不暴露集合的内部结构，又可让外部代码透明地访问集合内部的数据。

案例：for-in

