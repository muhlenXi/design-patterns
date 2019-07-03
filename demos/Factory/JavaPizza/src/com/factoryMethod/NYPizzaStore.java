package com.factoryMethod;

public class NYPizzaStore  extends PizzaStore{

    @Override
    protected Pizza createPizza(String type) {
        switch (type) {
            case "cheese":
                return new NYStyleCheesePizza();
            case "pepperoni":
                return new NYStylePepperoniPizza();
            case "calm":
                return new NYStyleCalmPizza();
            case "veggie":
                return new NYStyleVeggiePizza();
                default:
                    return null;
        }
    }
}
