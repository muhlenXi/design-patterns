今天，我们来一起来聊聊观察者模式。

我们先看一个生活小场景，大家肯定有过订报纸的经历。我们知道报社的主要业务就是出版报纸，当你向某家报社订阅报纸后，只要他们有新报纸出现，就会给你送来。只要你是报社的客户，你就会一直收到新报纸。

当你不想再看报纸的时候，取消订阅，报社就不会再送新报纸给你了。只要报社还运营，就会有人向它们订阅报纸或取消订阅。

今天要聊的观察者模式和订报纸类似。先看看观察者模式的定义。

*The Observer Pattern defines a one-to-many dependency between objects so that when one object changes state, all of its dependents are notified and updated automatically.*

这句话怎么理解呢？观察者模式定义了对象间的一对多的依赖关系，当一个对象的状态发生改变时，所有依赖它的对象都将收到通知，然后改变他们的数据。

其中有状态改变的对象我们称为 Subject， 所有依赖它的对象我们称为 Observer。

Subject 是一个有状态的对象，并且该对象可以控制它的这些状态。而 Observer 需要使用这些状态，但是他们没有状态。多个Observer 没有数据，只能依赖 Subject 来更新数据。这就产生了一个 Subject 和多个 Observer 的依赖关系。

这是观察者模式涉及的设计原则：

> Design Principle
> 
> Strive for loosely coupled designs between objects that interact.