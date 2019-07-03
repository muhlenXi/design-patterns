package com.simpleFactory;

public class Pizza {
    String name;

    public void prepare() {

    }

    public void bake() {

    }

    public void cut() {

    }

    public void box() {

    }

    public String getName() {
        return name;
    }
}

class  CheesePizza  extends  Pizza {
    public CheesePizza() {
        this.name = "Cheese pizza";
    }
}
