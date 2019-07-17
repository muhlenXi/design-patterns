### 聊聊 模板方法模式

**The Template Method Pattern**  defines the skeleton of an algorithm in a method, deferring some steps to subclasses. Template Method lets subclasses redefine certain steps of an algorithm without changing the algorithm's structure.

模板是一个将算法定义成一组步骤的方法，其中的任何步骤都可以是抽象的，由子类负责实现。这样可以确保算法的结构保持不变，同时由子类提供部分实现。


> The Hollywood Principle
> 
> Don't call us, we'll call you.