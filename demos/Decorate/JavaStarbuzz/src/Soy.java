/// 豆浆
public class Soy  extends CondimentDecorator{
    Beverage beverage;

    public Soy(Beverage beverage) {
        this.beverage = beverage;
    }

    @Override
    public String getDescription() {
        return beverage.description + ", Soy";
    }

    @Override
    public Double cost() {
        return .15 + beverage.cost();
    }
}
