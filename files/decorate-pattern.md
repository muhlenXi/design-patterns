今天我们聊聊装饰者模式，装饰者模式是对封闭原则的一个应用。

首先，看看封闭原则的定义：

**Software entities（classes，modules，functions， etc）should be open for extension，but closed for modification.**

封闭原则描述的是类应该对修改关闭，对扩展开放。

接着看看装饰模式的定义:

**The Decorate Pattern** attches additional responsibilities to an object dynamically. Decorators provide a flexible alternative to subclassing for extending functionality.

从定义，可以看出装饰者模式能够在不修改任何底层代码的情况下，给子类对象动态的增加新的职责。是一种比继承更有弹性的替代方案。

它们是怎么工作的呢？

- 首先，装饰者和被装饰对象有相同的超类型。
- 既然装饰者和被装饰对象有相同的超类型，所以在任何需要原始对象的场合，可以使用装饰过的对象代替它。
- 你可以用一个或多个装饰者包装一个对象。
- 装饰者可以在代理对象的行为的前面或者后面，加上自己的行为来达到指定目的。



