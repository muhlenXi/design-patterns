import com.simpleFactory.*;

import com.factoryMethod.*;

public class Main {

    public static void main(String[] args) {
        testSimpleFactory();
    }

    public static void testSimpleFactory() {
        // 简单工厂
        SimplePizzaFactory factory =  new SimplePizzaFactory();
        com.simpleFactory.PizzaStore store = new com.simpleFactory.PizzaStore(factory);
        com.simpleFactory.Pizza pizza = store.orderPizza("cheese");
        System.out.println(pizza.getName());
    }
}
