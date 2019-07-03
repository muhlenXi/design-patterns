import com.abstractFactory.NewYorkPizzaStore;
import com.factoryMethod.Pizza;
import com.factoryMethod.PizzaStore;
import com.factoryMethod.NYPizzaStore;
import com.factoryMethod.ChicagoPizzaStore;

import com.simpleFactory.SimplePizzaFactory;

public class Main {

    public static void main(String[] args) {
        // testSimpleFactory();
        // testFactoryMethod();
        testAbstractFactory();
    }

    public static void testSimpleFactory() {
        // 简单工厂
        SimplePizzaFactory factory =  new SimplePizzaFactory();
        com.simpleFactory.PizzaStore store = new com.simpleFactory.PizzaStore(factory);
        com.simpleFactory.Pizza pizza = store.orderPizza("cheese");
        System.out.println(pizza.getName());
    }

    public static void testFactoryMethod() {
        PizzaStore nyStore = new NYPizzaStore();
        PizzaStore chicagoStore = new ChicagoPizzaStore();

        Pizza pizza = nyStore.orderPizza("cheese");
        System.out.println("Ethan ordered a " + pizza.getName() + "\n");

        pizza = chicagoStore.orderPizza("cheese");
        System.out.println("Joel ordered a " + pizza.getName() + "\n");
    }

    public static void testAbstractFactory() {
        com.abstractFactory.PizzaStore nyStore = new NewYorkPizzaStore();
        nyStore.orderPizza("cheese");
    }
}
