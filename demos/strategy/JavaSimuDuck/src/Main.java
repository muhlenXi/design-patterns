public class Main {

    public static void main(String[] args) {

        Duck mallard = new MallardDuck();
        mallard.performFly();
        mallard.performQuake();
        mallard.display();
        mallard.swim();

        Duck model = new ModelDuck();
        model.performFly();
        model.setFlyBehavior(new FlyRocketPowered());
        model.performFly();
    }
}
