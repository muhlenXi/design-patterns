今天我们聊聊策略模式，学习一件陌生的东西，往往是先从概念入手的。

*The Strategy Pattern defines a family of algorithms, encapsulates each one, and makes them interchangeable, Strategy lets the algorithm vary independently from clients that use it.*

这段是策略模式的定义，该怎么理解呢？策略模式定义了一套封装且可以相互替换 的算法族。我知道每个类都拥有属性和方法，具有相同特征的方法的集合可以形成一个算法族，集合中的方法我们可以称为算法。

算法族中的算法要可以互相替换，怎样才能做到呢？首先这些方法得具有相同特征，于是我想到了继承和协议（接口）。继承于同一父类的多个子类或者遵循实现同一个协议（接口）的多个类之间可以相互替换。由此可以推导出，算法族中的算法可能拥有以下特征，继承同一个父类或者遵循实现同一个协议（接口）。

哪种业务场景可能会用到这个模式呢？简单的举个例子，发红包，这个操作我们大家肯定很熟悉。首先分析一下，发红包的行为，我们可以发哪些红包？单发普通红包，群发普通红包，群发手气红包等。

这三种发红包行为的共同特征在于，他们都有红包的总金额，红包的个数。不同的红包有不同的发送方法。相同的属性我们可以抽象成一个父类，不同的红包继承该父类即可。发红包的这个方法可以独立封装出去，统一遵循发红包协议，这样我们就可以动态的决定发哪种红包了。

这是策略模式涉及到的设计原则：

> Design Principle
> 
> Identify the aspects of your application that vary and separate them from what stays the same.
> 
> Program to an interface, not an implementation.
> 
> Favor composition over inheritance.

以上是我的理解，思路仅供参考。问大家一个小问题？

计算机编程中的多态，你是怎么理解的？