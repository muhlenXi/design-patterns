package com.abstractFactory;

public class NewYorkPizzaStore extends PizzaStore {
    @Override
    protected Pizza createPizza(String type) {
        Pizza pizza = null;
        PizzaIngredientFactory ingredientFactory = new NYPizzaIngredientFactory();

        if (type.equals("cheese")){
            pizza = new CheesePizza(ingredientFactory);
            pizza.setName("New York Style Cheese Pizza");
        } else if (type.equals("clam")) {
            pizza = new CalmPizza(ingredientFactory);
            pizza.setName("New York Style Clam Pizza");
        }

        return pizza;
    }
}
